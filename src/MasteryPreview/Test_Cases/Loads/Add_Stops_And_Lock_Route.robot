*** Settings ***
Test Teardown   close browser
Library  SeleniumLibrary
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Loads_Common_Keywords.robot
Variables  ../../Page_Objects/Loads_Add_Edit_Locators.py
Variables  ../../Page_Objects/Load_Search_Locators.py
Variables  ../../Data/Loads_Data.py

*** Test Cases ***
#Load- Route Creation : TA 20
Search Load and Add Stops To Order
    [Documentation]  As a user I can able to add stops to load Order and lock the route. Here we need fresh load and without carrier under route. Else test case will fail.
    [Tags]  Regression Automation Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
    set selenium speed  0.2 seconds

    select search loads from header
    search loads by shipper name  ${shipper_value}
    expand load details  ${expand_order_details}

    #Add Commodities
    click element  ${add_commodities_icon}
    page should contain element  ${commodities_modal}
    input text  ${freight_description_element}  ${freight_description_value}
    input text  ${expweight_element}  ${expweight_value}
    scroll element into view  ${save_commodity_button}
    wait until element is enabled  ${save_commodity_button}
    click element  ${save_commodity_button}
    wait until element is visible  ${verify_saved_commodities}
    page should contain element  ${verify_saved_commodities}
    wait until element is enabled  ${save_order_button}
    click element  ${save_order_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

    page should contain element  ${stops_table}
    wait until element is enabled  ${add_stop_icon}

