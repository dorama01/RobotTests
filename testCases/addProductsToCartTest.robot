

*** Settings ***
Documentation     Test suite for verifying cart functionality after adding products.
Library           SeleniumLibrary
Resource          ../pageObjects/add_products_to_cart_page.robot
Resource          ../resources/keywords/common_keywords.robot

Suite Setup       Open Product List Page


*** Test Cases ***
Add Products And Verify Cart
    Accept Cookies If Present
    Add First N Products To Cart    3

