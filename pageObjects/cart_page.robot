*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators/cart_page.robot
Resource   ../resources/variables/variables_dev.robot
Resource    ../resources/keywords/common_keywords.robot
Resource    ../resources/locators/search_page.robot
Resource    ../pageObjects/search_page_keywords.robot



*** Keywords ***
Add First N Products To Cart
    [Arguments]    ${COUNT}


    Enter Search Term And Submit   ${SEARCH_TERMS}

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
        Handle Captcha If Present

        # Wait for redirection to recommendation page
        Wait Until Page Contains Element    ${RECOMMENDATION_PAGE_IDENTIFIER}    timeout=10s
        Sleep    1s

        Go Back
        Wait Until Page Contains Element    ${SEARCH_RESULTS_IDENTIFIER}    timeout=10s
    END


Hover Over Cart And Verify Items
    [Arguments]    ${expected_count}

    # Hover over the cart icon
    Hover Over Cart Icon

    # Wait for the overlay to be visible
    Wait Until Element Is Visible   ${CART_PREVIEW_OVERLAYER}    timeout=15s

    # Count the items
    ${cart_items}=    Get Element Count    ${CART_ITEMS_COUNT}
    Log    Found ${cart_items} items in cart preview
    Should Be Equal As Integers    ${cart_items}    ${expected_count}


Hover Over Cart Icon
    Wait Until Element Is Visible   ${BASKET_LINK}    timeout=15s
    Mouse Over    ${BASKET_LINK}
    Wait Until Element Is Visible    ${CART_PREVIEW_PANEL}    timeout=15s

Verify Empty Cart
   Wait Until Element Is Visible    ${CART_EMPTY_MESSAGE}   timeout=15s
   Element Should Not Be Visible    ${CART_ITEM}


