*** Settings ***
Library    SeleniumLibrary
Variables    credentials.py
Variables    environments.py
Resource    LoginResource.robot

*** Variables ***


*** Test Cases ***
Login With Valid Credentials
    Open Browser    ${BASEURL}    ${BROWSER}
    Login With Credentials    ${validusername}    ${validpassword}
    Verify Login Success
    Close Browser

Login With Invalid Credentials
    Open Browser    ${BASEURL}    ${BROWSER}
    Login With Credentials    ${invalidusername}    ${invalidpassword}
    Verify Login Failure
    Close Browser    