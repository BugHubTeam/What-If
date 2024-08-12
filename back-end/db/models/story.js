import mongoose, { mongo } from "mongoose";

const storySchema = new mongoose.Schema({
  text: {
    type: String,
    required: false,
  },
  category: {
    type: String,
    required: true,
  },
  chunks: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "StoryChunk",
    },
  ],
});

export default mongoose.model("Story", storySchema);
