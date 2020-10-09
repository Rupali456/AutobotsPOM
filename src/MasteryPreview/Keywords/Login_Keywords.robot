*** Settings ***
Library  SeleniumLibrary
Variables  ../Page_Objects/Login_Page_Locators.py

*** Keywords ***
Launch Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    set selenium implicit wait    ${waitTime}
    set selenium timeout  ${waittime}

Verify Landing Page Content
    Wait Until Page Contains    ${LandingPage}

Click on Login Button
    Click Button    ${PleaseLogin_Button}
    Wait Until Page Contains    ${MasteryWebTMS_Text}

Enter Username Password and click on Continue
    Input Text    ${UserName_TextBox}   ${userName}
    Input Text    ${Password_TextBox}   ${Password}
    click element   ${login_Button}

Login_Test
    Launch Application
    Verify Landing Page Content
    Click on Login Button
    Enter Username Password and click on Continue
