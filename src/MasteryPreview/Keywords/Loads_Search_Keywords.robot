*** Settings ***
Library  SeleniumLibrary
Resource  ../../Keywords/Common_Keywords.robot
Variables  ../../Page_Objects/Load_Search_Locators.py
Variables  ../../Page_Objects/Home_Page_Locators.py
Variables  ../../Data/Loads_Search.py

*** Keywords ***
Verify Origin City
    @{originCityState}=  split string  ${origin_value}  ,${SPACE}
    wait until element is visible  xpath=//div[@data-cellheader='Origin City' and contains(@title,'${originCityState[0]}')]
    page should contain element  xpath=//div[@data-cellheader='Origin City' and contains(@title,'${originCityState[0]}')]
    wait until element is visible  xpath=//div[@data-cellheader='OST' and contains(@title,'${originCityState[1]}')]
    page should contain element  xpath=//div[@data-cellheader='OST' and contains(@title,'${originCityState[1]}')]

Verify Destination City
    @{destinationCityState}=  split string  ${destination_value}  ,${SPACE}
    wait until element is visible  xpath=//div[@data-cellheader='Dest City' and contains(@title,'${destinationCityState[0]}')]
    page should contain element  xpath=//div[@data-cellheader='Dest City' and contains(@title,'${destinationCityState[0]}')]
    wait until element is visible  xpath=//div[@data-cellheader='DST' and contains(@title,'${destinationCityState[1]}')]
    page should contain element  xpath=//div[@data-cellheader='DST' and contains(@title,'${destinationCityState[1]}')]

Deselect RAS Values
    click element  ${ras_element}
    deselect value from dropdown if checkbox is checked  ${active_checkbox}  ${select_active_ras}
    deselect value from dropdown if checkbox is checked  ${hold_checkbox}  ${select_hold_ras}
    deselect value from dropdown if checkbox is checked  ${uncommitted_checkbox}  ${select_uncommitted_ras}
    deselect value from dropdown if checkbox is checked  ${cancelled_checkbox}  ${select_cancelled_ras}
    deselect value from dropdown if checkbox is checked  ${incomplete_checkbox}  ${select_incomplete_ras}
    deselect value from dropdown if checkbox is checked  ${none_checkbox}  ${select_none_ras}

Sort Load Results
    [Arguments]  ${Sort_Load_Column_Name}  ${Asc_Sort_Symbol}  ${Desc_Sort_Symbol}
    click element  ${Sort_Load_Column_Name}
    wait until element is visible  ${Asc_Sort_Symbol}
    page should contain element  ${Asc_Sort_Symbol}
    wait until element is visible  ${list_of_loads}
    click element  ${Sort_Load_Column_Name}
    wait until element is visible  ${Desc_Sort_Symbol}
    page should contain element  ${Desc_Sort_Symbol}
    wait until element is visible  ${list_of_loads}
    click element  ${Sort_Load_Column_Name}
    wait until element is visible  ${list_of_loads}

Click Search Load Button
    wait until element is enabled  ${search_loads_button}
    click element  ${search_loads_button}

Clear Load Search Results
    wait until element is visible  ${clear_search_button}
    click element  ${clear_search_button}
    wait until element is not visible  ${list_of_loads}

Click Open Close Side
    wait until element is visible  ${open_close_sidebar_button}
    click element  ${open_close_sidebar_button}