*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    css=[data-test="username"]    ${username}
    Input Text    css=[data-test="password"]    ${password}
    Click Button    css=[data-test="login-button"]

Verify Login Success
    Page Should Contain    Products

Verify Login Failure
    Page Should Contain    Username and password do not match