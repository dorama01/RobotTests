

*** Settings ***
Resource    ../resources/locators/cart_page.robot
Library    SeleniumLibrary

*** Keywords ***
Hover Over Cart Icon
    Wait Until Element Is Visible   ${BASKET_LINK}    timeout=15s
    Mouse Over    ${BASKET_LINK}
    Wait Until Element Is Visible    ${CART_PREVIEW_PANEL}    timeout=15s

Verify Empty Cart
   Wait Until Element Is Visible    ${CART_EMPTY_MESSAGE}   timeout=15s
   Element Should Not Be Visible    ${CART_ITEM}