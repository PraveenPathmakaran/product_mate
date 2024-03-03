# ProductMate

Welcome to ProductMate! This document provides an overview of the app and its features.

## Overview

ProductMate is a mobile application developed with Flutter and Firebase, designed to streamline product management tasks. With ProductMate, users can efficiently manage their product, generate QR codes for products, and search for specific items within their inventory.

## Features

1. **Login and Signup**
   - **Description:** Users can securely log in with existing credentials or sign up for a new account.
   - **Functionality:** Authentication is handled using Firebase Authentication, ensuring data security and user privacy.
   - **Technical Details:** Firebase Authentication is integrated into the app for seamless user authentication.

2. **Product Management**
   - **Description:** Users can add  products within the app.
   - **Functionality:** Product data is stored in Firebase Firestore, allowing for real-time synchronization across devices.
   - **Technical Details:** Clean Architecture principles are followed to maintain separation of concerns and scalability.

3. **QR Code Generation**
   - **Description:** Users can generate QR codes for their products.
   - **Functionality:** QR codes are dynamically generated based on product information using the Flutter library qr_flutter.
   - **Technical Details:** BLoC state management pattern is employed to handle QR code generation logic efficiently.

4. **Product Search**
   - **Description:** Users can search for products within the app.
   - **Functionality:** Search functionality allows users to find products by name.
   - **Technical Details:** BLoC pattern is utilized to manage state and handle search queries effectively.

## Getting Started

To run ProductMate locally, follow these steps:

1. Clone the repository: `git clone https://github.com/PraveenPathmakaran/product_mate.git`
2. Navigate to the project directory: `cd product-mate`
3. Install dependencies: `flutter pub get`
4. Run the app: `flutter run`

