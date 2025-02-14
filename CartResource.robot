*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Add Product
    Click Button    css=[data-test="add-to-cart-sauce-labs-backpack"]

Open Cart
    Click Element    css=[data-test="shopping-cart-link"]

Verify Product Added
    Page Should Contain    Sauce Labs Backpack