import { GoogleGenerativeAI } from "@google/generative-ai";
import Story from "../../../db/models/story.js";
import StoryChunk from "../../../db/models/storyChunk.js";
import { Category } from "../../../db/models/category.model.js";
import { AppError as CustomError } from "../../utils/AppError.js";
import getChatHistory from "../../utils/getChatHistory.js";
import { Player } from "../../../db/models/player.model.js";
import { Club } from "../../../db/models/club.model.js";
/**
 * @param {import('express').Request} req - Express request object
 * @param {import('express').Response} res - Express response object
 */

export const createStory = async (req, res) => {
  const category = req.body.category;
  if (!category) throw new CustomError("Category must be provided", 400);

  try {
    const newStory = new Story({
      category: category,
    });
    await newStory.save();
    res.status(200).json({
      msg: "Story created",
      story_id: newStory.id,
      statusCode: 200,
    });
  } catch (error) {
    console.log(error);
    throw new CustomError("Something went wrong", 500);
  }
};

export const getQuestions = async (req, res) => {
try{
   const { name } = req.body;
   const { language } = req.query;
  if (!name) throw new CustomError("Name must be provided", 400);
  if (!language) throw new CustomError("Language must be provided", 400);

    // const previousChat = getChatHistory(story.chunks);
    
    //Configure model
    const genAI = new GoogleGenerativeAI(process.env.GOOGLE_API_KEY);
    
    const model = genAI.getGenerativeModel({
      
      model: "gemini-1.5-flash",
      systemInstruction: `
      You're the host of a game called "What if" you will provide 7  related questions that can be aswered with "YES" or "No", the questions will be  about specific topic assuming things that 
      never happend in real life in the context of ${name} and you can never repeat your previous and make all your questions 
      to be related to each other to build a story, 
      , That's your only jop and 
      you're not allowed to respond with anything else .
      according to this language ${language}.
      and your response should be in array format like the following example : ["question 1","question 2", ....]
      `,
    });

    const chat = model.startChat({ history: [] });

    const prompt = "Ask";

    const result = await chat.sendMessage(prompt);
    const response = await result.response;
    const text = response.text();
    res.status(200).json({
      questions: JSON.parse(text),
    });
  } catch (error) {
    console.log(error);
    throw new CustomError(
      error.message || "Something went wrong",
      error.statusCode || 500
    );
  }
};

export const answer = async (req, res) => {
  const { answerBool, storyId } = req.body;
  console.log(typeof answerBool);
  if (typeof answerBool !== "boolean" || !storyId)
    throw new CustomError("Answer and story id must be provided ", 400);

  try {
    const story = await Story.findById(storyId).populate("chunks");
    if (!story) throw new CustomError("Story not found", 404);

    if (story.chunks.length === 0)
      throw new CustomError("No questions yet", 400);

    const lastChunk = story.chunks[story.chunks.length - 1];
    lastChunk.answer = answerBool;
    await lastChunk.save();
    res.status(200).json(lastChunk);
  } catch (error) {
    console.log(error);
    console.log(error.message);
    throw new CustomError(error.message, error.statusCode);
  }
};

//Get story

export const getStory = async (req, res) => {
  const storyId = req.body.storyId;
  if (!storyId) throw new CustomError("Story id must be provided", 400);

  try {
    const story = await Story.findById(storyId).populate("chunks");

    if (!story) throw new CustomError("Story not found", 404);

    res.status(200).json(story);
  } catch (error) {
    console.log(error);
    throw new CustomError("Story not found", 404);
  }
};

//Finish Story

export const finishStory = async (req, res) => {
  const { questions} = req.body;
  const {language} = req.query;
  if (!questions || !Array.isArray(questions))
    throw new CustomError("Questions must be provided");
  try {
    //Configure model
    const genAI = new GoogleGenerativeAI(process.env.GOOGLE_API_KEY);
    const model = genAI.getGenerativeModel({
      model: "gemini-1.5-flash",
      systemInstruction: `
      You're the host of a game called "What if" i will provide you with questions and answers that asuumes 
      things that never happend in real life , all the questions will be related to each other in a specific context ,
      you're responsible of imagining and building a deceent , good structured story based on those questions and answers
      the questions : ${JSON.stringify(questions)}.
      make responses in language ${language},
      your response should straight forward start with the story.
      `,
    });

    const chat = model.startChat({ history: [] });
    const prompt = "Build it";

    const result = await chat.sendMessage(prompt);
    const response = await result.response;
    const text = response.text();
    res.status(200).json({ Story: text });
  } catch (error) {
    throw new CustomError(error.message, error.statusCode);
  }
};
