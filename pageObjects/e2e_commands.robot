
*** Settings ***
Library      SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource  ../pageObjects/cart_page.robot
Resource   ../resources/locators/e2e_command_page.robot
Resource  ../pageObjects/login_page.robot




*** Keywords ***

Start Checkout From Cart Page
    [Documentation]    Start checkout process from the cart page
    Redirect To Cart Content After Adding Product 
    Click Go To Order

Complete Checkout Process
    [Documentation]    Handles full checkout: Adresse → Livraison → Paiement → Confirmation
    Proceed To Adresse Step
    Proceed To Livraison Step
    Proceed To Paiement Step




Proceed To Adresse Step
    [Documentation]    Proceed to the Adresse step
    ${form_visible}=    Run Keyword And Return Status    Page Should Contain Element     ${NAME}    timeout=5s
     Run Keyword If    ${form_visible}    Fill Adresse Form    ELSE    Log    Form already filled or not shown    INFO

       

    

Click Go To Order
    Wait Until Element Is Visible    ${GO_TO_ORDER_BUTTON}    timeout=10s
    Click Element    ${GO_TO_ORDER_BUTTON}
    Enter Email And Continue
    Enter Password And Login

Fill Adresse Form
    [Documentation]    Fills the adresse form with valid data

   

    Input Text       ${NAME}        Dupont
    Input Text       ${FNAME}     Jean
    Input Text       ${BIRTHDAY}    01/01/1990
    Input Text       ${PHONE}         0612345678
    Input Text       ${POSTAL_CODE}       75001
    Input Text       ${CITY}            Paris
    Input Text       ${ADRESS}          10 Rue de la Paix

    Click Button     ${CREATE_ACCOUNT_BTN} 
    



Handle Delivery Offer Modal 
      Execute JavaScript    document.querySelector('${HANDLE_DELEVERY_OFFER_BTN}').click()
      


Proceed To Livraison Step
    [Documentation]    Proceed to the Livraison step
       Handle Delivery Offer Modal 
    Wait Until Element Is Visible    ${DELEVERY_PAGE_IDENTIFIER}    timeout=10s
    Click Element    ${DELEVERY_CONTINUE_BTN}
    Wait Until Element Is Visible    ${PAIMENT_PAGE_IDENTIFIER}   timeout=10s


Proceed To Paiement Step
    Wait Until Element Is Visible    ${PAIMENT_PAGE_IDENTIFIER}   timeout=10s
    Click Element   ${PAIMENT_BY_CARD_BUTTON}
    Scroll Element Into View    ${CHOOSE_PAIMENT_MODE_BTN}
    Click Element  ${CHOOSE_PAIMENT_MODE_BTN}
    Wait Until Element Is Visible    ${FINAL_PAIMENT_PAGE_IDENTIFIER}   timeout=15s




