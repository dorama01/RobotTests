
*** Variables ***
${BASKET_LINK}    xpath=//a[contains(@class, 'btn-access__basket')]
${CART_PREVIEW_PANEL}    xpath=//a[contains(@class, 'btn-access__basket')]
${CART_EMPTY_MESSAGE}    xpath=//h4[contains(text(), 'Panier vide')]
${CART_ITEM}  xpath=//span[@class='u-text--body-lead u-text--bold' and text()='TOTAL :']
${CART_ICON}    css=use[xlink\\:href*="empty-basket"]
${CART_ITEM_IMAGE}         xpath=//div[contains(@class, 'o-card__image')]
${CART_ITEM_NAME}          xpath=//div[contains(@class, 'o-card__title u-mb-sm u-line-clamp--1')]
${CART_ITEM_QTY}           xpath=//input[contains(@class, 'input js-form-number__value')]
