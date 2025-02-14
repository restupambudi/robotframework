*** Settings ***
Library    SeleniumLibrary
Variables    credentials.py
Variables    environments.py
Resource    LoginResource.robot
Resource    CartResource.robot
Resource    CheckoutResource.robot

*** Test Cases ***
# Add Product to Cart
#     Open Browser    ${BASEURL}    ${BROWSER}
#     Login With Credentials    ${validusername}    ${validpassword}
#     Verify Login Success
#     Add Product
#     Open Cart
#     Verify Product Added
#     Checkout Product
#     Input Personal Information
#     Finish
#     Close Browser   

User Journey: Shopping Cart Checkout
    [Documentation]    Test the user journey of adding a product to the cart and completing the checkout process.
    [Tags]    checkout
    Given Open Browser    ${BASEURL}    ${BROWSER}
    When Login With Credentials    ${validusername}    ${validpassword}
    And Verify Login Success
    And Add Product
    And Open Cart
    And Verify Product Added
    And Checkout Product
    And Input Personal Information
    Then Finish
    And Close Browser 