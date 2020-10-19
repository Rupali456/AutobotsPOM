*** Settings ***
Test Teardown     Close Browser
Library  SeleniumLibrary
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Search_Customer_Keywords.robot
Variables    ../../Page_Objects/Search_Customer.py

*** Variables ***
*** Keywords ***
*** Test Cases ***
#Search Customer Using all parameters : TA 49
Search Customer Using All Parameters
  [Documentation]  As a user I can search Customers using All fields
  [Tags]  Regression Test Suite
  Login_Test

  #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
  set selenium speed  0.2 seconds
  Search customer
  Clear Search

Search Customer by Name
  [Documentation]  search Customers using Name
  [Tags]  Regression Test Suite
  Login_Test
  Search customer
  Search with customer name
  wait until element is visible  ${customer_search_by_code}
  page should contain element  ${customer_search_by_code}

#If data is not available for perticular phone number, test case will fail
Search Customer by Phone
  [Documentation]  search Customers using Phone
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer

  wait until element is enabled  ${phone_element}
  input text    ${phone_element}    ${phone}
  List of Customer

  click element  ${search_results_links}
  wait until element is visible  ${customer_searched_by_phone}
  page should contain element  ${customer_searched_by_phone}

#If data is not available for New Status, test case will fail
Search Customer by New Status
  [Documentation]  search Customers using New Status
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer
  Search Customers with parameters   ${status_element}  ${select_status_new}
  List of Customer
  page should contain element  ${customer_searched_by_new_status}
  Clear Search

#If data is not available for Active Status, test case will fail
Search Customer by Active Status
  [Documentation]  search Customers using Active Status
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer
  Search Customers with parameters   ${status_element}  ${select_status_active}
  List of Customer
  page should contain element  ${customer_searched_by_active_status}
  Clear Search

#If data is not available for Active Status, test case will fail
Search Customer by InActive Status
  [Documentation]  search Customers using InActive Status
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer
  Search Customers with parameters   ${status_element}  ${select_status_inactive}
  List of Customer
  page should contain element  ${customer_searched_by_inactive_status}
  Clear Search

#If data is not available for Bronze Level, test case will fail
Search Customer by Bronze Level
  [Documentation]  search Customers using Bronze Level
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer
  Search Customers with parameters   ${level_element}  ${select_level_bronze}
  List of Customer
  page should contain element  ${customer_searched_by_bronze_level}
  Clear Search

#If data is not available for Silver Level, test case will fail
Search Customer by Silver Level
  [Documentation]  search Customers using Silver Level
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer
  Search Customers with parameters   ${level_element}  ${select_level_silver}
  List of Customer
  page should contain element  ${customer_searched_by_silver_level}
  Clear Search

#If data is not available for Gold Level, test case will fail
Search Customer by Gold Level
  [Documentation]  search Customers using Gold Level
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer
  Search Customers with parameters  ${level_element}  ${select_level_gold}
  List of Customer
  page should contain element  ${customer_searched_by_gold_level}
  Clear Search

#If data is not available for platinum Level, test case will fail
Search Customer by platinum Level
  [Documentation]  search Customers using platinum Level
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer
  Search Customers with parameters  ${level_element}  ${select_level_platinum}
  List of Customer
  page should contain element  ${customer_searched_by_platinum_level}
  Clear Search

#If data is not available for city, test case will fail
Search Customer by city
  [Documentation]  search Customers using city
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer

  wait until element is enabled  ${city_element}
  input text    ${city_element}  ${city}
  wait until element is visible  ${city_dd}
  Press Keys    ${City_Element}    ENTER

  input text  ${radius_element}  ${radius}
  List of Customer
  page should contain element  ${customer_searched_by_city}
  Clear Search

#If data is not available for Reps, test case will fail
Search Customer by Reps
  [Documentation]  search Customers using Reps
  [Tags]  Regression Test Suite
  Login_Test
  go to   ${url}
  Search customer

  wait until element is enabled  ${reps_element}
  input text    ${Reps_Element}  ${reps_value}
  wait until element is visible  ${reps_value_tbs}
  click element  ${reps_value_tbs}

  List of Customer
  page should contain element  ${customer_searched_by_reps}

