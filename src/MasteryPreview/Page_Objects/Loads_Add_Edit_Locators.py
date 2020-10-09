Hide_Operational_Details_Button = "xpath=//button[@title='Hide Operational Details']"
Expand_Order_Details = "xpath=//section[@data-testid='load-pane-orders']//div[@data-cellheader='Additional Info']//button[@data-testid='row-expand']//*[name()='svg' and @data-icon='angle-down']"
Expand_Route_Details = "xpath=//section[@data-testid='load-pane-routes']//div[@data-cellheader='Additional Info']//button[@data-testid='row-expand']//*[name()='svg' and @data-icon='angle-down']"
Success_Toast = "xpath=//div[@class='Toastify__toast Toastify__toast--success']"

# ORDER TABLE(Search Customer):
Orders_Table = "xpath=//section[@data-testid='load-pane-orders']"
Search_Customer_Element = "xpath=//input[@data-testid='customer-search-input']"
Search_Customer_Value = "Coca Cola Bottling of Northern New England"  #Kelsey Transport LLC
Verify_Customer_Details = f"xpath=//section[@data-testid='load-pane-orders']//a[.='{Search_Customer_Value}']"
# Common Fields
Activation_Status_Element = "xpath=//div[contains(@name,'activationStatusId')]//button"
Mode_Element = "xpath=//div[contains(@name,'transportModeId')]//button"
Relation_Element = "xpath=//div[contains(@name,'relationId')]//button"
QuoteType_Element = "xpath=//div[contains(@name,'quoteTypeId')]//button"
OrderNotes_Element = "xpath=//section[@data-testid='load-pane-orders']//textarea[contains(@name,'orderNote')]"
OrderNotes_Value = "Test Order Notes"
Verify_OrderNotes = f"xpath=//section[@data-testid='load-pane-orders']//textarea[contains(@name,'orderNote') and contains(.,'{OrderNotes_Value}')]"
# Commodities
Add_Commodities_Icon = "xpath=//div[@data-testid='order-commodities']//button[@data-testid='table-add-new']"
Commodities_Modal = "xpath=//div[@role='dialog']"
Freight_Description_Element = "name=description"
Freight_Description_Value = "Coca cola"
ExpWeight_Element = "name=expectedWeight.value"
Save_Commodity_Button = "xpath=//button[.='Save Commodity']"
Verify_Saved_Commodities = f"xpath=//div[@data-testid='order-commodities']//div[@data-cellheader='Freight Description' and .='{Freight_Description_Value}']"
# Requirements
Requirements_Table = "xpath=//div[@data-testid='table-requirements']"
Add_Requirements_Icon = "xpath=//div[@data-testid='table-requirements']//button[@class='css-1y4ltxc']"
Requirements_Modal = "xpath=//div[@role='dialog']//div[.='Add Requirements']"
Select_Requirements_Element = "xpath=//div[@data-testid='requirements-select']//button"
Select_Team_Value = "xpath=//li[.='Team']"
Select_Hazmat_Value = "xpath=//li[.='Hazmat']"
Team_Value_Checkbox = "xpath=//li[.='Team']//label//input[@type='checkbox']"
Hazmat_Value_Checkbox = "xpath=//li[.='Hazmat']//label//input[@type='checkbox']"
Add_Requirements_Button = "xpath=//button[.='Add Requirements']"
Verify_Team_Requirement = "xpath=//div[@data-testid='table-requirements']//div[@data-cellheader='Special Requirement' and @title='Team']"
Verify_Hazmat_Requirement = "xpath=//div[@data-testid='table-requirements']//div[@data-cellheader='Special Requirement' and @title='Hazmat']"
# Associated Reps
Associated_Reps_Table = "xpath=//div[@data-testid='order-reps']//div[.='Associated Reps']"
Add_Reps_Button = "xpath=//div[@data-testid='order-reps']//div[.='Associated Reps']//button"
Add_Reps_Name_Element = "xpath=//div[@class='css-1a3spi6']//input[@placeholder='Search employees']"
Reps_Type_DD = "name=typeId"
Main_CheckBox = "xpath=//input[@name='main']//parent::label/span"
Save_Reps_Button = "xpath=//button[@data-testid='dialog-confirm']"
Reps_Name = "Kelsey Bozick"
Reps_Type_Value = "Customer Ops"
Reps_Type_Value_TBS = f"xpath=//li[.='{Reps_Type_Value}']"
Added_Reps = f"xpath=//div[@data-testid='order-reps']//div[@data-cellheader='Rep' and @title='{Reps_Name}']"
Delete_Rep_Value = "Kelsey Bozick"
Delete_Rep_Menu_Button = f"xpath=//div[@title='{Delete_Rep_Value}']//parent::div/div[@data-cellheader='Menu']/button"

Save_Order_Button = "xpath=//button[.='Save' and @data-testid='load-order-save']"

# STOPS TABLE(Search Facility):
Stops_Table = "xpath=//div[@data-testid='load-pane-stops']"
Edit_Pickup_Menu_Button = "xpath=//div[@data-testid='load-pane-stops']//div[contains(@title,'Pickup')][last()]//parent::div/div[@data-cellheader='Menu']/button"
Edit_Delivery_Menu_Button = "xpath=//div[@data-testid='load-pane-stops']//div[contains(@title,'Delivery')][last()]//parent::div/div[@data-cellheader='Menu']/button"
Add_Stop_Icon = "xpath=//button[@data-testid='btn-new-stop' and contains(text(),'Add Stop')]"
Select_Facility_Element = "xpath=//input[@name='facility-search']"
Select_Facility_Text = "xpath=//div[@data-testid='load-step-add-stop-details']//div[@data-card-title='true' and .='Select Facility']"
Pickup_Facility_Value = "Coca Cola Facility of Atlanta"  #Arian's Beverage Depot
Select_Pickup_Facility_Value = f"""xpath=//li[contains(.,"{Pickup_Facility_Value}")]"""
Verify_Pickup = f"""xpath=//a[.="{Pickup_Facility_Value}"]"""
Delivery_Facility_Value = "Coca Cola Facility of Kansas City"  #Beverage Depot
Select_Delivery_Facility_Value = f"""xpath=//li[contains(.,"{Delivery_Facility_Value}")]"""
Verify_Delivery = f"""xpath=//a[.="{Delivery_Facility_Value}"]"""
Verify_Pickup_Stop = f"""xpath=//div[@data-cellheader='Type' and @title='Pickup']//following-sibling::div[@data-cellheader='Facility']//span[.="{Pickup_Facility_Value}"]"""
Verify_Delivery_Stop = f"""xpath=//div[@data-cellheader='Type' and @title='Delivery']//following-sibling::div[@data-cellheader='Facility']//span[.="{Delivery_Facility_Value}"]"""
Select_Date = "xpath=//input[contains(@name,'availableEnd.value')]"
Pickup_Delivery_Element = "xpath=//div[contains(@name,'type')]//button"
Todays_Date = "xpath=//div[contains(@class,'today')]"
Schedule_Type_Element = "xpath=//div[contains(@name,'scheduleType')]//button"
Open_Schedule_Value = "Open"
# Select_Open_Schedule_Value = xpath=//li[.='${Open_Schedule_Value}']
Notice_Schedule_Value = "Notice"
# Select_Notice_Schedule_Value = xpath=//li[.='${Notice_Schedule_Value}']
LiveDrop_Element = "xpath=//div[contains(@name,'liveType')]//button"
DropOnly_Value = "Drop Only"
# Select_DropOnly_Value = xpath=//li[.='${DropOnly_Value}']
DropAvail_Value = "Drop Avail"
# Select_DropAvail_Value = xpath=//li[.='${DropAvail_Value}']
WorkType_Value = "xpath=//div[contains(@name,'workType')]//button"
Lumper_Value = "Lumper"
# Select_Lumper_Value = xpath=//li[.='${Lumper_Value}']
NoTouch_Value = "No Touch"
# Select_NoTouch_Value = xpath=//li[.='${NoTouch_Value}']
LoadFrom_Element = "xpath=//div[contains(@name,'loadFromId')]//button"
SideOnly_Value = "Side Only"
# Select_SideOnly_Value = xpath=//li[.='${SideOnly_Value}']
TailOnly_Value = "Tail Only"
# Select_TailOnly_Value = xpath=//li[.='${TailOnly_Value}']
StopNotes_Element = "xpath=//textarea[contains(@data-testid,'field-stop-note')]"
StopNotes_Value = "Test Stop Notes"
# Commodities
Add_Stop_Commodities_Icon = "xpath=//div[@data-testid='stop-commodities']//button[@data-testid='table-add-new']"
Select_Commodity_Element = "xpath=//div[@data-testid='commodity-for-stop-select']//button"
Save_Commodity = "xpath=//button[@data-testid='dialog-confirm']"
Cola_Commodity_Value = "Cola"
Coffee_Commodity_Value = "Coffee"
Syrup_Commodity_Value = "Syrup"
CarbonatedCylinder_Commodity_Value = "Carbonated Cylinder"
Cola_Commodity_Checkbox = f"xpath=//div[.='{Cola_Commodity_Value}']//preceding-sibling::label//input"
Coffee_Commodity_Checkbox = f"xpath=//div[.='{Coffee_Commodity_Value}']//preceding-sibling::label//input"
Syrup_Commodity_Checkbox = f"xpath=//div[.='{Syrup_Commodity_Value}']//preceding-sibling::label//input"
CarbonatedCylinder_Commodity_Checkbox = f"xpath=//div[.='{CarbonatedCylinder_Commodity_Value}']//preceding-sibling::label//input"
Select_Cola_Commodity = f"xpath=//li[contains(.,'{Cola_Commodity_Value}')]"
Select_Coffee_Commodity = f"xpath=//li[contains(.,'{Coffee_Commodity_Value}')]"
Select_Syrup_Commodity = f"xpath=//li[contains(.,'{Syrup_Commodity_Value}')]"
Select_CarbonatedCylinder_Commodity = f"xpath=//li[contains(.,'{CarbonatedCylinder_Commodity_Value}')]"
Select_StopCommodities = "xpath=//li[.='{Freight_Description_Value}']"
# Save_StopCommodities = xpath=//div[.="Add New Commodities"]//following-sibling::div//button[.='Add Commodities']
#
# ${Delete_Pickup_Stop = xpath=//div[@data-testid='load-pane-stops']//div[@data-cellheader='Facility' and .='${Pickup_Facility_Value}']//preceding-sibling::div[@data-cellheader='Menu']//button
# ${Delete_Delivery_Stop = xpath=//div[@data-testid='load-pane-stops']//div[@data-cellheader='Facility' and .='${Delivery_Facility_Value}']//preceding-sibling::div[@data-cellheader='Menu']//button

Save_Stop_Button = "xpath=//button[@data-testid='load-stop-save' and .='Save']"
