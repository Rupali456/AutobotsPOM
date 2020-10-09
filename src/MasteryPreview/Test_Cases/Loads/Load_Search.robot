*** Settings ***
Test Teardown  Close Browser
Library  SeleniumLibrary
Library  String
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Resource  ../../Keywords/Loads_Common_Keywords.robot
Resource  ../../Keywords/Loads_Search_Keywords.robot
Variables  ../../Page_Objects/Load_Search_Locators.py
Variables  ../../Page_Objects/Loads_Common_Locators.py
Variables  ../../Page_Objects/Common_Locators.py
Variables  ../../Data/Loads_Data.py

*** Keywords ***

*** Test Cases ***
#Load Search: TA-554
Load Search using All Search Paramters
    [Documentation]  As a user I can search loads using all search parameters
    [Tags]  Regression Test Suite
    Login_Test

    #Step-1: Navigate to load search
    Select Search Loads from Header


    #Step-2: Search by Ref #
    Deselect RAS Values
    wait until element is visible  ${ref_num_element}
    input text  ${ref_num_element}  ${ref_num_value}
    click search load button
    wait until element is visible  ${load_num_link}
    click element  ${load_num_link}
    expand load details  ${expand_order_details}
    wait until element is visible  ${verify_ref_num}
    page should contain element  ${verify_ref_num}
    close window
    select window  MAIN

    #Step-3: Search by Route #
    clear load search results
    deselect ras values
    input text  ${route_num_element}  ${route_num_value}
    click search load button
    wait until element is visible  ${verify_route_num}
    page should contain element  ${verify_route_num}

    #Step-4: Search by Order #
    clear load search results
    deselect ras values
    input text  ${order_num_element}  ${order_num_value}
    click search load button
    wait until element is visible  ${verify_order_num}
    page should contain element  ${verify_order_num}

    #Step-5: Search by Load #
    clear load search results
    deselect ras values
    input text  ${load_num_element}  ${load_num_value}
    click search load button
    wait until element is visible  ${verify_load_num}
    page should contain element  ${verify_load_num}

    #Step-6: Search by Shipper
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${shipper_element}  ${shipper_value}
    click search load button
    wait until element is visible  ${verify_shipper}
    page should contain element  ${verify_shipper}

    #Step-7: Search by PU Date
    #No result is displayed when only PU Date is selected
    clear load search results
    deselect ras values
    click element  ${pu_date_element}
    wait until element is visible  ${previous_month_button}
    select a date from date picker  ${pickup_day_tbs}  ${pickup_month_tbs}  ${pickup_year_tbs}
    click search load button

    #Step-8: Search by PU Date Range
    click element  ${end_pudate_element}
    wait until element is visible  ${previous_month_button}
    select a date from date picker  ${end_pickup_day_tbs}  ${end_pickup_month_tbs}  ${end_pickup_year_tbs}
    click search load button
    wait until element is visible  ${list_of_loads}

    #Step-9: Search by Origin City
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${origin_city_element}  ${origin_value}
    click search load button
    Verify Origin City

    #Step-10: Search by Origin State
    clear load search results
    deselect ras values
    wait until element is visible  ${origin_state_element}
    click element  ${origin_state_element}
    input text  ${origin_state_search_field}  ${ga_value}
    wait until element is visible  ${ga_state_checkbox}
    select value from dropdown if checkbox is unchecked  ${ga_state_checkbox}  ${select_ga_state}
    press keys  ${origin_state_search_field}  CTRL+a+BACKSPACE
    input text  ${origin_state_search_field}  ${oh_value}
    wait until element is visible  ${oh_state_checkbox}
    select value from dropdown if checkbox is unchecked  ${oh_state_checkbox}  ${select_oh_state}
    click search load button
    wait until element is visible  ${verify_ga_oh_state}

    #Step-11: Search Origin with a Radius
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${origin_city_element}  ${origin_value}
    input text  ${pickup_radius_element}  ${radius_value}
    click search load button
    wait until element is visible  ${list_of_loads}

    #Step-12: Search by Consignee
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${consignee_element}  ${consignee_value}
    click search load button
    wait until element is visible  ${verify_consignee}
    page should contain element  ${verify_consignee}

    #Step-13: Search by Del Date
    #No result is displayed when only Del Date is selected
    clear load search results
    deselect ras values
    click element  ${start_deldate_element}
    select a date from date picker  ${start_deldate_day}  ${start_deldate_month}  ${start_deldate_year}
    click search load button

    #Step-14: Search by Del Date Range
    click element  ${end_deldate_element}
    select a date from date picker  ${end_deldate_day}  ${end_deldate_month}  ${end_deldate_year}
    click search load button
    wait until element is visible  ${list_of_loads}

    #Step-15: Search by Destination
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${destination_element}  ${destination_value}
    click search load button
    Verify Destination City

    #Step-16: Search by Destination State
    clear load search results
    deselect ras values
    wait until element is visible  ${destination_state_element}
    click element  ${destination_state_element}
    input text  ${destination_state_search_field}  ${ga_value}
    wait until element is visible  ${ga_state_checkbox}
    select value from dropdown if checkbox is unchecked  ${ga_state_checkbox}  ${select_ga_state}
    press keys  ${destination_state_search_field}  CTRL+a+BACKSPACE
    input text  ${destination_state_search_field}  ${oh_value}
    wait until element is visible  ${oh_state_checkbox}
    select value from dropdown if checkbox is unchecked  ${oh_state_checkbox}  ${select_oh_state}
    click search load button
    wait until element is visible  ${verify_destination_ga_oh_state}

    #Step-17: Search Destination with a Radius
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${destination_element}  ${destination_value}
    input text  ${delivery_radius_element}  ${radius_value}
    click search load button
    wait until element is visible  ${list_of_loads}

    #Step-18: Search by Customer
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${customer_search_element}  ${customer_value}
    click search load button
    wait until element is visible  ${verify_customer}
    page should contain element  ${verify_customer}

    #Step-19: Search by Customer Rep
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${customer_rep_element}  ${customer_rep_value}
    click search load button
    wait until element is visible  ${load_num_link}
    click element  ${load_num_link}
    expand load details  ${expand_order_details}
    wait until element is visible  ${verify_customer_reps}
    page should contain element  ${verify_customer_reps}
    close window
    select window  MAIN

    #Step-20: Search by Carrier
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${carrier_element}  ${carrier_value}
    click search load button
    wait until element is visible  ${load_num_link}
    click element  ${load_num_link}
    expand load details  ${expand_route_details}
    wait until element is visible  ${verify_carrier_value}
    close window
    select window  MAIN

    #Step-21: Search by Carrier Rep
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${carrier_rep_element}  ${carrier_rep_value}
    click search load button
    wait until element is visible  ${list_of_loads}
    click element  ${load_num_link}
    expand load details  ${expand_route_details}
    wait until element is visible  ${verify_carrier_reps}
    page should contain element  ${verify_carrier_reps}
    close window
    select window  MAIN

    #Step-22: Sort Load Search Results by Load #
    clear load search results
    deselect ras values
    input and select value from autopopulate dropdown  ${shipper_element}  ${shipper_value}
    click search load button
    wait until element is visible  ${list_of_loads}
    sort load results  ${sort_load_by_load_num}  ${sort_load_by_load_num_asc}  ${sort_load_by_load_num_dsc}

    #Step-23: Sort Load Search Results by Route #
    sort load results  ${sort_load_by_route_num}  ${sort_load_by_route_num_asc}  ${sort_load_by_route_num_dsc}

    #Step-24: Sort Load Search Results by RAS
    sort load results  ${sort_load_by_ras}  ${sort_load_by_ras_asc}  ${sort_load_by_ras_dsc}

    #Step-25: Sort Load Search Results by Order #
    sort load results  ${sort_load_by_order_num}  ${sort_load_by_order_num_asc}  ${sort_load_by_order_num_dsc}

    #Step-26: Sort Load Search Results by OAS
    sort load results  ${sort_load_by_oas}  ${sort_load_by_oas_asc}  ${sort_load_by_oas_dsc}

    #Step-27: Sort Load Search Results by Mode
    sort load results  ${sort_load_by_mode}  ${sort_load_by_mode_asc}  ${sort_load_by_mode_dsc}

    #Step-28: Sort Load Search Results by Size
    sort load results  ${sort_load_by_size}  ${sort_load_by_size_asc}  ${sort_load_by_size_dsc}

    #Step-29: Sort Load Search Results by Equip
    sort load results  ${sort_load_by_equip}  ${sort_load_by_equip_asc}  ${sort_load_by_equip_dsc}

    #Step-30: Sort Load Search Results by RLC
    sort load results  ${sort_load_by_rlc}  ${sort_load_by_rlc_asc}  ${sort_load_by_rlc_dsc}

    #Step-31: Sort Load Search Results by Customer
    sort load results  ${sort_load_by_customer}  ${sort_load_by_customer_asc}  ${sort_load_by_customer_dsc}

    #Step-32: Sort Load Search Results by Main Cust Rep
    sort load results  ${sort_load_by_maincustrep}  ${sort_load_by_maincustrep_asc}  ${sort_load_by_maincustrep_dsc}

    #Step-33: Sort Load Search Results by PU Date
    sort load results  ${sort_load_by_pudate}  ${sort_load_by_pudate_asc}  ${sort_load_by_pudate_dsc}

    #Step-34: Sort Load Search Results by Shipper
    sort load results  ${sort_load_by_shipper}  ${sort_load_by_shipper_asc}  ${sort_load_by_shipper_dsc}

    #Step-35: Sort Load Search Results by Origin City
    sort load results  ${sort_load_by_origincity}  ${sort_load_by_origincity_asc}  ${sort_load_by_origincity_dsc}

    #Step-36: Sort Load Search Results by OST
    sort load results  ${sort_load_by_ost}  ${sort_load_by_ost_asc}  ${sort_load_by_ost_dsc}

    #Step-37: Sort Load Search Results by Dist
    sort load results  ${sort_load_by_dist}  ${sort_load_by_dist_asc}  ${sort_load_by_dist_dsc}

    #Step-38: Sort Load Search Results by Stops
    sort load results  ${sort_load_by_stops}  ${sort_load_by_stops_asc}  ${sort_load_by_stops_dsc}

    #Step-39: Sort Load Search Results by Consignee
    sort load results  ${sort_load_by_consignee}  ${sort_load_by_consignee_asc}  ${sort_load_by_consignee_dsc}

    #Step-40: Sort Load Search Results by Dest City
    sort load results  ${sort_load_by_destcity}  ${sort_load_by_destcity_asc}  ${sort_load_by_destcity_dsc}

    #Step-41: Sort Load Search Results by DST
    sort load results  ${sort_load_by_dst}  ${sort_load_by_dst_asc}  ${sort_load_by_dst_dsc}

    #Step-42: Sort Load Search Results by Del Date
    sort load results  ${sort_load_by_deldate}  ${sort_load_by_deldate_asc}  ${sort_load_by_deldate_dsc}

    #Step-43: Sort Load Search Results by Carrier
    sort load results  ${sort_load_by_carrier}  ${sort_load_by_carrier_asc}  ${sort_load_by_carrier_dsc}

    #Step-44: Sort Load Search Results by Main Car Rep
    sort load results  ${sort_load_by_maincarrep}  ${sort_load_by_maincarrep_asc}  ${sort_load_by_maincarrep_dsc}

    #Step-45: Sort Load Search Results by Trailer #
    sort load results  ${sort_load_by_trailer_num}  ${sort_load_by_trailer_num_asc}  ${sort_load_by_trailer_num_dsc}

    #Step-46: Sort Load Search Results by Margin
    sort load results  ${sort_load_by_margin}  ${sort_load_by_margin_asc}  ${sort_load_by_margin_dsc}

    #Step-47: Sort Load Search Results by Max Cost
    sort load results  ${sort_load_by_maxcost}  ${sort_load_by_maxcost_asc}  ${sort_load_by_maxcost_dsc}

    #Step-48: Sort Load Search Results by Over Max
    sort load results  ${sort_load_by_overmax}  ${sort_load_by_overmax_asc}  ${sort_load_by_overmax_dsc}
