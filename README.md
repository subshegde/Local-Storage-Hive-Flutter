# Flutter Hive Demo

A simple Flutter app demonstrating how to use Hive for local storage. You can write, read, and delete data from Hive.
Setup

Clone the repo:

git clone 
cd flutter-hive-demo

Install dependencies:

flutter pub get

Run the app:

    flutter run

Features

    Write Data: Stores a value in Hive.
    Read Data: Retrieves and prints the stored data.
    Delete Data: Removes the stored data.

Code Overview

    Hive Initialization: Hive.initFlutter() initializes Hive.
    Box Operations: myBox.put(), myBox.get(), and myBox.delete() are used for writing, reading, and deleting data.

Dependencies

dependencies:
  hive: ^2.0.4
  hive_flutter: ^1.1.0
