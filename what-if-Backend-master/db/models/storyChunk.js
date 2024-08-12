import mongoose from "mongoose";

const storyChunkSchema = new mongoose.Schema({
    question:{
        type:String,
        required:true
    },
    answer:{
        type:Boolean,
        required:false,
        default:null    
    },
    story:{
        type:mongoose.Schema.Types.ObjectId,
        ref:'Story'
    }
})

export default mongoose.model('StoryChunk',storyChunkSchema);