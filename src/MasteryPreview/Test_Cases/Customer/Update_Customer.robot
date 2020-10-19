*** Settings ***
Test Teardown     Close Browser
Library  SeleniumLibrary
Resource  ../../Keywords/Login_Keywords.robot
Resource  ../../Keywords/Search_Customer_Keywords.robot
Variables    ../../Page_Objects/Search_Customer.py
Variables    ../../Data/Search_Customer_Data.py

*** Variables ***
*** Keywords ***
*** Test Cases ***
#Customer_Maintenance : TA 92
Update Customer Details
    [Documentation]  As a user I can update all the fields of the customer
    [Tags]  Regression Automation Suite
    Login_Test

    #Below line added only to view the Test case Flow properly. As per your requirement you can change time to wait after each step.set selenium speed
     set selenium speed  0.1 seconds
     Search customer

     input text    ${Customer_name_element}   ${Test_Customer_Name}
     wait until element is enabled  ${submit_button}
     click element  ${Submit_Button}
     wait until element is visible  ${list_of_Customer}
     click element  ${search_results_link}

    input text  ${Customer_Name_Element}  ${Edit_Customer_Name_Value}
    Erase existing values  ${website_element}
    input text  ${website_element}  ${edit_website_value}
    input text  ${search_phone_element}  ${phone_Number_to_be_change}

    Erase existing values  ${search_notes_element}
    input text  ${search_notes_element}  ${notes_value}
    Save Cust Button

    scroll element into view  ${verify_customer_name}
    wait until element is visible  ${verify_customer_name}
    page should contain element  ${verify_customer_name}
    wait until element is visible  ${Verify_Customer_Website}
    page should contain element  ${Verify_Customer_Website}
    wait until element is visible  ${verify_notes}
    page should contain element  ${verify_notes}

    Erase existing values  ${Customer_Name_Element}
    input text  ${Customer_Name_Element}  ${original_Customer_Name}
    Erase existing values  ${website_element}
    input text  ${website_element}  ${Website_Value}

    Erase existing values  ${notes_element}
    Save Cust Button

    wait until element is visible  ${Verify_Customer}
    page should contain element  ${Verify_Customer}
    wait until element is visible  ${Verify_Webiste}
    page should contain element  ${Verify_Webiste}

    #Customer Standing:
    Update Customer Standing values  ${search_status_element}   ${select_active_status_value}  ${save_customer}  ${verify_active_status}   ${success_toast}
    Update Customer Standing values  ${search_status_element}   ${Select_Inactive_Status_Value}   ${save_customer}  ${verify_inactive_status}   ${success_toast}
    Update Customer Standing values  ${search_status_element}   ${select_new_status_value}  ${save_customer}   ${verify_new_status}   ${success_toast}
    Update Customer Standing values  ${Select_Level_Element}   ${Select_Silver_Value}  ${save_customer}   ${verify_silver_level}   ${success_toast}
    Update Customer Standing values  ${Select_Level_Element}   ${Select_Gold_Value}   ${save_customer}   ${verify_gold_level}   ${success_toast}
    Update Customer Standing values  ${Select_Level_Element}   ${Select_Platinum_Value}   ${save_customer}   ${verify_platinum_level}   ${success_toast}
    Update Customer Standing values  ${Select_Level_Element}   ${Select_Bronze_Value}   ${save_customer}   ${verify_bronze_level}   ${success_toast}
    Update Customer Standing values  ${Select_Opportunity_Element}   ${Select_Silver_Value}   ${save_customer}   ${verify_silver_opportunity}   ${success_toast}
    Update Customer Standing values  ${Select_Opportunity_Element}   ${Select_Gold_Value}  ${save_customer}   ${verify_gold_opportunity}   ${success_toast}
    Update Customer Standing values  ${Select_Opportunity_Element}   ${Select_Platinum_Value}  ${save_customer}   ${verify_platinum_opportunity}   ${success_toast}
    Update Customer Standing values  ${Select_Opportunity_Element}   ${Select_Bronze_Value}  ${save_customer}   ${verify_bronze_opportunity}   ${success_toast}

    Erase existing values  ${cargo_element}
    input text  ${cargo_element}  ${cargo_value}
    Save Search Customer
    Verify Cargo

    Erase existing values  ${cargo_element}
    input text  ${cargo_element}  ${zero_value}
    Save Search Customer
    Verify Cargo

    Erase existing values  ${liability_element}
    input text  ${liability_element}  ${liability_value}
    Save Search Customer
    Verify Liability


    Erase existing values  ${liability_element}
    input text  ${liability_element}  ${zero_value}
    Save Search Customer
    Verify Liability

    Erase existing values  ${general_element}
    input text  ${general_element}  ${general_value}
    Save Search Customer
    verify general

    Erase existing values  ${general_element}
    input text  ${general_element}  ${zero_value}
    Save Search Customer
    verify general