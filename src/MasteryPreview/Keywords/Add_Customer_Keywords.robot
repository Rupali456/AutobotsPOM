*** Settings ***
Library  SeleniumLibrary
Variables  ../Page_Objects/Add_Customer.py

*** Keywords ***
Save Customer
    wait until element is enabled  ${save_customer}
    click element  ${save_customer}
    wait until page does not contain  ${success_toast}

Search customer
  wait until element is visible  ${select_cust}
  click element       ${select_cust}
  click element       ${Select_Tab_FromCust}

