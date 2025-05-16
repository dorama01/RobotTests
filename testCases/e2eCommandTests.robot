
*** Settings ***
Library    SeleniumLibrary
Resource   ../pageObjects/cart_page.robot
Resource   ../pageObjects/e2e_commands.robot
Suite Setup   Open Browser To Home Page
Suite Teardown   Close the Browser

*** Test Cases ***
Simulate Full Cart Checkout
    
    Start Checkout From Cart Page
    Complete Checkout Process
