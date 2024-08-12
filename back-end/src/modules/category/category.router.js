import { Router } from "express";
import { asyncHandler } from "../../utils/asyncHandler.js";
import { getCategories } from "./category.controller.js";

export const categoryRouter = Router()

categoryRouter.get('/' , asyncHandler(getCategories))