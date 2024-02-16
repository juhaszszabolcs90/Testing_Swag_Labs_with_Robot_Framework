*** Settings ***
Documentation    This file checks the functionalities of the login process
Library    SeleniumLibrary


*** Variables ***
${Login-Url}    https://www.saucedemo.com/
${Browser}  Chrome
${Error-Message}     xpath = //*[@id="login_button_container"]/div/form/div[3]/h3


*** Test Cases ***
#1st test case
Login - valid credentials
    Open Browser To Login Page
    Type in Username    standard_user
    Type in Password    secret_sauce
#    Sleep    0.5s
    Submit Credentials
    Welcome Page Should Be Open
#    Sleep     0.5s
    [Teardown]    Close Browser

#2nd test case
Login - invalid password
    Open Browser To Login Page
    Type in Username    standard_user
    Type in Password    invalid_password
#    Sleep    0.5s
    Submit Credentials
    Error message should be shown
#    Sleep     0.5s
    [Teardown]    Close Browser

#3rd test case
Login - invalid username and password
    Open Browser To Login Page
    Type in Username    standard_use
    Type in Password    invalid_password
    Submit Credentials
    Error message should be shown
    Sleep     0.5s
    [Teardown]    Close Browser

#4rd test case
Login - empty credentials
    Open Browser To Login Page
    Submit Credentials
    Error message should be shown
    Sleep     0.5s
    [Teardown]    Close Browser


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${Login-Url}   ${Browser}
    Title Should Be     Swag Labs

Type in Username
    [Arguments]    ${username}
    Input Text    id=user-name    ${username}

Type in Password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Submit Credentials
    Click Button    id=login-button

Welcome Page Should Be Open
    Element Should Be Visible    id = react-burger-menu-btn

#2nd test case
Error message should be shown
    Element Should Be Visible    ${Error-Message}