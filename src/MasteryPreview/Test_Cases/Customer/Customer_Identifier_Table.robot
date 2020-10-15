*** Settings ***
Test Teardown     Close Browser
Library         SeleniumLibrary
Library           String
Library         Collections
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Resource  ../../Keywords/Edit_Customer_Keywords.robot
Variables    ../../Page_Objects/Edit_Customer.py
Variables    ../../Data/Customer_Data.py

*** Variables ***
*** Keywords ***
*** Test Cases ***

#Customer_Maintenance : TA 92
Add Edit and Delete Identifires for customer
  [Documentation]  As a user I can update identifires for customer
  [Tags]  Regression Test Suite
  Login_Test

  #Below line added only to view the Test case Flow properly. As per your requirement you can add time to wait after each step.set selenium speed
  set selenium speed  0.1 seconds

  wait until element is visible  ${select_cust}
  click element       ${select_cust}
  click element       ${Select_Tab_FromCust}

  #Customer Search by Name
  #input text    ${Customer_name_element}   ${Address_Customer_Name}
  input text    ${Customer_name_element}   ${Customer_Name}
  wait until element is enabled  ${submit_button}
  click element  ${Submit_Button}
  wait until element is visible  ${list_of_Customer}
  click element  ${search_results_link}

  #Edit Identifier details
  wait until element is visible  ${Identifier_Menu_Button}
  Edit Menu Item  ${edit_identifier_menu_button}
  click element  ${identifier_system_type}
  wait until element is visible  ${identifier_type_value_tbs}
  click element  ${identifier_Type_Edit_Value_TBS}
  input text  ${ID}  ${Edit_ID_Value}
  Click Element  ${save_identifier_element}
  Save_identifier_Button

   #Add new Identifier
  click element  ${Add_Identifier_Button}
  click element  ${identifier_system_type}
  wait until element is visible  ${identifier_type_value_tbs}
  click element  ${identifier_type_value_tbs}
  input text  ${ID}  ${ID_Value}

  Click Element  ${save_identifier_element}
  Save_identifier_Button

  #Delete Identifier Details
  wait until element is visible  ${Identifier_menu_button}
  Delete Menu Item  ${delete_identifier_menu_button}
  Save_identifier_Button

  #Sort identifiers by System
  ${SystemList}=  Get List Before Sorting  ${System_Column}
  click element  ${sort_identifiers_by_system}
  wait until element is visible  ${list_of_identifiers}
  wait until element is visible  ${sort_identifiers_by_system_asc}
  page should contain element  ${sort_identifiers_by_system_asc}
  Verify Sorted Column is in Ascending Order  ${SystemList}  ${System_Column}
  click element  ${sort_identifiers_by_system}
  wait until element is visible  ${list_of_identifiers}
  wait until element is visible  ${sort_identifiers_by_system_dsc}
  page should contain element  ${sort_identifiers_by_system_dsc}
  Verify Sorted Column is in Descending Order  ${SystemList}  ${System_Column}

  #Sort identifires by ID
  ${IDList}=  Get List Before Sorting  ${ID_Column}
  click element  ${Sort_identifiers_By_ID}
  wait until element is visible  ${List_Of_Identifiers}
  wait until element is visible  ${Sort_identifiers_By_ID_ASC}
  page should contain element  ${Sort_identifiers_By_ID_ASC}
  Verify Sorted Column is in Ascending Order  ${IDList}  ${ID_Column}
  click element  ${Sort_identifiers_By_ID}
  wait until element is visible  ${List_Of_identifiers}
  wait until element is visible  ${Sort_identifiers_By_ID_DSC}
  page should contain element  ${Sort_identifiers_By_ID_DSC}
  Verify Sorted Column is in Descending Order  ${IDList}  ${ID_Column}