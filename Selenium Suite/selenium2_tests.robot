*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    browser=gc
    Maximize Browser Window
    Go To    http://demo.openemr.io/b/openemr/interface/login/login.php?site=default
    Set Selenium Implicit Wait    30s
    ${att}      Get Element Attribute    id=authUser    placeholder
    Log To Console    ${att}
    Element Attribute Value Should Be    id=authUser    placeholder    Username:

    ${att}      Get Element Attribute    partial link=Acknowledgments   href
    Log To Console    ${att}
    Click Element    partial link=Acknowledgments

TC2
    Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    browser=gc
    Maximize Browser Window
    Go To    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html
    Set Selenium Implicit Wait    30s

#    1 to 10
    FOR    ${i}    IN RANGE    1    11
        ${name}    Get Text    xpath=//table[@id='example']/tbody/tr[${i}]/td[2]
        Log To Console    ${name}

         ${age}    Get Text    xpath=//table[@id='example']/tbody/tr[${i}]/td[5]
        Log To Console    ${age}
    END

