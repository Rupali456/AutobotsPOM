*** Settings ***
Test Teardown  close browser
Library     SeleniumLibrary
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Loads_Common_Keywords.robot
Variables  ../../Page_Objects/Loads_Add_Edit_Locators.py
Variables  ../../Page_Objects/Load_Search_Locators.py

*** Test Cases ***
#Add Associated Rep to Load : TA 94
Add Edit and Remove Associated Rep to Load
    [Documentation]  As a user I can add edit and remove associated Rep to Load
    [Tags]  Regression Test Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
    set selenium speed  0.1 seconds

    select search loads from header
    search loads by shipper name  ${shipper_value}
    expand load details  ${expand_order_details}

    #Add Rep to Load (Kelsey Bozick)
    wait until element is visible  ${associated_reps_table}
    click element  ${add_reps_button}
    input and select value from autopopulate dropdown  ${add_reps_name_element}  ${reps_name}
#    wait until element is visible  ${reps_name_dd}
#    press keys  ${add_reps_name_element}  ENTER
    select value from dropdown  ${reps_type_dd}  ${reps_type_value}
#    click element  ${reps_type_dd}
#    wait until element is visible  ${reps_type_value_tbs}
#    click element  ${reps_type_value_tbs}
    click element  ${main_checkbox}
    click element  ${save_reps_button}
    page should contain element  ${added_reps}

    #Delete Rep (Kelsey Bozick)
    Delete Menu Item  ${delete_rep_menu_button}
    click element  ${save_order_button}
    wait until page contains element  ${success_toast}
    wait until element is visible  ${expand_order_details}
    click element  ${expand_order_details}
    page should not contain element  ${added_reps}
