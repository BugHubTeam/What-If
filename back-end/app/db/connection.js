import mongoose from "mongoose"

export const connectDB = ()=>{
    mongoose.connect('mongodb://localhost:27017/what_if').then(()=>{
        console.log('db connected successfully');
    })
}