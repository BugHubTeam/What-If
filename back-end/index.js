// import modules
import expressAsyncErrors from 'express-async-errors';
import express from "express";
import path from "path";
import dotenv from "dotenv";
import { connectDB } from "./db/connection.js";
import { clubRouter } from "./src/modules/club/club.router.js";
import { categoryRouter } from "./src/modules/category/category.router.js";
import { playerRouter } from "./src/modules/player/player.router.js";
import geminiRouter from './src/modules/gemini/gemini.router.js'
import { globalErrorHandler } from './src/utils/asyncHandler.js';

// config the .env file

dotenv.config({ path: path.resolve("./config/.env") });

// create server

const app = express();
const port = process.env.PORT;

// parse data

app.use(express.json());

// routers

app.use("/club", clubRouter);
app.use("/category", categoryRouter);
app.use("/player", playerRouter);
app.use("/gemini", geminiRouter);

//Hanlde error
app.use(globalErrorHandler)


const start = async () => {
  try {
    // connect db
    await connectDB();
    console.log("db connected successfully");
    // listen server
    app.listen(port, () => {
      console.log("app is running on port", port);
    });
  } catch (error) {
    console.log(error);
  }
};

start();
