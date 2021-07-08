*** Settings ***
Library     String



*** Test Cases ***
TC1
    FOR    ${i}    IN RANGE    1    11
        Log To Console    ${i}
    END

TC2
    Set Local Variable    ${text}   Showing 1 to 10 of 57 entries
    Log To Console    ${text}
    ${text}     Fetch From Right    ${text}     of
    Log To Console    ${text}
    ${text}     Remove String       ${text}         entries
    Log To Console    ${text}
    ${text}    Strip String    ${text}
    Log To Console    ${text}
    ${text}     Convert To Integer    ${text}

    ${text1}      Evaluate    ${text}/10
    Log To Console    ${text1}

    ${text2}      Convert To Integer    ${text1}
    Log To Console    ${text2}

   ${text}      Evaluate    math.ceil(${text}/10)
    Log To Console    ${text}

    FOR    ${i}    IN RANGE    1    ${text}+1
        Log To Console    ${i}
    END