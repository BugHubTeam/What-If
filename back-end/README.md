# What-If

This project is a backend application built using Node.js, Express, and Mongoose. It includes features like movie information retrieval, player and club data management, and AI-generated responses and stories.

## Features

- **Movie Information**: Fetch and display movie details using The Movie Database (TMDb) API.
- **Player and Club Data**: Access and manage a dataset of players and clubs sourced from Kaggle.
- **AI-Generated Responses**: Utilize Gemini's AI to generate responses to questions and create stories.

## Dependencies

This project uses the following major dependencies:

- **@google/generative-ai** ^0.16.0: For AI-generated responses and stories.
- **dotenv** ^16.4.5: For environment variable management.
- **express** ^4.19.2: A minimal and flexible Node.js web application framework.
- **express-async-errors** ^3.1.1: Simplifies error handling in Express applications.
- **mongoose** ^8.5.1: An ODM (Object Data Modeling) library for MongoDB and Node.js.

## APIs and Datasets

- **The Movie Database (TMDb) API**: Used to fetch movie details and other related data. [TMDb API Documentation](https://api.themoviedb.org)
- **Kaggle Dataset**: Used to retrieve and manage player and club data.

## How to Run This Project on Your PC

To run the **What If** backend project on your PC, follow these steps:

### Prerequisites

Ensure that you have the following software installed:

- **Node.js:** Download and install it from [nodejs.org](https://nodejs.org/).
- **MongoDB:** Install MongoDB from [mongodb.com](https://www.mongodb.com/).
- **Git:** If you haven't already, install Git from [git-scm.com](https://git-scm.com/).

### Steps

1. **Clone the Repository**

   First, clone the repository to your local machine:
   
   ```bash
   git clone https://github.com/your-username/what_if_backend.git
   cd what_if_backend
### Set Up Environment Variables

Create a `.env` file in the root directory and add the necessary environment variables. Here’s an example:

```makefile
   TMDB_API_KEY=your_tmdb_api_key
   MONGO_URI=your_mongodb_connection_string
   GEMINI_API_KEY=your_gemini_api_key
```
### Install Dependencies

Navigate to the project directory and install the necessary dependencies:

```bash
npm install
```
### Run the Project

Start the server using the following command:

```bash
npm start
```
## Contributors

Thanks to these wonderful people who have contributed to this project:
- **[Fady Nabil](https://github.com/FadyBoj)** - Back-end Developer
- **[Abd ElRahman Walid](https://github.com/wello88)** - Back-end Developer
- **[Omer Mostafa](https://github.com/omerbag-9)** - Back-end Developer
- **[Yousef Fadel](https://github.com/YousefMohamed19)** - Back-end Developer
