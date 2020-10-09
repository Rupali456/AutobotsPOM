*** Settings ***
Test Teardown  close browser
Library     SeleniumLibrary
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Loads_Common_Keywords.robot
Variables  ../../Page_Objects/Loads_Add_Edit_Locators.py
Variables  ../../Page_Objects/Load_Search_Locators.py

*** Test Cases ***
#Load_Order_notes : TA 262
Open Order And Verify Notes
    [Documentation]  As a user I can view, add and verify Notes of order
    [Tags]  Regression Automation Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
    set selenium speed  0.1 seconds

    select search loads from header
    search loads by shipper name  ${shipper_value}
    expand load details  ${expand_order_details}

    #Enter the Order Notes and save data
    wait until element is visible   ${ordernotes_element}
    input text  ${ordernotes_element}    ${ordernotes_value}
    scroll element into view  ${save_order_button}
    wait until element is visible   ${save_order_button}
    click button  ${save_order_button}
    wait until element is visible  ${success_toast}

    #Open Order Row to verify enterd data
    wait until element is visible  ${expand_order_details}
    click element   ${expand_order_details}
    wait until element is visible    ${verify_ordernotes}
    page should contain element     ${verify_ordernotes}

    #Reset order notes
    ${backspaces_count}=    Get Length      ${ordernotes_value}
    Run Keyword If    """${ordernotes_value}""" != ''
    ...     Repeat Keyword  ${backspaces_count}  Press Keys  ${ordernotes_element}   BACKSPACE
    scroll element into view  ${save_order_button}
    wait until element is visible   ${save_order_button}
    click button  ${save_order_button}
    wait until element is visible  ${expand_order_details}
    click element   ${expand_order_details}
    wait until page does not contain element  ${verify_ordernotes}

