<!-- ABOUT THE PROJECT -->
# Project: Swag Labs Testing with Robot Framework

## Description:

This project uses Robot Framework to automate testing of the Swag Labs website. It currently focuses on testing the login process with different inputs, and there are plans for further development.

## Built With:

* [![Python][Python-image]][Python-url]

* [Robot Framework](https://robotframework.org/)

[//]: # (* [![Robot-Framework][Robot-Framework-image]][Robot-Framework-url])

* [![Selenium][Selenium.img]][Selenium-url]

<!-- REQUIREMENTS -->
## Requirements:
To clone and run the project, the following tools and software are needed:

- Integrated Development Environment (IDE) (e.g., PyCharm, VS Code)
- Python 3.x version
- Robot Framework
To install Robot Framework in Ubuntu use the following command: 
```sh
pip install robotframework
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Running Tests:

To run the tests, navigate to the project's root directory and enter the following command in the command line:
```sh
robot Tests
```

To run just the tests in a specific file, navigate to the root directory as before.
```sh
 robot Tests/login.robot
 ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Files
The project includes the following files:

- `log.html`: Log file for test execution.
- `report.html`: Report file for test results.
These files help track changes for learning purposes. Typically, they are not uploaded unless as part of a Continuous Integration/Continuous Deployment (CI/CD) process, like to an AWS bucket.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap
Testing:
- [x] Login with
    - [x] valid credentials
    - [x] invalid password
    - [x] invalid username and password
    - [x] empty credentials

- [ ] Log out 
    - [ ] successfully from different starting points (product page, cart, checkout)
    - [ ] Verify log out stage (e.g., redirect to login page)

[//]: # (* extra: Handle edge cases &#40;e.g., already logged out, logout during product/cart interaction&#41;)

[//]: # (* extra: Simulate network issues or errors during logout)

- [ ] List available products
    - [ ] Verify product information accuracy (e.g., name, price, image).
    - [ ] Display product list correctly with various data sets (e.g., empty list, single product, multiple products)

- [ ] View product on its own page
    - [ ] Click on a product and verify it opens on a separate page
    - [ ] Verify product details accuracy (e.g., name, description, price, attributes)
    - [ ] Check Add to cart button
- [ ] Add products to cart
    - [ ] Add single and multiple products to the cart successfully
    - [ ] Verify cart updates (e.g., item count, total price) after each addition

- [ ] Check out
    - [ ] Navigate to the checkout page
    - [ ] Verify the checkout process and completion

## User Stories
User stories to be addressed during the project:

1. As a user, I want to log in to access features requiring identification.
2. As a user, I want to log out so another user can use the application. 
3. As a user, I want to see a list of available products to make selections. 
4. As a user, I want to view each product on its own page for detailed information. 
5. As a user, I want to add products to the cart for purchase. 
6. As a user, I want to check out to complete the shopping process.

The project's goal is to validate website functionalities through provided tests.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

#### Additional Resources:

Robot Framework documentation: https://robotframework.org/

Swag Labs website: https://www.saucedemo.com/

<p align="right">(<a href="#readme-top">back to top</a>)</p>


[Python-image]:https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54
[Python-url]:https://www.python.org/
[Robot-Framework-image]:https://pouch.jumpshare.com/preview/m0nGQpvkgvQFBBNX-Bc3uENvAZzpeqsf_gPqkLQJxYFLM0StrOAxHtN77jYKAb0PzwKKy4Lp7dvwNtmJa-_A-ieQEXfhuVh4Pziz2aUTUxo

[//]: # ([Robot-Framework-image]:https://europe1.discourse-cdn.com/standard21/uploads/robotframework1/original/1X/927bccfd8d2d7ad89b17972cb1dc27f432ffac3f.png)
[Robot-Framework-url]:https://robotframework.org/
[Selenium.img]:https://img.shields.io/badge/-selenium-%43B02A?style=for-the-badge&logo=selenium&logoColor=white
[Selenium-url]:https://www.selenium.dev/