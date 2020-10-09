*** Settings ***
Test Teardown   Close Browser
Library  SeleniumLibrary
Library  DateTime
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Resource  ../../Keywords/Loads_Common_Keywords.robot
Variables  ../../Page_Objects/Loads_Common_Locators.py
Variables  ../../Page_Objects/Common_Locators.py
Variables  ../../Page_Objects/Loads_Add_Edit_Locators.py
Variables  ../../Data/Loads_Data.py

*** Keywords ***
Add Commodities to Customer Details
    [Arguments]  ${Commodity_Name}
    click element  ${add_commodities_icon}
    page should contain element  ${commodities_modal}
    input text  ${freight_description_element}  ${Commodity_Name}
    input text  ${expweight_element}  ${expweight_value}
    wait until element is enabled  ${save_commodity_button}
    scroll element into view    ${save_commodity_button}
    click element  ${save_commodity_button}

*** Test Cases ***
#Load lifecycle and commodity: TA-382
Add and update commodities for order
    [Documentation]  As a user I can able to add and update commodities to Load Order
    [Tags]  Regression Automation Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
    set selenium speed  0.1 seconds

    #Step-1: Add New Load and search customer
    select add new load from header
    select window  NEW
    maximize browser window
    page should contain element  ${hide_operational_details_button}
    click element  ${hide_operational_details_button}
    wait until element is visible  ${search_customer_element}

    #Search by Customer Name
    input and select value from autopopulate dropdown  ${search_customer_element}  ${search_customer_value}
    wait until element is visible  ${verify_customer_details}

    #Step-2: Select Activation Status
    select value from dropdown  ${activation_status_element}  ${active_status_value}

    #Step-3: Select mode, relation, quote type
    select value from dropdown  ${mode_element}  ${mode_value}
    select value from dropdown  ${relation_element}  ${relation_value}
    select value from dropdown  ${quotetype_element}  ${quotetypeid_value}
    click element  ${save_order_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}
    wait until page contains element  ${stops_table}
    page should contain element  ${stops_table}
    wait until element is enabled  ${add_stop_icon}
    page should contain element  ${add_stop_icon}

    #Step-4: Add a pick-up stop
    click element  ${add_stop_icon}
    wait until element is visible  ${select_facility_element}
    wait until element is visible  ${select_facility_text}
    input and select value from autopopulate dropdown  ${select_facility_element}  ${pickup_facility_value}
    click element  ${select_date}
    click element  ${todays_date}
    click element  ${save_stop_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

    #Step-5: Add a delivery stop
    click element  ${add_stop_icon}
    wait until element is visible  ${select_facility_element}
    wait until element is visible  ${select_facility_text}
    input and select value from autopopulate dropdown  ${select_facility_element}  ${delivery_facility_value}
    select value from dropdown  ${pickup_delivery_element}  ${delivery_value}
    click element  ${select_date}
    click element  ${todays_date}
    click element  ${save_stop_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

    #Step-6: Add commodities to customer details
    wait until element is visible  ${expand_order_details}
    click element  ${expand_order_details}
    add commodities to customer details  ${cola_commodity_value}
    add commodities to customer details  ${coffee_commodity_value}
    add commodities to customer details  ${syrup_commodity_value}
    add commodities to customer details  ${carbonatedcylinder_commodity_value}
    click element  ${save_order_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

    #Step-7: Check and Uncheck all the commodities in stops
    Edit Menu Item  ${edit_pickup_menu_button}
    click element  ${add_stop_commodities_icon}
    page should contain element  ${commodities_modal}
    click element  ${select_commodity_element}
    select value from dropdown if checkbox is unchecked  ${cola_commodity_checkbox}  ${select_cola_commodity}
    select value from dropdown if checkbox is unchecked  ${coffee_commodity_checkbox}  ${select_coffee_commodity}
    select value from dropdown if checkbox is unchecked  ${syrup_commodity_checkbox}  ${select_syrup_commodity}
    select value from dropdown if checkbox is unchecked  ${carbonatedcylinder_commodity_checkbox}  ${select_carbonatedcylinder_commodity}
    click element  ${select_commodity_element}
    click element  ${save_commodity}
    click element  ${save_stop_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

    Edit Menu Item  ${edit_delivery_menu_button}
    click element  ${add_stop_commodities_icon}
    page should contain element  ${commodities_modal}
    click element  ${select_commodity_element}
    select value from dropdown if checkbox is unchecked  ${cola_commodity_checkbox}  ${select_cola_commodity}
    select value from dropdown if checkbox is unchecked  ${coffee_commodity_checkbox}  ${select_coffee_commodity}
    select value from dropdown if checkbox is unchecked  ${syrup_commodity_checkbox}  ${select_syrup_commodity}
    select value from dropdown if checkbox is unchecked  ${carbonatedcylinder_commodity_checkbox}  ${select_carbonatedcylinder_commodity}
    click element  ${select_commodity_element}
    click element  ${save_commodity}
    click element  ${save_stop_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

    #Step-8: Change the customer activation status to cancelled
    page should contain element  ${expand_order_details}
    click element  ${expand_order_details}
    select value from dropdown  ${activation_status_element}  ${change_activation_status_value}
    click element  ${save_order_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

    #Step-9: Review the commodity ellipse for both pick-up and delivery
    click element   ${edit_pickup_menu_button}
    press keys  NONE  ESC
    click element   ${edit_delivery_menu_button}

    #Step-10: Change the customer activation status to active
    page should contain element  ${expand_order_details}
    click element  ${expand_order_details}
    select value from dropdown  ${activation_status_element}  ${active_status_value}
    click element  ${save_order_button}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}

