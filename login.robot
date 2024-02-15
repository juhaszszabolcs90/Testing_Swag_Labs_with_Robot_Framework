*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login-Url}    https://www.saucedemo.com/
${Browser}  Chrome

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Type in Username    standard_user
    Type in Password    secret_sauce
    Sleep    1s
    Submit Credentials
    Welcome Page Should Be Open
    Sleep     1s
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
    Element Should Not Be Visible    id = react-burger-menu-btn