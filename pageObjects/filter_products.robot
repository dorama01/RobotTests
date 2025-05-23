*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators/filter_page.robot
Resource   ../resources/variables/variables_dev.robot

*** Keywords ***
Should Prices Be In Range
    [Arguments]    ${prices}    ${min_price}    ${max_price}
    FOR    ${price}    IN    @{prices}
        Should Be True    ${price} >= ${min_price} and ${price} <= ${max_price}    Le prix ${price} n'est pas dans la fourchette ${min_price}-${max_price}
    END

Select Price Filter Between 100 And 200
    Scroll Element Into View    ${FILTER_100_200}
    Wait Until Element Is Visible    ${FILTER_100_200}     timeout=5s
    Click Element    ${FILTER_100_200} 



