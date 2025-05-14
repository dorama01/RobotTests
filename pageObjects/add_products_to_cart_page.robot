*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators/cart_page.robot
Resource   ../resources/locators/add_products_to_cart_page.robot
Resource   ../resources/variables/variables_dev.robot
Resource    ../resources/keywords/common_keywords.robot


*** Keywords ***
Open Product List Page
    Open Browser    ${BASE_URL_TO_PRODUCT_LIST}    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    ${PRODUCT_LIST}  timeout=15s

*** Keywords ***
Add First N Products To Cart
    [Arguments]    ${COUNT}

    ${int_count}=    Convert To Integer    ${COUNT}

    FOR    ${index}    IN RANGE    1    ${int_count + 1}
        ${ajouter_button_xpath}=    Set Variable    (${PRODUCT_CARD.replace('xpath=', '')})[${index}]${AJOUTER_BUTTON_SUFFIX}

        Wait Until Element Is Visible    xpath=${ajouter_button_xpath}    timeout=10s
        Scroll Element Into View         xpath=${ajouter_button_xpath}
        Sleep    1s
      

        # Try normal click
        Click Element    xpath=${ajouter_button_xpath}
        Sleep  2s
        
        # if the CAPCHA checkbox is present, handle it
        Handle Altcha If Present

        # Wait for redirection to recommendation page
        Wait Until Page Contains Element    ${RECOMMENDATION_PAGE_IDENTIFIER}    timeout=10s
        Sleep    1s

        Go Back
        Wait Until Page Contains Element    ${SEARCH_RESULTS_IDENTIFIER}    timeout=10s
    END

# Go To Cart
#     Click Element    ${CART_ICON}
#     Wait Until Element Is Visible    ${CART_ITEMS}   timeout=10s
    
# Verify Cart Items Count
#     [Arguments]    ${expected_count}
#     ${items}=    Get Element Count    ${CART_ITEMS}
#     Should Be Equal As Integers    ${items}    ${expected_count}






