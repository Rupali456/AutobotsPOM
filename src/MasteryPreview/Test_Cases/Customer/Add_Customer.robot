*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Add_Customer_Keywords.robot
Variables    ../../Page_Objects/Add_Customer.py
Variables    ../../Page_Objects/Common_Locators.py
Variables    ../../Data/Add_Customer_Data.py
Variables   ../../Resourses/ConfigVariables.py

*** Variables ***
*** Keywords ***
*** Test Cases ***
#Customer_Add_New : TA 89
Test Case To Add Customer
    [Documentation]  As a user I can add new Customer
    [Tags]  Regression Test Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
    set selenium speed  0.15 seconds
    Search Customer

    #General Info:
    wait until element is visible  ${Name_Element}
    ${PO_Number}    Generate Random String    6    0123456789
    ${testcase}    Catenate    ${Customer_Name_Value}    ${PO_Number}

    input text  ${name_element}  ${testcase}
    input text  ${website_element}  ${website_value}
    ${CodeVal}    Generate Random String    6    0123456789
    input text  ${code_element}  ${CodeVal}
    input text  ${phone_element}  ${phone_value}

    #Address Info:
    wait until element is visible  ${add_address_button}
    click element  ${add_address_button}
    page should contain element  ${address_modal}
    click element  ${address_type_element}
    click element  ${address_type_value_tbs}
    input text  ${street_address_element}  ${street_address}
    input text  ${street_address2_element}  ${street_address2}
    input text  ${city_element}  ${city}
    wait until element is visible  ${city_dd}
    press keys  ${city_element}  ENTER
    input text  ${postcode_element}  ${postcode}
    click element  ${country_element}
    click element  ${country_value_tbs}
    scroll element into view    ${Address_Button}
    wait until element is visible  ${Address_Button}
    wait until element is enabled  ${Address_Button}
    click element  ${Address_Button}
    page should contain element  ${list_of_address}
    Save Customer

    #Input notes:
    input text  ${notes_element}  ${notes_value}
    Save Customer

    #Customer Standing Info:
    click element  ${status_element}
    wait until element is visible  ${status_dd}
    click element  ${status_value_tbs}
    click element  ${level_element}
    wait until element is visible  ${level_dd}
    click element  ${level_value_tbs}
    click element  ${opportunity_element}
    wait until element is visible  ${opportunity_dd}
    click element  ${opportunity_value_tbs}
    Save Customer

    #Contact Info:
    click element  ${add_contact_button}
    page should contain element  ${contact_modal}
    input text  ${contact_name_element}  ${contact_name}
    click element  ${contact_type_element}
    wait until element is visible  ${contact_type_dd}
    click element  ${contact_type_value_tbs}
    ${phn}    Generate Random String    10    0123456789
    input text  ${contact_phone_element}  ${phn}
    input text  ${extension_element}  ${extension}
    ${fax_no}    Generate Random String    10    0123456789
    input text  ${faxnumber_element}  ${fax_no}
    input text  ${email_element}  ${email_value}
    click element  ${im_service_element}
    wait until element is visible  ${im_service_dd}
    click element  ${im_service_value_tbs}
    input text  ${im_user_element}  ${im_user_value}
    wait until element is enabled  ${save_contact_button}
    click element  ${save_contact_button}
    page should contain element  ${list_of_contact}
    Save Customer

    #Identifiers Info:
    click element  ${add_identifier_button}
    page should contain element  ${identifier_modal}
    click element  ${system_element}
    wait until element is visible  ${system_dd}
    click element  ${system_value_tbs}
    input text  ${id_element}  ${id_value}
    wait until element is visible  ${save_identifier_button}
    click element  ${save_identifier_button}
    page should contain element  ${list_of_identifiers}
    Save Customer

    #Insurance Info:
    input text  ${cargo_element}  ${cargo_value}
    input text  ${liability_element}  ${liability_value}
    input text  ${general_element}  ${general_value}
    Save Customer

    #Reps Info:
    click element  ${add_reps_button}
    page should contain element  ${reps_modal}
    input text  ${rep_element}  ${rep_value}
    wait until element is visible  ${rep_dd}
    click element  ${rep_value_tbs}
    click element  ${reps_type_element}
    wait until element is visible  ${reps_type_dd}
    click element  ${reps_type_value_tbs}
    click element  ${main_element}
    wait until element is enabled  ${save_reps_button}
    click element  ${save_reps_button}
    page should contain element  ${list_of_reps}
    Save Customer
