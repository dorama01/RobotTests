*** Variables ***
${FOOTER_LEGAL_NOTICE}       xpath=//a[contains(translate(text(), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'mentions légales')]
${FOOTER_TERMS}              xpath=//a[contains(translate(text(), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'conditions générales')]
${FOOTER_PRINCIPAL_DIV}      xpath=//div[@id='asyncFooter']