*** Settings ***
#Test Teardown     Close Browser
Library  SeleniumLibrary
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Search_Customer_Keywords.robot
Variables    ../../Page_Objects/Search_Customer.py

*** Variables ***
*** Keywords ***
*** Test Cases ***
    #Customer Search (Quick) : TA 31
Search Customer Using Name and Code
  [Documentation]  As a user I can search all Customers using Name and Code
  [Tags]  Regression Test Suite
  Login_Test

  #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
  set selenium speed  0.1 seconds

  wait until element is visible  ${quick_search_dropdown}

  #Customer Searched by Name
  click element  ${quick_search_dropdown}
  wait until element is visible  ${select_customer_quick_search}
  click element  ${select_customer_quick_search}

  input text  ${quick_search_textbox}   ${Customer_Name}
  wait until element is visible  ${customer_name_tbs}
  click element  ${customer_name_tbs}

  wait until element is visible  ${customer_searched_name}
  page should contain element  ${customer_searched_name}

  #Customer Searched by Code
  click element  ${quick_search_dropdown}
  wait until element is visible  ${select_customer_quick_search}
  click element  ${select_customer_quick_search}

  input text  ${quick_search_textbox}   ${code}
  wait until element is visible   ${customer_code_tbs}
  click element  ${customer_code_tbs}

  wait until element is visible  ${customer_searched_by_code}
  page should contain element  ${customer_searched_by_code}

