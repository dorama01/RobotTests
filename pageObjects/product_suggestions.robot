
*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../resources/variables/variables_dev.robot
Resource   ../pageObjects/product_details_page.robot
Resource   ../pageObjects/search_page_keywords.robot

Resource    ../resources/locators/product_suggestions.robot
*** Keywords ***

Check Recommended Products Section Is Present
    [Documentation]    Vérifie que les produits recommandés sont affichés sur la page du produit sélectionné.
    
    # Click on the first product
     Enter Search Term And Submit    ${SEARCH_TERMS}
     Click On First Product
    # Wait for the recommended products section to be visible
    Wait Until Element Is Visible    ${RECOMMENDED_PRODUCTS_SECTION}    timeout=15s

    Scroll Element Into View      ${RECOMMENDED_PRODUCTS_SECTION}


    



  
