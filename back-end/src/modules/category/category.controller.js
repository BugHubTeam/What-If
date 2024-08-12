import { Category } from "../../../db/models/category.model.js"
import { ApiFeature } from "../../utils/ApiFeature.js"

export const getCategories = async (req, res, next) => {
    const apiFeature = new ApiFeature(Category.find(), req.query).pagination().select().filter().sort()
    const categories = await apiFeature.mongooseQuery
    return res.status(200).json({ data: categories , success: true })
}
