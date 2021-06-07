*** Settings ***
Library           ../../Lib/site-packages/Selenium2Library/

*** Variables ***
${url}            https://qa-platform-proxy.dev-cl.bookatable.com/
${browser}        chrome
${admin_class1_user}    admin@class1.total
${password}       !qa2ws

*** Test Cases ***
Login with AdminClass1 user
    open browser    ${url}    ${browser}
    maximize browser window
    input text    //input[@id="Email"]    ${admin_class1_user}
    input text    //input[@id="Password"]    ${password}
    click element    //input[@value="Log in"]
    wait until element is visible    //div[@id="_evidon_banner"]
    close browser
