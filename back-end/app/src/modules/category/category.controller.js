import { Category } from "../../../db/models/category.model.js"

export const getCategories = async (req, res, next) => {
    const categories = await Category.find()
    return res.status(200).json({ data: categories })
}