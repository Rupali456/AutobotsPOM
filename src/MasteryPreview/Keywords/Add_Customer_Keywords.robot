*** Settings ***
Library  SeleniumLibrary
Variables  ../../Page_Objects/Add_Customer.py

*** Keywords ***
Save Customer
    wait until element is enabled  ${save_customer}
    click element  ${save_customer}
    wait until page does not contain  ${success_toast}

