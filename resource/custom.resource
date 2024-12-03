*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Swipe Until Element Is Visible
    [Arguments]    ${locator}
    
    ${x}  Get Window Width
    ${y}  Get Window Height

    ${start_x}  Evaluate  ${x} / 2
    ${start_y}  Evaluate  ${y} / 2

    WHILE    ${True}
        ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}  1

        IF    ${status}
            Exit For Loop
        END

        Swipe    
        ...    start_x=${start_x}
        ...    start_y=1230
        ...    offset_x=0
        ...    offset_y=${start_y}
    END

Swipe Vertically Until Element Is Visible
    [Arguments]    ${locator}
    
    ${x}  Get Window Width
    ${y}  Get Window Height

    ${start_x}  Evaluate  ${x} / 2
    ${start_y}  Evaluate  ${y} / 2

    WHILE    ${True}
        ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}  1

        IF    ${status}
            Exit For Loop
        END

        Swipe    
        ...    start_x=${start_x}
        ...    start_y=${start_y}
        ...    offset_x=${start_x}
        ...    offset_y=0
    END