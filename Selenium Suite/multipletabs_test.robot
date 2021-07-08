*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary

*** Test Cases ***
TC1 Multiple Tabs
    Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    browser=gc
    Maximize Browser Window
    Go To    https://www.db4free.net/
    Set Selenium Implicit Wait    30s
    Click Element    //b[contains(text(),'phpMy')]
    
    ${url}      Get Location
    Log To Console    ${url}

    Close Window




