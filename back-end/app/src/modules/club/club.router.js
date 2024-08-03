import { Router } from "express";
import { asyncHandler } from "../../utils/asyncHandler.js";
import { getClubs } from "./club.controller.js";

export const clubRouter = Router()

clubRouter.get('/' , asyncHandler(getClubs))