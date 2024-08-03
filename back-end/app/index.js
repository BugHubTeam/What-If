// import modules
import express from 'express'
import path from 'path'
import dotenv from 'dotenv'
import { connectDB } from './db/connection.js'
import { clubRouter } from './src/modules/club/club.router.js'
import { categoryRouter } from './src/modules/category/category.router.js'
import { playerRouter } from './src/modules/player/player.router.js'

// config the .env file

dotenv.config({ path: path.resolve('./config/.env') })

// create server

const app = express()
const port = process.env.PORT

// parse data

app.use(express.json())

// routers

app.use('/club',clubRouter)
app.use('/category',categoryRouter)
app.use('/player',playerRouter)

// connect db

connectDB()

// listen server

app.listen(port , ()=>{
    console.log("app is running on port",port);
})