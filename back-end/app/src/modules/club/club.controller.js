import { Club } from "../../../db/models/club.model.js"
import { ApiFeature } from "../../utils/ApiFeature.js"

export const getClubs = async (req, res, next) => {
    const apiFeature = new ApiFeature(Club.find().populate('category'),req.query).pagination().select().filter().sort()
    const clubs = await apiFeature.mongooseQuery
    return res.status(200).json({ data: clubs , success: true })
}