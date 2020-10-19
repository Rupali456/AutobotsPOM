*** Settings ***
Test Teardown     Close Browser
Library  SeleniumLibrary
Library  String
Library  Collections
Library     DatabaseLibrary
Library     OperatingSystem
Library     StringLibrary
Library     Builtin
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Search_Customer_Keywords.robot
Variables    ../../Page_Objects/Search_Customer.py
Variables    ../../Data/Search_Customer_Data.py

Suite Setup  Connect To Database  psycopg2  ${DBName}  ${DBUser}  ${DBPass}  ${DBHost}  ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
*** Keywords ***
*** Test Cases ***

#Customer_Facility_Relationship : TA 560
Add Customer_Facility_Relationship
  [Documentation]  As a user I can Add and verify customer facilit relationship using DB
  [Tags]  Regression Test Suite
  Login_Test

  #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
  #set selenium speed  0.1 seconds

  #Customer Search by Name
  Search customer

  input text    ${customer_name_element}    ${facility_Customer_Name}
  click element  ${search_button}
  wait until element is visible  ${list_of_customers}

  click element  ${search_results_links}
  wait until element is visible  ${customer_searched_by_name}
  page should contain element  ${customer_searched_by_name}

  scroll element into view     ${Facility_relationship_table}
  ${isfacilityRelationshipPresent}=  run keyword and return status  page should contain element  ${facility_relationship_menu_button}
  run keyword if  '${isfacilityRelationshipPresent}'=='True'  Check and delete facility relationship  ELSE  Add New facility relationship

  #Connect to Database
  ${output}=  Query  SELECT table2.code FROM public.customer_facility_relationships table1 JOIN public.facilities table2 ON table1.facility_id = table2.id WHERE table1.customer_id = '032fb551-9c85-4479-baff-ae9e150168e0' LIMIT 1;
  should be equal as strings  ${output}  ${TestData}
