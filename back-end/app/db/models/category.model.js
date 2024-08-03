import mongoose, { model } from "mongoose"

// schema
const categorySchema = new mongoose.Schema({
    name:{
        String,
    }
})

// model
export const Category = model('Category' , categorySchema)