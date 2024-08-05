import { Player } from "../../../db/models/player.model.js"
import { ApiFeature } from "../../utils/ApiFeature.js"

export const getPlayers = async (req, res, next) => {
    const apiFeature = new ApiFeature(Player.find().populate('category'),req.query).pagination().select().filter().sort()
    const players = await apiFeature.mongooseQuery
    return res.status(200).json({ data: players , success: true })
}