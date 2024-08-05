import mongoose, { model, Schema } from "mongoose"

// schema
const playerSchema = new mongoose.Schema({
    player:{
        String,
    },
    player_logo:{
        String,
    },
    category:{
        type:Schema.Types.ObjectId,
        ref:'Category',
    }
},{timestamps:true})

// model
export const Player = model('Player' , playerSchema)