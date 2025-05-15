

*** Variables ***
${PRODUCT_LIST}        xpath=//div[contains(@class, 'l-productlist__content')]
${PRODUCT_CARD}                xpath=//article[contains(@class, 'c-productCard')]
${ADD_TO_CART_BUTTON}         xpath=.//input[@type='submit' and contains(@value, 'Ajouter au panier')]
${CAPTCHA_CHECKBOX}    xpath=//input[@id='altcha_checkbox']
${RECOMMENDATION_PAGE_IDENTIFIER}    xpath=//div[@class="h2" and normalize-space(text())="Recommandé avec votre produit"]
${SEARCH_RESULTS_IDENTIFIER}   xpath=//h1[span[normalize-space(text())="Pc"]]
${AJOUTER_BUTTON_SUFFIX}    //input[@type="button" and @aria-label="Ajouter"]
${BASKET_LINK}    xpath=//a[contains(@class, 'btn-access__basket')]
${CART_PREVIEW_PANEL}    xpath=//div[contains(@class, 'c-overlayer c-overlayer--basket u-p-sm')]
${CART_PREVIEW_OVERLAYER}    xpath=//div[contains(@class, 'c-overlayer--basket')]
${CART_ITEMS_COUNT}          xpath=//div[contains(@class, 'c-overlayer--basket')]//li[contains(@class, 'js-init-cartline')]
${CART_EMPTY_MESSAGE}    xpath=//h4[contains(text(), 'Panier vide')]
${CART_ITEM}    xpath=//span[@class='u-text--body-lead u-text--bold' and text()='TOTAL :']


