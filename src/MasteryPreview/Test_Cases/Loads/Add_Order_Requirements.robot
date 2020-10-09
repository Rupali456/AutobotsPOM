*** Settings ***
Test Teardown  close browser
Library     SeleniumLibrary
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Loads_Common_Keywords.robot
Variables  ../../Page_Objects/Loads_Add_Edit_Locators.py
Variables  ../../Page_Objects/Load_Search_Locators.py

*** Test Cases ***
#Load Requirements: TA-290
Search Load and Add Requirements
    [Documentation]  As a user I can add requirements to order load
    [Tags]  Regression Test Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
    set selenium speed  0.1 seconds

    select search loads from header
    search loads by shipper name  ${shipper_value}
    expand load details  ${expand_order_details}

    wait until page contains element  ${requirements_table}
    click element  ${add_requirements_icon}
    page should contain element  ${requirements_modal}
    click element  ${select_requirements_element}
    wait until element is visible  ${select_team_value}
    wait until element is visible  ${select_hazmat_value}
    select value from dropdown if checkbox is unchecked  ${team_value_checkbox}  ${select_team_value}
    select value from dropdown if checkbox is unchecked  ${hazmat_value_checkbox}  ${select_hazmat_value}
    press keys  ${select_requirements_element}  TAB
    click element  ${add_requirements_button}
    click element  ${save_order_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

    #Verifying team and hazmat requirements added to the order
    wait until page contains element  ${expand_order_details}
    click element  ${expand_order_details}
    wait until page contains element  ${requirements_table}
    page should contain element  ${verify_team_requirement}
    page should contain element  ${verify_hazmat_requirement}
