*** Settings ***
Library           ../../Lib/site-packages/Selenium2Library/

*** Variables ***
${url}            https://qa-platform-proxy.dev-cl.bookatable.com/
${browser}        chrome

*** Test Cases ***
Login with AdminClass1 user
    open browser    ${url}    ${browser}
