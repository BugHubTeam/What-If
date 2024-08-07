const getChatHistory = (chunks) => {


  if(chunks.length === 0)
    return []

  const previousChat = [
    {
      role: "user",
      parts: [
        {
          text: "Ask",
        },
      ],
    },
  ];

  chunks.map((item) => {
    previousChat.push(
      {
        role: "model",
        parts: [
          {
            text: item.question,
          },
        ],
      },
      {
        role: "user",
        parts: [
          {
            text:
              item.answer !== null ? item.answer.toString() : "Not answerd yet",
          },
        ],
      }
    );
  });

  return previousChat;
};

export default getChatHistory;
