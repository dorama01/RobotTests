*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Dialogs
Library    Collections
Resource   ../resources/locators/cart_page.robot
Resource   ../resources/locators/add_products_to_cart_page.robot
Resource   ../resources/variables/variables_dev.robot
Resource    ../resources/keywords/common_keywords.robot


*** Keywords ***
Open Product List Page
    Open Browser    ${BASE_URL_TO_PRODUCT_LIST}    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    ${PRODUCT_LIST}  timeout=15s
Add First N Products To Cart
    [Arguments]    ${COUNT}

    ${count}=    Convert To Integer    ${COUNT}

    FOR    ${index}    IN RANGE    1    ${count + 1}
        ${product_xpath}=    Set Variable    (//div[@class='product js-product'])[${index}]
        ${product_link}=    Get Element Attribute    xpath=${product_xpath}//a    href

        ${main_window}=    Get Window Handles
        ${main_handle}=    Get From List    ${main_window}    0

        Execute JavaScript    window.open("${product_link}", "_blank")
        Sleep    1s

        ${all_windows}=    Get Window Handles
        ${new_window}=     Get From List    ${all_windows}    -1
        Switch Window      handle=${new_window}

        Handle Altcha If Present

        Wait Until Page Contains Element    ${ADD_TO_CART_BUTTON}    timeout=10s
        Click Button    ${ADD_TO_CART_BUTTON}
        Sleep    2s

        Close Window
        Switch Window      handle=${main_handle}
    END

# Go To Cart
#     Click Element    ${CART_ICON}
#     Wait Until Element Is Visible    ${CART_ITEMS}   timeout=10s
    
# Verify Cart Items Count
#     [Arguments]    ${expected_count}
#     ${items}=    Get Element Count    ${CART_ITEMS}
#     Should Be Equal As Integers    ${items}    ${expected_count}






