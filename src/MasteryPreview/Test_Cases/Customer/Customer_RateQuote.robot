*** Settings ***
#Test Teardown     Close Browser
Library  SeleniumLibrary
Library  String
Library  robot.libraries.DateTime
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Resource  ../../Keywords/Search_Customer_Keywords.robot
Variables    ../../Page_Objects/Search_Customer.py
Variables    ../../Data/Search_Customer_Data.py

*** Variables ***
*** Keywords ***
*** Test Cases ***
#Customer Rate Quote: TA-97
Customer Rate Quote
    [Documentation]  As a user I can add rate quotes to Customers
    [Tags]  Regression Test Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
    set selenium speed  0.2 seconds

    #Customer Search by Name
    Search Customer
    Search with customer name

    wait until element is visible  ${rate_quote_tab}
    click element  ${rate_quote_tab}

    #Step-1: Select Fuel Surcharge type value
    input text  ${origin_element}  ${origin_value_chicago}
    wait until element is visible  ${origin_value_chicago_tbs}
    click element  ${origin_value_chicago_tbs}
    input text  ${destination_element}  ${destination_value_dallas}
    wait until element is visible  ${destination_value_dallas_tbs}
    click element  ${destination_value_dallas_tbs}

    page should contain element  ${rate_line_table}
    click element  ${add_rate_line_button}
    page should contain element  ${add_rate_line_item_popup}
    click element  ${rate_line_type_element}
    wait until element is visible  ${select_rate_line_type_fuel_surcharge}
    click element  ${select_rate_line_type_fuel_surcharge}
    input text  ${rate_per_unit_element}  ${rate_per_unit_value1}
    input text  ${units_element}  ${units_value1}
    wait until element is enabled  ${add_rate_line_item_button}
    click element  ${add_rate_line_item_button}
    page should contain element  ${Rate_Line_Fuel_Surcharge}
    verify total rate of rate line items
#
#    #Step-2: Select stop off charge type value
#    Select Rate Type   ${select_rate_line_type_special_charge}  ${rate_per_unit_value2}  ${units_value2}
#    page should contain element  ${Rate_Line_Special_Charge}
#    Verify Total Rate Of Rate Line Items
#    #
#    #Step-3: Select high cargo value charge type value
#    Select Rate Type   ${select_rate_line_type_high_cargo_value}  ${rate_per_unit_value3}  ${units_value3}
#    page should contain element  ${Rate_Line_High_Cargo_Value}
#    Verify Total Rate Of Rate Line Items

#
#    #Step-4: Select lift gate type value
#    Select Rate Type   ${select_rate_line_type_lift_gate}  ${rate_per_unit_value4}  ${units_value4}
#    page should contain element  ${Rate_Line_Lift_Gate}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-5: Select Lumper/Linehaul type value
#    Select Rate Type   ${select_rate_line_type_linehaul}  ${rate_per_unit_value5}  ${units_value5}
#    page should contain element  ${Rate_Line_Linehaul}
#    Verify Total Rate Of Rate Line Items
#
#    wait until element is enabled  ${add_quote_button}
#    click element  ${add_quote_button}
#
#    wait until element is visible  ${list_of_quotes}
#    page should contain element  ${list_of_quotes}
#    page should contain element  ${origin_chicago_city_from_quotes}
#    page should contain element  ${destination_dallas_city_from_quotes}
#
#    clear origin and destination
#
#    #Step-6: Select Flat rate Type value
#    input text  ${origin_element}  ${origin_value_atlanta}
#    wait until element is visible  ${origin_value_atlanta_tbs}
#    click element  ${origin_value_atlanta_tbs}
#    input text  ${destination_element}  ${destination_value_memphis}
#    wait until element is visible  ${destination_value_memphis_tbs}
#    click element  ${destination_value_memphis_tbs}
#
#    page should contain element  ${rate_line_table}
#    Select Rate Type   ${select_rate_line_type_flat_rate}  ${rate_per_unit_value6}  ${units_value6}
#    page should contain element  ${Rate_Line_Flat_Rate}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-7: Select Truck Ordered Not Used/Tanker Endorsement
#    Select Rate Type   ${select_rate_line_type_tanker_endorsement}  ${rate_per_unit_value7}  ${units_value7}
#    page should contain element  ${Rate_Line_Tanker_Endorsement}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-8: Select Layover/Over Dimensional
#    Select Rate Type   ${select_rate_line_type_over_dimensional}  ${rate_per_unit_value8}  ${units_value8}
#    page should contain element  ${Rate_Line_Over_Dimensional}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-9: Select Hazmat/White Glove
#    Select Rate Type   ${select_rate_line_type_white_glove}  ${rate_per_unit_value9}  ${units_value9}
#    page should contain element  ${Rate_Line_White_Glove}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-10: Select Detention Loading
#    Select Rate Type   ${select_rate_line_type_detention_loading}  ${rate_per_unit_value10}  ${units_value10}
#    page should contain element  ${Rate_Line_Detention_Loading}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-11: Select Detention Unloading
#    Select Rate Type   ${select_rate_line_type_detention_unloading}  ${rate_per_unit_value11}  ${units_value11}
#    page should contain element  ${Rate_Line_Detention_Unloading}
#    Verify Total Rate Of Rate Line Items
#
#    wait until element is enabled  ${add_quote_button}
#    click element  ${add_quote_button}
#
#    wait until element is visible  ${list_of_quotes}
#    page should contain element  ${list_of_quotes}
#    page should contain element  ${origin_atlanta_city_from_quotes}
#    page should contain element  ${destination_memphis_city_from_quotes}
#
#    clear origin and destination
#
#    #Step-12: Select Linehaul Type value
#    input text  ${origin_element}  ${origin_value_phoenix}
#    wait until element is visible  ${origin_value_phoenix_tbs}
#    click element  ${origin_value_phoenix_tbs}
#    input text  ${destination_element}  ${destination_value_losangeles}
#    wait until element is visible  ${destination_value_losangeles_tbs}
#    click element  ${destination_value_losangeles_tbs}
#
#    page should contain element  ${rate_line_table}
#    Select Rate Type   ${select_rate_line_type_line_haul}  ${rate_per_unit_value12}  ${units_value12}
#    page should contain element  ${Rate_Line_Line_Haul}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-13: Select Blind Shipment Type value
#    Select Rate Type   ${select_rate_line_type_blind_shipmemt}  ${rate_per_unit_value13}  ${units_value13}
#    page should contain element  ${Rate_Line_Blind_Shipmemt}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-14: Select Bonded Carrier Type value
#    Select Rate Type   ${select_rate_line_type_bonded_carrier}  ${rate_per_unit_value14}  ${units_value14}
#    page should contain element  ${Rate_Line_Bonded_Carrier}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-15: Select Border Crossing Type value
#    Select Rate Type   ${select_rate_line_type_border_crossing}  ${rate_per_unit_value15}  ${units_value15}
#    page should contain element  ${Rate_Line_Border_Crossing}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-16: Select Customs Fees Type value
#    Select Rate Type   ${select_rate_line_type_customs_fees}  ${rate_per_unit_value16}  ${units_value16}
#    page should contain element  ${Rate_Line_Customs_Fees}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-17: Select Driver Assist Type value
#    Select Rate Type   ${select_rate_line_type_driver_assist}  ${rate_per_unit_value17}  ${units_value17}
#    page should contain element  ${Rate_Line_Driver_Assist}
#    Verify Total Rate Of Rate Line Items

#    #Step-18: Select Guaranteed Service Type value
#    Select Rate Type   ${select_rate_line_type_guaranteed_service}  ${rate_per_unit_value18}  ${units_value18}
#    page should contain element  ${Rate_Line_Guaranteed_Service}
#    Verify Total Rate Of Rate Line Items
#
#    wait until element is enabled  ${add_quote_button}
#    click element  ${add_quote_button}
#
#    wait until element is visible  ${list_of_quotes}
#    page should contain element  ${list_of_quotes}
#    page should contain element  ${origin_phoenix_city_from_quotes}
#    page should contain element  ${destination_losangeles_city_from_quotes}
#
#    clear origin and destination
#
#    #Step-19: Select Flat Rate type value
#
#    input text  ${origin_element}  ${origin_value_dallas}
#    wait until element is visible  ${origin_value_dallas_tbs}
#    click element  ${origin_value_dallas_tbs}
#    input text  ${destination_element}  ${destination_value_elpaso}
#    wait until element is visible  ${destination_value_elpaso_tbs}
#    click element  ${destination_value_elpaso_tbs}
#
#    page should contain element  ${rate_line_table}
#    Select Rate Type   ${select_rate_line_type_flat_rate}  ${rate_per_unit_value19}  ${units_value19}
#    page should contain element  ${Rate_Line_Flat_Rate}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-20: Select Limited Access type value
#    Select Rate Type   ${select_rate_line_type_limited_access}  ${rate_per_unit_value20}  ${units_value20}
#    page should contain element  ${Rate_Line_Limited_Access}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-21: Select Over Dimensional type value
#    Select Rate Type   ${select_rate_line_type_over_dimensional}  ${rate_per_unit_value21}  ${units_value21}
#    page should contain element  ${Rate_Line_Over_Dimensional}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-22: Select Tanker Endorsement type value
#    Select Rate Type   ${select_rate_line_type_tanker_endorsement}  ${rate_per_unit_value22}  ${units_value22}
#    page should contain element  ${Rate_Line_Tanker_Endorsement}
#    Verify Total Rate Of Rate Line Items
#    wait until element is enabled  ${add_quote_button}
#    click element  ${add_quote_button}
#
#    wait until element is visible  ${list_of_quotes}
#    page should contain element  ${list_of_quotes}
#    page should contain element  ${origin_dallas_city_from_quotes}
#    page should contain element  ${destination_elpaso_city_from_quotes}
#
#    clear origin and destination
#
#    #Step-23: Select Per Mile type value
#    input text  ${origin_element}  ${origin_value_laredo}
#    wait until element is visible  ${origin_value_laredo_tbs}
#    click element  ${origin_value_laredo_tbs}
#    input text  ${destination_element}  ${destination_value_seattle}
#    wait until element is visible  ${destination_value_seattle_tbs}
#    click element  ${destination_value_seattle_tbs}
#
#    page should contain element  ${rate_line_table}
#    Select Rate Type   ${select_rate_line_type_per_mile}  ${rate_per_unit_value23}  ${units_value23}
#    page should contain element  ${Rate_Line_Per_Mile}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-24: Select Team Service type value
#    Select Rate Type   ${select_rate_line_type_team_service}  ${rate_per_unit_value24}  ${units_value24}
#    page should contain element  ${Rate_Line_Team_Service}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-25: Select White Glove type value
#    Select Rate Type   ${select_rate_line_type_white_glove}  ${rate_per_unit_value25}  ${units_value25}
#    page should contain element  ${Rate_Line_White_Glove}
#    Verify Total Rate Of Rate Line Items
#
#
#    wait until element is enabled  ${add_quote_button}
#    click element  ${add_quote_button}
#
#    wait until element is visible  ${list_of_quotes}
#    page should contain element  ${list_of_quotes}
#    page should contain element  ${origin_laredo_city_from_quotes}
#    page should contain element  ${destination_seattle_city_from_quotes}
#
#    clear origin and destination
#    #Step-26: Quote without defaults
#    input text  ${origin_element}  ${origin_value_chicago}
#    wait until element is visible  ${origin_value_chicago_tbs}
#    click element  ${origin_value_chicago_tbs}
#    input text  ${destination_element}  ${destination_value_dallas}
#    wait until element is visible  ${destination_value_dallas_tbs}
#    click element  ${destination_value_dallas_tbs}
#    click element  ${Ratequote_Equipment_Element}
#    wait until element is visible  ${select_equipment_value}
#    click element  ${select_equipment_value}
#    click element  ${eff_date_element}
#    select date to next monday
#    wait until element is visible   ${quote_type_element}
#    click element  ${quote_type_element}
#    wait until element is visible  ${select_quote_type_value}
#    click element  ${select_quote_type_value}
#    click element  ${size_element}
#    wait until element is visible  ${select_size_value}
#    click element  ${select_size_value}
#
#    page should contain element  ${rate_line_table}
#    click element  ${add_rate_line_button}
#    page should contain element  ${add_rate_line_item_popup}
#    input text  ${rate_per_unit_element}  ${rate_per_unit_value26}
#    input text  ${units_element}  ${units_value26}
#    wait until element is enabled  ${add_rate_line_item_button}
#    click element  ${add_rate_line_item_button}
#    page should contain element  ${Rate_Line_Line_Haul}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-27: Select Fuel Surcharge
#    Select Rate Type   ${select_rate_line_type_fuel_surcharge}  ${rate_per_unit_value1}  ${units_value1}
#    page should contain element  ${Rate_Line_Fuel_Surcharge}
#    verify total rate of rate line items
#
#    #Step-28: Select Stop off charge/ Special Charge
#    Select Rate Type   ${select_rate_line_type_special_charge}  ${rate_per_unit_value2}  ${units_value2}
#    page should contain element  ${Rate_Line_Special_Charge}
#    Verify Total Rate Of Rate Line Items
#
#    #Step-29: Edit Line haul
#    Edit Menu Item  ${linehaul_menu_options}
#    page should contain element  ${add_rate_line_item_popup}
#    input text  ${rate_per_unit_element}  ${Edit_Rate_Per_Unit}
#    click element  ${save_rate_line_item_button}
#    verify total rate of rate line items
#
#    wait until element is enabled  ${add_quote_button}
#    wait until element is enabled  ${add_quote_button}
#    click element  ${add_quote_button}
#
#    wait until element is visible  ${list_of_quotes}
#    page should contain element  ${list_of_quotes}
#    page should contain element  ${origin_chicago_city_from_quotes}
#    page should contain element  ${destination_dallas_city_from_quotes}
#
#    #Step-30: Quote without defaults
#    click element  ${Ratequote_Equipment_Element}
#    wait until element is visible  ${select_equipment_value}
#    click element  ${select_equipment_value}
#    click element  ${eff_date_element}
#    select date to next wednesday
#    wait until element is visible   ${quote_type_element}
#    click element  ${quote_type_element}
#    wait until element is visible  ${select_quote_type_value}
#    click element  ${select_quote_type_value}
#
#    click element  ${add_rate_line_button}
#    page should contain element  ${add_rate_line_item_popup}
#    input text  ${rate_per_unit_element}  ${rate_per_unit_value30}
#    input text  ${units_element}  ${units_value26}
#    wait until element is enabled  ${add_rate_line_item_button}
#    click element  ${add_rate_line_item_button}
#    page should contain element  ${Rate_Line_Line_Haul}
#    Verify Total Rate Of Rate Line Items
#    input text  ${notes_element}  ${notes_value}

#    #Step-31: Quote without defaults - Select Fuel Surcharge
#    Select Rate Type   ${select_rate_line_type_fuel_surcharge}  ${rate_per_unit_value31}  ${units_value31}
#    page should contain element  ${Rate_Line_Fuel_Surcharge}
#    Verify Total Rate Of Rate Line Items

#    #Step-32: Quote without defaults - Select Stop off charge/ Special Charge
#    Select Rate Type   ${select_rate_line_type_special_charge}  ${rate_per_unit_value2}  ${units_value2}
#    page should contain element  ${Rate_Line_Special_Charge}
#    Verify Total Rate Of Rate Line Items
#
#    wait until element is enabled  ${add_quote_button}
#    wait until element is visible  ${add_quote_button}
#    click element  ${add_quote_button}
#
#    wait until element is visible  ${list_of_quotes}
#    page should contain element  ${list_of_quotes}
#    page should contain element  ${origin_chicago_city_from_quotes}
#    page should contain element  ${destination_dallas_city_from_quotes}

#    #Step-33: Remove qoute from qoute table
#    wait until element is visible  ${quote_menu_button}
#    Delete Quote

#    #Step-35,36: Click on search button of Existing Qoute
#    execute javascript  window.scrollTo(100,1000)
#    scroll element into view  ${existing_quotes_table}
#    click element       ${search_button_existing_quote}
#    scroll element into view  ${existing_quote_list}
#    wait until element is visible   ${existing_quote_list}

#    #Step-37: Check Only This Customer checkbox
#    ${onlyThisCustomer}=  get element attribute  ${only_this_customer_checkbox}  value
#    run keyword if  "${onlyThisCustomer}"=="false"  click element  ${only_this_customer_checkbox}
#    click element       ${search_button_existing_quote}
#    ${QuotedBy}=  get text  ${quotedby_element}
#    Verify This Customer Existing List  ${QuotedBy}

#    #Step-38: Uncheck Only This Customer checkbox and check expired checkbox
#    ${onlyThisCustomer}=  get element attribute  ${only_this_customer_checkbox}  value
#    run keyword if  "${onlyThisCustomer}"=="true"  click element  ${only_this_customer_checkbox}
#    ${expired}=  get element attribute  ${expired_checkbox}  value
#    run keyword if  "${expired}"=="false"  click element  ${expired_checkbox}
#    click element  ${search_button_existing_quote}
#    wait until element is visible    ${existing_quote_list}

#    #Step-39: Check both Expired and Only This Customer checkbox
#    ${onlyThisCustomer}=  get element attribute  ${only_this_customer_checkbox}  value
#    run keyword if  "${onlyThisCustomer}"=="false"  click element  ${only_this_customer_checkbox}
#    ${expired}=  get element attribute  ${expired_checkbox}  value
#    run keyword if  "${expired}"=="false"  click element  ${expired_checkbox}
#    click element       ${search_button_existing_quote}
#    wait until element is visible    ${existing_quote_list}

    #New Session
    #Step-40: New Session - Search Existing Quotes
    close browser
    login_test
    wait until element is visible  ${header_customer_element}
    click element  ${header_customer_element}
    page should contain element  ${search_customer_element}
    click element  ${search_customer_element}
    wait until page contains  ${search_customer_text}
    page should contain  ${search_customer_text}

    #Customer Search by Name
    Search with customer name

    wait until element is visible  ${rate_quote_tab}
    click element  ${rate_quote_tab}
    input text  ${origin_element}  ${Origin_Value_Chicago}
    wait until element is visible  ${origin_value_chicago_tbs}
    click element  ${origin_value_chicago_tbs}

    input text  ${destination_element}  ${Destination_Value_Dallas}
    wait until element is visible  ${destination_value_dallas_tbs}
    click element  ${destination_value_dallas_tbs}
    execute javascript  window.scrollTo(100,1000)
    scroll element into view  ${existing_quotes_table}
    click element       ${search_button_existing_quote}
    scroll element into view  ${existing_quote_list}
    wait until element is visible   ${existing_quote_list}

    #Step-41: New Session - Check Only This Customer
    ${onlyThisCustomer}=  get element attribute  ${only_this_customer_checkbox}  value
    run keyword if  "${onlyThisCustomer}"=="false"  click element  ${only_this_customer_checkbox}
    click element       ${search_button_existing_quote}
    ${QuotedBy}=  get text  ${quotedby_element}
    Verify This Customer Existing List  ${QuotedBy}

    #Step-42: New Session - Uncheck Only This Customer and check Expired
    ${onlyThisCustomer}=  get element attribute  ${only_this_customer_checkbox}  value
    run keyword if  "${onlyThisCustomer}"=="true"  click element  ${only_this_customer_checkbox}
    ${expired}=  get element attribute  ${expired_checkbox}  value
    run keyword if  "${expired}"=="false"  click element  ${expired_checkbox}
    click element  ${search_button_existing_quote}
    wait until element is visible    ${existing_quote_list}

    #Step-43: New Session - Check both Only This Customer and Expired
    ${onlyThisCustomer}=  get element attribute  ${only_this_customer_checkbox}  value
    run keyword if  "${onlyThisCustomer}"=="false"  click element  ${only_this_customer_checkbox}
    ${expired}=  get element attribute  ${expired_checkbox}  value
    run keyword if  "${expired}"=="false"  click element  ${expired_checkbox}
    click element       ${search_button_existing_quote}
    wait until element is visible    ${existing_quote_list}

    #Step-44: Edit the Existing quote
    ${originvalue}=  get text  ${origin_value_existing_quote}
    ${destinationvalue}=  get text  ${destination_value_existing_quote}
    click element  ${origin_value_existing_quote}
    Verify Existing Qoute Populated in Rate Quote Builder  ${originvalue}  ${destinationvalue}

    #Step-45: Edit the date to next friday (Change date to upcoming friday while running test case)
    click element  ${eff_date_element}
    select date to next friday
    execute javascript  window.scrollTo(100,1000)
    scroll element into view  ${existing_quotes_table}
    scroll element into view  ${search_button_existing_quote}
    click element  ${search_button_existing_quote}

    #Step-46: Close current tab and navigate to same customer to edit existing quotes
    close browser
    login_test
#   Search customer
    wait until element is visible  ${select_cust}
    click element       ${select_cust}
    click element       ${Select_Tab_FromCust}
    Search with customer name

    wait until element is visible  ${rate_quote_tab}
    click element  ${rate_quote_tab}
    input text  ${origin_element}  ${Origin_Value_Chicago}
    wait until element is visible  ${origin_value_chicago_tbs}
    click element  ${origin_value_chicago_tbs}

    input text  ${destination_element}  ${Destination_Value_Dallas}
    wait until element is visible  ${destination_value_dallas_tbs}
    click element  ${destination_value_dallas_tbs}
    execute javascript  window.scrollTo(100,1000)
    scroll element into view  ${existing_quotes_table}
    ${onlythiscustomer}=  get element attribute  ${only_this_customer_checkbox}  value
    run keyword if  "${onlythiscustomer}"=="false"  click element  ${only_this_customer_checkbox}
    click element       ${search_button_existing_quote}
    wait until element is visible   ${existing_quote_list}

    #Step-47: Input Chicago in origin and Dallas in destination and search in exiting quotes
    clear origin and destination
    input text  ${origin_element}  ${Origin_Value_Chicago}
    wait until element is visible  ${origin_value_chicago_tbs}
    click element  ${origin_value_chicago_tbs}
    input text  ${destination_element}  ${Destination_Value_Dallas}
    wait until element is visible  ${destination_value_dallas_tbs}
    click element  ${destination_value_dallas_tbs}

    #Uncheck 'Expired' and 'Only This Customer'
    execute javascript  window.scrollTo(100,1000)
    scroll element into view  ${existing_quotes_table}
    ${onlyThisCustomer}=  get element attribute  ${only_this_customer_checkbox}  value
    run keyword if  "${onlyThisCustomer}"=="true"  click element  ${only_this_customer_checkbox}
    ${expired}=  get element attribute  ${expired_checkbox}  value
    run keyword if  "${expired}"=="true"  click element  ${expired_checkbox}
    click element       ${search_button_existing_quote}
    wait until element is visible  ${existing_quote_list}

    #Step-48: Change ODH and DDH to 100 and search existing quotes
    set selenium speed  0.9 seconds
    scroll element into view  ${existing_quotes_table}
    Clear ODH_DDH Origin and Destination
    input text  ${ODH_element}  ${Change_ODH_Value}
    input text  ${DDH_element}  ${Change_DDH_Value}
    click element  ${search_button_existing_quote}
    #wait until element is visible  ${no_existing_quotes_text}
    #page should contain element  ${no_existing_quotes_text}
    wait until element is visible   ${existing_quote_list}

    #Step-49: Leave ODH and DDH at 100 and check Expired
    ${expired}=  get element attribute  ${expired_checkbox}  value
    run keyword if  "${expired}"=="false"  click element  ${expired_checkbox}
    click element       ${search_button_existing_quote}
    wait until element is visible   ${existing_quote_list}

    #Step-50: Leave ODH and DDH at 100 and Expired checked, check Only This Customer
    ${onlythiscustomer}=  get element attribute  ${only_this_customer_checkbox}  value
    run keyword if  "${expired}"=="false"  click element  ${only_this_customer_checkbox}
    click element       ${search_button_existing_quote}
    wait until element is visible   ${existing_quote_list}

    #Step-51: Leave ODH and DDH at 100 and Only This Customer checked, uncheck Expired
    ${expired}=  get element attribute  ${expired_checkbox}  value
    run keyword if  "${expired}"=="true"  click element  ${expired_checkbox}
    click element       ${search_button_existing_quote}
    wait until element is visible   ${existing_quote_list}

