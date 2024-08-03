import { Player } from "../../../db/models/player.model.js"

export const getPlayers = async (req, res, next) => {
    const players = await Player.find().populate('category')
    return res.status(200).json({ data: players })
}