import mongoose, { model } from "mongoose"

// schema
const categorySchema = new mongoose.Schema({
    name:{
        String,
    }
},{timestamps:true})

// model
export const Category = model('Category' , categorySchema)