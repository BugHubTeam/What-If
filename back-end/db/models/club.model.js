import mongoose, { model, Schema } from "mongoose"

// schema
const clubSchema = new mongoose.Schema({
    name:{
        String,
    },
    club_logo:{
        String,
    },
    category:{
        type:Schema.Types.ObjectId,
        ref:'Category',
    }
},{timestamps:true})

// model
export const Club = model('Club' , clubSchema)
