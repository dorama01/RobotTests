*** Variables ***
${FIRST_PRODUCT_LINK}    xpath=//li[@data-sku='${PRODUCT_SKU}']//a[contains(@class, 'o-card__link')]
${PRODUCT_IMAGE}            xpath=//img[@id='mainImage']
${PRODUCT_TITLE}            xpath=//div[contains(@class, 'c-fp-heading__title')]//h1
${PRODUCT_DESCRIPTION}      xpath=//dl[contains(@class, 'c-productHighlights__list')]
${PRODUCT_PRICE}            xpath=//span[contains(@class, 'c-price--promo')]
${PRODUCT_REVIEWS_BUTTON}   xpath=//button[contains(@data-id, 'avis-accordion')]
