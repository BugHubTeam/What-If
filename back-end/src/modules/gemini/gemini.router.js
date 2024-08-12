import express from "express";
const router = express.Router();
//Controllers
import {
  createStory,
  getStory,
  getQuestions,
  answer,
  finishStory
} from "./gemini.controller.js";

router.post("/create-story", createStory);
router.post("/get-question", getQuestions);
router.post("/get-story", getStory);
router.post("/answer",answer);
router.post('/finish-story',finishStory);

export default router;
