*** Variables ***
${SEARCH_INPUT}        id=search
${PRODUCT_TITLES}      xpath=//h4[contains(@class, 'o-card__title')]
${PRICE_SPAN}    //span[@class="c-price c-price--promo c-price--lg"]
${PRICE_ASC_BUTTON}    //*[@data-value="PRICEASC"]
${PRICE_DESC_BUTTON}   //*[@data-value="PRICEDESC"]

${VALIDATE_EMAIL_BUTTON}    xpath=//input[@data-seln="validateEmail"]
