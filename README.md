# Unhandled JSON Response in Dart HTTP Request

This repository demonstrates a common error in Dart when handling JSON responses from HTTP requests. The code attempts to access an element in a JSON array without first checking if the array is empty or if the element exists. This can lead to runtime errors.

## Bug
The `bug.dart` file contains the buggy code. The problem lies in how it handles the JSON response: It assumes the response always contains at least one element and attempts to access `jsonData[0]` directly.  If the response is empty or malformed, this will throw an exception.

## Solution
The `bugSolution.dart` file shows the corrected code. It includes error handling to check if the JSON array is empty or if the element exists before accessing it, preventing the runtime error.