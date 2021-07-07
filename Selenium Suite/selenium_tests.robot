*** Settings ***
Library     DateTime
Library    SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1 Get Datetime
    ${currentdate}     Get Current Date
    Log To Console    ${currentdate}

TC2 Print Name
    ${name1}    Set Variable    bala
    Log To Console    ${name1}
    Set Local Variable    ${name2}      bala1
    Log To Console    ${name2}

TC3 OpenEMR Login
    Append To Environment Variable    Path      C:\\Components
    Open Browser    url=https://google.com   browser=gc
    Maximize Browser Window













