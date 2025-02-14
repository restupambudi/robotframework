*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***

*** Keywords ***
Checkout Product
    Click Button    css=[data-test="checkout"]

Input Personal Information
    # Generate random data
    ${firstname}=    First Name
    ${lastname}=     Last Name
    ${zipcode}=      Zipcode

    Log    First Name: ${firstname}
    Log    Last Name: ${lastname}
    Log    Zip Code: ${zipcode}
    Input Text    css=[data-test="firstName"]    ${firstname}
    Input Text    css=[data-test="lastName"]    ${lastname}
    Input Text    css=[data-test="postalCode"]    ${zipcode}
    Click Button    css=[data-test="continue"]

Finish
    Click Button    css=[data-test="finish"]
    Page Should Contain    Thank you for your order!