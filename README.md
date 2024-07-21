# Intelli-Health

Intelli-Health is an innovative mobile application designed to predict the risk of heart strokes using real-time data from fitness trackers and advanced machine learning algorithms. This project aims to provide early detection and timely alerts to users, significantly improving their chances of survival and recovery.

## Project Purpose

In Africa, the incidence of stroke is rising, with stroke being a leading cause of death and disability. According to the World Health Organization (WHO), Africa has one of the highest stroke mortality rates globally, with an estimated annual incidence of 316 per 100,000 population. The lack of early detection and prevention strategies contributes significantly to these high rates, making timely identification and intervention crucial.

Intelli-Health leverages widely available fitness trackers to collect longitudinal data on heart rate and blood pressure in real-time. This data is connected to a machine learning model trained to identify and alert users of sudden extreme changes, thereby enhancing early detection and intervention.


## Features and Functionalities

### 1. User Registration and Login
- **Secure Account Management:** Create and manage user accounts with secure login and password reset functionality.

### 2. Home Screen
- **Real-time Vitals Display:** Monitor heart rate and blood pressure.
- **Health Alerts:** Receive timely alerts based on vital statistics.

### 3. Predict Heart Stroke Risk
- **Machine Learning Analysis:** Analyze health data using algorithms like Random Forest, Logistic Regression, K-Nearest Neighbor, and Decision Tree.
- **Risk Prediction:** Display stroke risk predictions with color-coded indicators.

### 4. SOS! (Emergency Screen)
- **Emergency Notifications:** Receive alerts for extreme heart rate changes.
- **Automated SOS Alerts:** Send emergency messages to contacts and nearby hospitals with location information.

### 5. View Previous Health Data
- **Historical Data Access:** View and compare previous health data and risk levels.

### 6. Language Translation Module
- **Multilingual Support:** Use the application in multiple languages.

### 7. Profile Management
- **Customization:** Adjust settings such as language, notifications, and user profile.
- **Logout Functionality:** Securely log out of the application.

### 8. Contact Medical Professionals
- **Medical Directory:** Access a list of nearby medical facilities and contact information.
- **Professional Assistance:** Contact medical professionals for urgent health inquiries.

### 9. View Health Tips
- **Health Tips:** Receive advice on maintaining a healthy lifestyle, including exercise, diet, and stress management.

## Technical Stack

### Programming Languages
- **Dart:** For developing the mobile application with Flutter.
- **Python:** For building and training machine learning models and backend services.

### Frameworks/Libraries
- **Flutter:** Cross-platform mobile application development.
- **Firebase:** Real-time database, authentication, and hosting machine learning models.
- **Amazon SageMaker:** Deploying machine learning models for real-time predictions.
- **Scikit-learn:** Implementing and training machine learning algorithms.
- **TensorFlow/Keras:** Advanced machine learning and deep learning tasks.
- **FastAPI:** Backend RESTful API development.

### Tools
- **Git:** Version control for code management and collaboration.
- **Jupyter Notebook:** Development and experimentation with machine learning models.
- **PostgreSQL:** Database management for user data and health records.
- **Docker:** Containerization for consistent development and deployment environments.
- **Google Cloud Platform (GCP):** Cloud computing and deployment services.
- **Mi Fit API:** Real-time data collection from the Mi Band 4 fitness tracker.

## Getting Started

### Prerequisites
- **Flutter:** Follow the [Flutter Installation Guide](https://docs.flutter.dev/get-started/install) to set up Flutter.
- **Python:** Ensure Python is installed and set up in your environment.

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/Muhammadurasheed/Intelli-Health.git
   cd i_health
