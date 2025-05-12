
*** Variables ***
${BASKET_LINK}    xpath=//a[contains(@class, 'btn-access__basket')]
${CART_PREVIEW_PANEL}    xpath=//a[contains(@class, 'btn-access__basket')]
${CART_EMPTY_MESSAGE}    xpath=//h4[contains(text(), 'Panier vide')]
${CART_ITEM}  xpath=//span[@class='u-text--body-lead u-text--bold' and text()='TOTAL :']
