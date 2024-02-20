# Project: Swag Labs Testing with Robot Framework

## Description:

This project uses Robot Framework to automate testing of the Swag Labs website. It currently focuses on testing the login process with different inputs, and there are plans for further development.

## Requirements:
To clone and run the project, the following tools and software are needed:

- Integrated Development Environment (IDE) (e.g., PyCharm, VS Code)
- Python 3.x version
- Robot Framework (Install using ```pip install robotframework```)

## Running Tests:

To run the tests, navigate to the project's root directory and enter the following command in the command line:
```robot Tests```

To run just the tests in a specific file, navigate to the root directory as before.
```robot Tests/login.robot```

## Files
The project includes the following files:

- log.html: Log file for test execution.
- report.html: Report file for test results.
These files help track changes for learning purposes. Typically, they are not uploaded unless as part of a Continuous Integration/Continuous Deployment (CI/CD) process, like to an AWS bucket.

### Tests
I've created the following test cases to validate the login process:

- Test Case 1: Login with Valid Credentials
- Test Case 2: Login with Invalid Password
- Test Case 3: Login with Invalid Username and Password
- Test Case 4: Login with Empty Credentials

## User Stories
User stories to be addressed during the project:

1. As a user, I want to log in to access features requiring identification.
2. As a user, I want to log out so another user can use the application. 
3. As a user, I want to see a list of available products to make selections. 
4. As a user, I want to view each product on its own page for detailed information. 
5. As a user, I want to add products to the cart for purchase. 
6. As a user, I want to check out to complete the shopping process.

The project's goal is to validate website functionalities through provided tests.

#### Additional Resources:

Robot Framework documentation: https://robotframework.org/
Swag Labs website: https://www.saucedemo.com/