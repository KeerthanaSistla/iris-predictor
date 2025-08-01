🌸 Iris Flower Prediction Web App

✅ Overview
This project is a machine learning-powered web application that predicts the species of an Iris flower based on user-inputted measurements (sepal length, sepal width, petal length, petal width). It integrates a Flask backend with a Random Forest Classifier and a responsive HTML/CSS/JavaScript frontend.

✅ Features
🧠 Machine Learning Model

Trained on the famous Iris dataset using scikit-learn.

Uses a Random Forest Classifier to achieve high accuracy.

🌐 Flask REST API

Serves predictions at a /predict endpoint.

CORS enabled for cross-origin requests.

🎨 Frontend UI

Built using HTML, CSS, and vanilla JavaScript.

Users input flower measurements, and the predicted species is displayed along with an image.

Fully responsive: grid layout for desktops, stacked inputs for mobile.

📊 Data Analysis

Dataset analysis includes class distributions and feature statistics.

Scatter plots visualize relationships between flower features.

✅ Tech Stack
Frontend: HTML5, CSS3, JavaScript (Responsive Design)

Backend: Python (Flask, Flask-CORS)

Machine Learning: scikit-learn, NumPy, pickle

Data Visualization (optional): matplotlib, seaborn

Deployment: Local (Flask Dev Server) → Can be deployed to Render/Heroku for production.

✅ How It Works
User enters flower feature values in the web form.

Frontend sends the data as JSON to the Flask API.

The trained ML model predicts the class (setosa, versicolor, or virginica).

Prediction and a corresponding flower image are displayed dynamically.

