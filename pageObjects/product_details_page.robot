*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators/product_details_page.robot
Resource   ../resources/variables/variables_dev.robot

*** Keywords ***

Click On First Product
    [Documentation]    Clique sur le premier produit avec SKU donné.
    Wait Until Element Is Visible    ${FIRST_PRODUCT_LINK}   timeout=10s
    Click Element    ${FIRST_PRODUCT_LINK}


Verify Product Image Is Visible
    [Documentation]    Vérifie que l'image principale est présente.
    Wait Until Element Is Visible    ${PRODUCT_IMAGE}    timeout=10s

Verify Product Title Is Visible
    [Documentation]    Vérifie que le titre du produit est présent.
    Wait Until Element Is Visible    ${PRODUCT_TITLE}    timeout=10s

Verify Product Description Is Visible
    [Documentation]    Vérifie que la section de description est présente.
    Wait Until Element Is Visible    ${PRODUCT_DESCRIPTION}    timeout=10s

Verify Product Price Is Visible
    [Documentation]    Vérifie que le prix est affiché.
    Wait Until Element Is Visible    ${PRODUCT_PRICE}    timeout=10s

Verify Product Reviews Section Is Visible
    [Documentation]    Vérifie que la section Avis est présente.
    Wait Until Element Is Visible    ${PRODUCT_REVIEWS_BUTTON}    timeout=10s