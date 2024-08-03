import { Club } from "../../../db/models/club.model.js"

export const getClubs = async (req, res, next) => {
    const clubs = await Club.find().populate('category')
    return res.status(200).json({ data: clubs })
}