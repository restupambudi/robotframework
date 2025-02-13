*** Settings ***
Library    SeleniumLibrary
Variables    credentials.py
Variables    environments.py
Resource    LoginResource.robot
Resource    CartResource.robot

*** Test Cases ***
Add Product to Cart
    Open Browser    ${BASEURL}    ${BROWSER}
    Login With Credentials    ${validusername}    ${validpassword}
    Verify Login Success
    Add Product
    Open Cart
    Verify Product Added
    Close Browser   