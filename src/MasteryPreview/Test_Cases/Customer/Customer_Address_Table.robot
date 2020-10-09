*** Settings ***
#Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Variables    ../../Page_Objects/CustomerSearch.py

*** Variables ***
*** Keywords ***

*** Test Cases ***
#Customer_Maintenance : TA 92
Add Edit and Delete Addresses from Address Table for Customer
  [Documentation]  As a user I can update address for customers
  [Tags]  Regression Test Suite
  Login_Test

  #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
  set selenium speed  0.1 seconds

  wait until element is visible  ${select_cust}
  click element       ${select_cust}
  click element       ${Select_Tab_FromCust}

  #Customer Search by Name
  input text    ${customer_name_element}    ${customer_name}
  click element  ${search_button}
  wait until element is visible  ${list_of_customers}

  click element  ${search_results_links}
  wait until element is visible  ${customer_searched_by_name}
  page should contain element  ${customer_searched_by_name}

   #Edit Address :
  Edit Menu Item  ${edit_address_menu_button}
  click element  ${address_type_element}
  wait until element is visible  ${edit_address_type_value_tbs}
  click element  ${edit_address_type_value_tbs}

  ${street1Value}=  get element attribute  ${street_address_element}  value
  ${street1_value_backspaces_count}=    Get Length      ${street1Value}
  Run Keyword If    """${street1Value}""" != ''
  ...     Repeat Keyword  ${street1_value_backspaces_count}  Press Key  ${street_address_element}   \ue003

  Input Text    ${street_address_element}   ${edit_street_address}

  ${street2Value}=  get element attribute  ${street_address2_element}  value
  ${street2_value_backspaces_count}=    Get Length      ${street2Value}
  Run Keyword If    """${street2Value}""" != ''
  ...     Repeat Keyword  ${street2_value_backspaces_count}  Press Key  ${street_address2_element}   \ue003

  Input Text    ${street_address2_element}  ${edit_street_address2}

  ${cityValue}=  get element attribute  ${City_Element}  value
  ${city_value_backspaces_count}=    Get Length      ${cityValue}
  Run Keyword If    """${cityValue}""" != ''
  ...     Repeat Keyword  ${city_value_backspaces_count}  Press Key  ${City_Element}   \ue003

  input text    ${city_element}  ${edit_city}
  wait until element is visible  ${edit_city_tbs}
  click element  ${edit_city_tbs}

  ${PostCodeValue}=  get element attribute  ${postCode_element}  value
  ${PostCode_value_backspaces_count}=    Get Length      ${PostCodeValue}
  Run Keyword If    """${PostCodeValue}""" != ''
  ...     Repeat Keyword  ${PostCode_value_backspaces_count}  Press Key  ${postCode_element}   \ue003

  Input Text    ${postCode_element}  ${edit_postcode}

  click element  ${country_element}
  wait until element is visible  ${edit_country_value_tbs}
  click element  ${edit_country_value_tbs}
  #check checkbox  ${main_checkbox}
  scroll element into view    ${Save_Customer_Button}
  wait until element is enabled  ${Save_Customer_Button}
  click element  ${Save_Customer_Button}
  wait until element is not visible  ${success_toast}

  #Delete Address :
  Delete Menu Item   ${delete_address_menu_button}
  wait until element is not visible  ${success_toast}