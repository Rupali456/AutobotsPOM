*** Settings ***
Library  SeleniumLibrary
Variables  ../Page_Objects/Edit_Customer.py

*** Keywords ***
Save Customer
    scroll element into view  ${Save_Customer_Button}
    click element  ${Save_Customer_Button}
    wait until page contains element  ${success_toast}
    wait until page does not contain  ${success_toast}

Save Credit
    click element  ${Save_Credit}
    wait until page contains element  ${success_toast}
    wait until page does not contain element  ${success_toast}