import { Router } from "express";
import { asyncHandler } from "../../utils/asyncHandler.js";
import { getPlayers } from "./player.controller.js";

export const playerRouter = Router()

playerRouter.get('/' , asyncHandler(getPlayers))