*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Checkout Product
    Click Element    css=[data-test="checkout"]
    Click Element    css=[data-test="shopping-cart-link"]
    Page Should Contain    Sauce Labs Backpack