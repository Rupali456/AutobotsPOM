*** Settings ***
#Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Variables    ../../Page_Objects/Edit_Customer.py
Variables    ../../Data/Customer_Data.py

*** Variables ***
*** Keywords ***
*** Test Cases ***
#Customer_Maintenance : TA 92
Add Edit and Delete Addresses from Address Table for Customer
  [Documentation]  As a user I can update address for customers
  [Tags]  Regression Test Suite
  Login_Test

  #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
  #set selenium speed  0.1 seconds

  wait until element is visible  ${select_cust}
  click element       ${select_cust}
  click element       ${Select_Tab_FromCust}

  #Customer Search by Name
  input text    ${Customer_name_element}   ${Address_Customer_Name}
  wait until element is enabled  ${submit_button}
  click element  ${Submit_Button}
  wait until element is visible  ${list_of_Customer}
  click element  ${search_results_link}

  #Edit Address :
  Edit Menu Item  ${edit_address_menu_button}
  click element  ${address_type_element}
  wait until element is visible  ${edit_address_type_value_tbs}
  click element  ${edit_address_type_value_tbs}

  ${street1Value}=  get element attribute  ${street_address_element}  value
  ${street1_value_backspaces_count}=    Get Length      ${street1Value}
  Run Keyword If    """${street1Value}""" != ''
  ...     Repeat Keyword  ${street1_value_backspaces_count}  Press Keys  ${street_address_element}   \ue003

  Input Text    ${street_address_element}   ${edit_street_address}

  ${street2Value}=  get element attribute  ${street_address2_element}  value
  ${street2_value_backspaces_count}=    Get Length      ${street2Value}
  Run Keyword If    """${street2Value}""" != ''
  ...     Repeat Keyword  ${street2_value_backspaces_count}  Press Keys  ${street_address2_element}   \ue003

  Input Text    ${street_address2_element}  ${edit_street_address2}

  ${cityValue}=  get element attribute  ${City_Element}  value
  ${city_value_backspaces_count}=    Get Length      ${cityValue}
  Run Keyword If    """${cityValue}""" != ''
  ...     Repeat Keyword  ${city_value_backspaces_count}  Press Keys  ${City_Element}   \ue003

  input text    ${city_element}  ${edit_city}
  wait until element is visible  ${edit_city_tbs}
  click element  ${edit_city_tbs}

  ${PostCodeValue}=  get element attribute  ${postCode_element}  value
  ${PostCode_value_backspaces_count}=    Get Length      ${PostCodeValue}
  Run Keyword If    """${PostCodeValue}""" != ''
  ...     Repeat Keyword  ${PostCode_value_backspaces_count}  Press Keys  ${postCode_element}   \ue003

  Input Text    ${postCode_element}  ${edit_postcode}

  click element  ${country_element}
  wait until element is visible  ${edit_country_value_tbs}
  click element  ${edit_country_value_tbs}
  scroll element into view    ${Save_Customer_Button}
  wait until element is enabled  ${Save_Customer_Button}
  click element  ${Save_Customer_Button}
  wait until element is not visible  ${success_toast}

  #Delete Address :
  Delete Menu Item   ${delete_address_menu_button}
  wait until element is not visible  ${success_toast}

  #Address Details
  click element  ${add_address_button}
  click element  ${address_type_element}
  wait until element is visible  ${address_type_value_tbs}
  click element  ${address_type_value_tbs}

  Input Text    ${street_address_element}   ${street_address}
  Input Text    ${street_address2_element}  ${street_address2}
  input text    ${city_element}  ${city}
  wait until element is visible  ${city_tbs}
  click element  ${city_tbs}
  Input Text    ${postCode_element}  ${postcode}

  click element  ${country_element}
  wait until element is visible  ${country_value_tbs}
  click element  ${country_value_tbs}

  scroll element into view    ${Add_Customer_Button}
  wait until element is visible     ${Add_Customer_Button}
  wait until element is enabled  ${Add_Customer_Button}
  click element  ${Add_Customer_Button}
  wait until element is not visible  ${success_toast}

  #Sort Address by Type
  ${AddressesTypeList}=  Get List Before Sorting  ${Addresses_Type_Column}
  click element  ${sort_address_by_type}
  wait until element is visible  ${list_of_addresses}
  wait until element is visible  ${sort_address_by_type_asc}
  page should contain element  ${sort_address_by_type_asc}
  Verify Sorted Column is in Ascending Order  ${AddressesTypeList}  ${Addresses_Type_Column}
  click element  ${sort_address_by_type}
  wait until element is visible  ${list_of_addresses}
  wait until element is visible  ${sort_address_by_type_dsc}
  page should contain element  ${sort_address_by_type_dsc}
  Verify Sorted Column is in Descending Order  ${AddressesTypeList}  ${Addresses_Type_Column}

  #Sort Address by Address
  ${AddressesAddressList}=  Get List Before Sorting  ${Addresses_Address_Column}
  click element  ${sort_address_by_address}
  wait until element is visible  ${list_of_addresses}
  wait until element is visible  ${sort_address_by_address_asc}
  page should contain element  ${sort_address_by_address_asc}
  Verify Sorted Column is in Ascending Order  ${AddressesAddressList}  ${Addresses_Address_Column}
  click element  ${sort_address_by_address}
  wait until element is visible  ${list_of_addresses}
  wait until element is visible  ${sort_address_by_address_dsc}
  page should contain element  ${sort_address_by_address_dsc}
  Verify Sorted Column is in Descending Order  ${AddressesAddressList}  ${Addresses_Address_Column}

  #Sort Address by Location
  ${AddressesLocationList}=  Get List Before Sorting  ${Addresses_Location_Column}
  click element  ${sort_address_by_location}
  wait until element is visible  ${list_of_addresses}
  wait until element is visible  ${sort_address_by_location_asc}
  page should contain element  ${sort_address_by_location_asc}
  Verify Sorted Column is in Ascending Order  ${AddressesLocationList}  ${Addresses_Location_Column}
  click element  ${sort_address_by_location}
  wait until element is visible  ${list_of_addresses}
  wait until element is visible  ${sort_address_by_location_dsc}
  page should contain element  ${sort_address_by_location_dsc}
  Verify Sorted Column is in Descending Order  ${AddressesLocationList}  ${Addresses_Location_Column}

  #Sort Address by Main
  ${AddressesMainList}=  Get List Before Sorting  ${Addresses_Main_Column}
  click element  ${sort_address_by_main}
  wait until element is visible  ${list_of_addresses}
  wait until element is visible  ${sort_address_by_main_asc}
  page should contain element  ${sort_address_by_main_asc}
  Verify Sorted Column is in Ascending Order  ${AddressesMainList}  ${Addresses_Main_Column}
  click element  ${sort_address_by_main}
  wait until element is visible  ${list_of_addresses}
  wait until element is visible  ${sort_address_by_main_dsc}
  page should contain element  ${sort_address_by_main_dsc}
  Verify Sorted Column is in Descending Order  ${AddressesMainList}  ${Addresses_Main_Column}