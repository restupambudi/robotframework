*** Settings ***
Library    SeleniumLibrary
Variables    credentials.py
Resource    LoginResource.robot

*** Variables ***


*** Test Cases ***
Login With Valid Credentials
    Open Browser    https://www.saucedemo.com/    firefox
    Login With Credentials    ${validusername}    ${validpassword}
    Verify Login Success
    Close Browser

Login With Invalid Credentials
    Open Browser    https://www.saucedemo.com/    firefox
    Login With Credentials    ${invalidusername}    ${invalidpassword}
    Verify Login Success
    Close Browser    