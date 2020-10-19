*** Settings ***
Test Teardown     Close Browser
Library         SeleniumLibrary
Library           String
Library         Collections
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Common_Keywords.robot
Resource  ../../Keywords/search_Customer_Keywords.robot
Variables    ../../Page_Objects/Search_Customer.py
Variables    ../../Data/Search_Customer_Data.py

*** Variables ***
*** Keywords ***
*** Test Cases ***
#Customer_Maintenance : TA 92
Add Edit and Delete from Reps Table for customer
  [Documentation]  As a user I can update Reps for customer
  [Tags]  Regression Test Suite
  Login_Test

  #Below line added only to view the Test case Flow properly. As per your requirement you can add time to wait after each step.set selenium speed
  set selenium speed  0.1 seconds

  #Customer Search by Name
  Search customer
  Customer Search by Name

  #Add Reps Details
  click element  ${add_reps_button}
  Input Text    ${add_new_rep}   ${add_rep}
  wait until element is visible   ${SuggestBox}
  click element   ${SuggestBox}

  wait until element is visible     ${reps_type_element}
  click element  ${reps_type_element}
  wait until element is visible  ${reps_type_value_tbs}
  click element  ${reps_type_value_tbs}

  Click Element  ${save_reps_element}
  Save_cust_Button
  page should contain element  ${edit_Reps_menu_button}

  #Edit Reps details
  wait until element is visible  ${reps_menu_button}
  Edit Menu Item  ${edit_Reps_menu_button}
  click element  ${reps_type_element}
  wait until element is visible  ${reps_type_value_tbs}
  click element  ${Reps_Type_Edit_Value_TBS}

  Click Element  ${save_reps_element}
  Save_cust_Button
  page should not contain element  ${edit_Reps_menu_button}

  #Delete Reps Details
  wait until element is visible  ${reps_menu_button}
  Delete Menu Item  ${Delete_Reps_Menu_Button}
  Save_cust_Button
  page should not contain element  ${delete_Reps_menu_button}

  #Sort by Reps
  ${RepsList}=  Get List Before Sorting  ${Reps_Column}
  Sort ASC  ${sort_reps}  ${list_of_reps}  ${sort_reps_by_reps_asc}
  Verify Sorted Column is in Ascending Order  ${RepsList}  ${Reps_Column}
  Sort DSC  ${sort_reps}  ${list_of_reps}  ${sort_reps_by_reps_dsc}
  Verify Sorted Column is in Descending Order  ${RepsList}  ${Reps_Column}

  #Sort Reps by Type
  ${TypeList}=  Get List Before Sorting  ${Reps_Type_Column}
  Sort ASC  ${sort_reps_by_type}  ${list_of_reps}  ${sort_reps_by_type_asc}
  Verify Sorted Column is in Ascending Order  ${TypeList}  ${Reps_Type_Column}
  Sort DSC  ${sort_reps_by_type}  ${list_of_reps}  ${sort_reps_by_type_dsc}
  Verify Sorted Column is in Descending Order  ${TypeList}  ${Reps_Type_Column}

  #Sort Reps by Main
  ${MainList}=  Get List Before Sorting  ${Reps_Main_Column}
  Sort ASC  ${sort_reps_by_main}  ${list_of_reps}  ${sort_reps_by_main_asc}
  Verify Sorted Column is in Ascending Order  ${MainList}  ${Reps_Main_Column}
  Sort DSC  ${sort_reps_by_main}  ${list_of_reps}  ${sort_reps_by_main_dsc}
  Verify Sorted Column is in Descending Order  ${MainList}  ${Reps_Main_Column}