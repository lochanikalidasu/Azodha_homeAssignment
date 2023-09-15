* * *

Flutter Contact Form with Firebase Backend and Bloc State Management
====================================================================



A Flutter project that demonstrates how to create a contact form with Firebase as the backend service and Bloc for state management. This project includes validation checks on the UI side, OTP verification for phone numbers using Firebase Auth services, and email validation using RegExp.

Table of Contents
-----------------


*   [Features](#features)
*   [Getting Started](#getting-started)
*   [Major Dependencies](#major-dependencies)
*   [Usage](#usage)
*   [Screenshots](#screenshots)




Features
--------

*   Create a contact form with Flutter.
*   Use Firebase Firestore for data storage.
*   Implement Bloc for state management.
*   Validate form input data on the UI side.
*   Verify phone numbers using Firebase Auth OTP.
*   Validate email addresses using RegExp.

Getting Started
---------------

Follow these steps to get the project up and running on your local machine.

1.  Clone the repository:
    
    bashCopy code
    
    `git clone https://github.com/lochanikalidasu/Azodha_homeAssignment`
    
2.  Navigate to the project directory:
    
    bashCopy code
    
    `cd Azodha_homeAssignment`
    
3.  Install dependencies:
    
    bashCopy code
    
    `flutter pub get`
    
4.  Configure Firebase for the project. You will need to set up Firebase in your Flutter project and configure Firestore and Firebase Auth. Refer to the official [Firebase documentation](https://firebase.google.com/docs/flutter/setup) for detailed instructions.
    
5.  Run the app:
    
    bashCopy code
    
    `flutter run`
    

Major Dependencies
------------

*   [Flutter](https://flutter.dev/)
*   [Firebase](https://firebase.google.com/)
*   [Bloc](https://pub.dev/packages/flutter_bloc)
*   [email\_validator](https://pub.dev/packages/email_validator)

You can find the complete list of dependencies in the `pubspec.yaml` file.

Usage
-----

1.  Launch the app on your device or emulator.
2.  Fill out the contact form, ensuring that you enter valid data.
3.  Submit the form, and the data will be stored in Firebase Firestore.
4.  If you provided a phone number, you will receive an OTP for verification.
5.  Email addresses will be validated using RegExp to ensure they are in the correct format.

Screenshots
-----------

![Screenshot 1](https://i.postimg.cc/SsCX1kNt/Whats-App-Image-2023-09-16-at-12-34-45-AM.jpg)

![Screenshot 2](https://i.postimg.cc/3xzJsV6M/Whats-App-Image-2023-09-16-at-12-36-17-AM.jpg)
![Screenshot 1](https://i.postimg.cc/HWqR28C6/Whats-App-Image-2023-09-16-at-12-45-33-AM.jpg)



