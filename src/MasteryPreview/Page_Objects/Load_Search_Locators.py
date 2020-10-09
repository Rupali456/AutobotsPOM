Search_Loads_Text = 'Load Search Results'

# Numbers Section:
Ref_Num_Element = "name=ref"
Route_Num_Element = 'name=routeCode'
Order_Num_Element = "name=orderCode"
Load_Num_Element = "name=loadCode"
Load_Num_Link = "xpath=//div[@data-cellheader='Load #']//a"

# Verify_Ref_Num = f"xpath=//div[@data-testid='order-refs']//div[@data-cellheader='Ref #' and contains(@title,'{Ref_Num_Value}')]"
# Verify_Route_Num = f"xpath=//div[@data-cellheader='Route #' and starts-with(@title,'{Route_Num_Value}')]"
# Verify_Order_Num = f"xpath=//div[@data-cellheader='Order #' and starts-with(@title,'{Order_Num_Value}')]"
# Verify_Load_Num = f"xpath=//div[@data-cellheader='Load #' and starts-with(@title,'{Load_Num_Value}')]"

# Pick-Up Section:
Shipper_Element = "name=facility-Pickup"
Shipper_DD = "xpath=//input[@name='facility-Pickup']//parent::div//following-sibling::ul"
PU_Date_Element = "name=PickupAvailableStartDate"
End_PuDate_Element = "name=PickupAvailableEndDate"
Origin_City_Element = "xpath=//div[@id='Pickup-address']//input"
Origin_State_Element = "xpath=//div[.='Pick Up']//parent::div//label[.='State']//following-sibling::button"
Origin_State_Search_Field = "xpath=//div[.='Pick Up']//parent::div//label[.='State']//following-sibling::div//input[@aria-autocomplete='list']"
PickUp_Radius_Element = "id=Pickup-radius"

# Verify_Shipper = f"xpath=//div[@data-cellheader='Shipper' and contains(@title,'{Shipper_Value}')]"
# GA_State_CheckBox = f"xpath=//div//label[.='State']//following-sibling::div//div[.='{GA_Value}']//preceding-sibling::label//input"
# OH_State_CheckBox = f"xpath=//div//label[.='State']//following-sibling::div//div[.='{OH_Value}']//preceding-sibling::label//input"
# Select_GA_State = f"xpath=//li[contains(.,'{GA_Value}')]"
# Select_OH_State = f"xpath=//li[contains(.,'{OH_Value}')]"
# Verify_GA_OH_State = f"xpath=//div[@data-cellheader='OST' and (@title='{GA_Value}' or @title='{OH_Value}')]"

# Delivery Section:
Consignee_Element = "name=facility-Delivery"
Start_DelDate_Element = "name=DeliveryAvailableStartDate"
End_DelDate_Element = "name=DeliveryAvailableEndDate"
Destination_Element = "xpath=//div[@id='Delivery-address']//input"
Destination_State_Element = "xpath=//div[.='Destination']//parent::div//label[.='State']//following-sibling::button"
Destination_State_Search_Field = "xpath=//div[.='Destination']//parent::div//label[.='State']//following-sibling::div//input[@aria-autocomplete='list']"
Delivery_Radius_Element = "name=Delivery-radius"

# Verify_Consignee = f"xpath=//div[@data-cellheader='Consignee' and @title='{Consignee_Value}']"
# Verify_Destination_GA_OH_State = f"xpath=//div[@data-cellheader='DST' and (@title='{GA_Value}' or @title='{OH_Value}')]"

# Customer Section:
Customer_Search_Element = "xpath=//div[@data-testid='customer-search']//input"
Customer_Rep_Element = "xpath=//div[@id='customer-rep']//input"

# Verify_Customer = f"xpath=//div[@data-cellheader='Customer' and @title='{Customer_Value}']"
# Verify_Customer_Reps = f"xpath=//div[@data-testid='order-reps']//div[@data-cellheader='Rep' and @title='{Customer_Rep_Value}']"

# Carrier Section:
Carrier_Element = "xpath=//div[@data-testid='carrier-search']//input"
Carrier_Rep_Element = "xpath=//div[@id='carrier-rep']//input"

# Verify_Carrier_Value = f"xpath=//a[.='{Carrier_Value}']"
# Verify_Carrier_Reps = f"xpath=//div[@data-testid='route-reps']//div[@data-cellheader='Rep' and @title='{Carrier_Rep_Value}']"

# Route Details Section:
RAS_Element = "xpath=//label[.='RAS']//following-sibling::div//button"
Active_Checkbox = "xpath=//div//label[.='RAS']//following-sibling::div//div[.='Active']//preceding-sibling::label//input"
Hold_Checkbox = "xpath=//div//label[.='RAS']//following-sibling::div//div[.='Hold']//preceding-sibling::label//input"
Uncommitted_Checkbox = "xpath=//div//label[.='RAS']//following-sibling::div//div[.='Uncommitted']//preceding-sibling::label//input"
Cancelled_Checkbox = "xpath=//div//label[.='RAS']//following-sibling::div//div[.='Cancelled']//preceding-sibling::label//input"
Incomplete_Checkbox = "xpath=//div//label[.='RAS']//following-sibling::div//div[.='Incomplete']//preceding-sibling::label//input"
None_Checkbox = "xpath=//div//label[.='RAS']//following-sibling::div//div[.='None']//preceding-sibling::label//input"
Select_Active_RAS = "xpath=//li[.='Active']"
Select_Hold_RAS = "xpath=//li[.='Hold']"
Select_Uncommitted_RAS = "xpath=//li[.='Uncommitted']"
Select_Cancelled_RAS = "xpath=//li[.='Cancelled']"
Select_Incomplete_RAS = "xpath=//li[.='Incomplete']"
Select_None_RAS = "xpath=//li[.='None']"

Search_Loads_Button = "xpath=//button[.='Search']"
Clear_Search_Button = "xpath=//button[.='Clear Search']"

# Sort Section:
List_Of_Loads = "xpath=//div[@data-testid='table-tbody']//div[@role='row']"
Sort_Load_By_Load_Num = "css:div[data-testid='load-search-table'] [title='Sort by Load #']"
Sort_Load_By_Load_Num_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Load #'] .fa-caret-up"
Sort_Load_By_Load_Num_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Load #'] .fa-caret-down"

Sort_Load_By_Route_Num = "css:div[data-testid='load-search-table'] [title='Sort by Route #']"
Sort_Load_By_Route_Num_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Route #'] .fa-caret-up"
Sort_Load_By_Route_Num_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Route #'] .fa-caret-down"

Sort_Load_By_RAS = "css:div[data-testid='load-search-table'] [title='Sort by RAS']"
Sort_Load_By_RAS_ASC = "css:div[data-testid='load-search-table'] [title='Sort by RAS'] .fa-caret-up"
Sort_Load_By_RAS_DSC = "css:div[data-testid='load-search-table'] [title='Sort by RAS'] .fa-caret-down"

Sort_Load_By_Order_Num = "css:div[data-testid='load-search-table'] [title='Sort by Order #']"
Sort_Load_By_Order_Num_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Order #'] .fa-caret-up"
Sort_Load_By_Order_Num_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Order #'] .fa-caret-down"

Sort_Load_By_OAS = "css:div[data-testid='load-search-table'] [title='Sort by OAS']"
Sort_Load_By_OAS_ASC = "css:div[data-testid='load-search-table'] [title='Sort by OAS'] .fa-caret-up"
Sort_Load_By_OAS_DSC = "css:div[data-testid='load-search-table'] [title='Sort by OAS'] .fa-caret-down"

Sort_Load_By_Mode = "css:div[data-testid='load-search-table'] [title='Sort by Mode']"
Sort_Load_By_Mode_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Mode'] .fa-caret-up"
Sort_Load_By_Mode_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Mode'] .fa-caret-down"

Sort_Load_By_Size = "css:div[data-testid='load-search-table'] [title='Sort by Size']"
Sort_Load_By_Size_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Size'] .fa-caret-up"
Sort_Load_By_Size_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Size'] .fa-caret-down"

Sort_Load_By_Equip = "css:div[data-testid='load-search-table'] [title='Sort by Equip']"
Sort_Load_By_Equip_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Equip'] .fa-caret-up"
Sort_Load_By_Equip_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Equip'] .fa-caret-down"

Sort_Load_By_RLC = "css:div[data-testid='load-search-table'] [title='Sort by RLC']"
Sort_Load_By_RLC_ASC = "css:div[data-testid='load-search-table'] [title='Sort by RLC'] .fa-caret-up"
Sort_Load_By_RLC_DSC = "css:div[data-testid='load-search-table'] [title='Sort by RLC'] .fa-caret-down"

Sort_Load_By_Customer = "css:div[data-testid='load-search-table'] [title='Sort by Customer']"
Sort_Load_By_Customer_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Customer'] .fa-caret-up"
Sort_Load_By_Customer_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Customer'] .fa-caret-down"

Sort_Load_By_MainCustRep = "css:div[data-testid='load-search-table'] [title='Sort by Main Cust Rep']"
Sort_Load_By_MainCustRep_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Main Cust Rep'] .fa-caret-up"
Sort_Load_By_MainCustRep_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Main Cust Rep'] .fa-caret-down"

Sort_Load_By_PUDate = "css:div[data-testid='load-search-table'] [title='Sort by PU Date']"
Sort_Load_By_PUDate_ASC = "css:div[data-testid='load-search-table'] [title='Sort by PU Date'] .fa-caret-up"
Sort_Load_By_PUDate_DSC = "css:div[data-testid='load-search-table'] [title='Sort by PU Date'] .fa-caret-down"

Sort_Load_By_Shipper = "css:div[data-testid='load-search-table'] [title='Sort by Shipper']"
Sort_Load_By_Shipper_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Shipper'] .fa-caret-up"
Sort_Load_By_Shipper_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Shipper'] .fa-caret-down"

Sort_Load_By_OriginCity = "css:div[data-testid='load-search-table'] [title='Sort by Origin City']"
Sort_Load_By_OriginCity_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Origin City'] .fa-caret-up"
Sort_Load_By_OriginCity_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Origin City'] .fa-caret-down"

Sort_Load_By_OST = "css:div[data-testid='load-search-table'] [title='Sort by OST']"
Sort_Load_By_OST_ASC = "css:div[data-testid='load-search-table'] [title='Sort by OST'] .fa-caret-up"
Sort_Load_By_OST_DSC = "css:div[data-testid='load-search-table'] [title='Sort by OST'] .fa-caret-down"

Sort_Load_By_Dist = "css:div[data-testid='load-search-table'] [title='Sort by Dist']"
Sort_Load_By_Dist_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Dist'] .fa-caret-up"
Sort_Load_By_Dist_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Dist'] .fa-caret-down"

Sort_Load_By_Stops = "css:div[data-testid='load-search-table'] [title='Sort by Stops']"
Sort_Load_By_Stops_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Stops'] .fa-caret-up"
Sort_Load_By_Stops_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Stops'] .fa-caret-down"

Sort_Load_By_Consignee = "css:div[data-testid='load-search-table'] [title='Sort by Consignee']"
Sort_Load_By_Consignee_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Consignee'] .fa-caret-up"
Sort_Load_By_Consignee_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Consignee'] .fa-caret-down"

Sort_Load_By_DestCity = "css:div[data-testid='load-search-table'] [title='Sort by Dest City']"
Sort_Load_By_DestCity_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Dest City'] .fa-caret-up"
Sort_Load_By_DestCity_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Dest City'] .fa-caret-down"

Sort_Load_By_DST = "css:div[data-testid='load-search-table'] [title='Sort by DST']"
Sort_Load_By_DST_ASC = "css:div[data-testid='load-search-table'] [title='Sort by DST'] .fa-caret-up"
Sort_Load_By_DST_DSC = "css:div[data-testid='load-search-table'] [title='Sort by DST'] .fa-caret-down"

Sort_Load_By_DelDate = "css:div[data-testid='load-search-table'] [title='Sort by Del Date']"
Sort_Load_By_DelDate_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Del Date'] .fa-caret-up"
Sort_Load_By_DelDate_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Del Date'] .fa-caret-down"

Sort_Load_By_Carrier = "css:div[data-testid='load-search-table'] [title='Sort by Carrier']"
Sort_Load_By_Carrier_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Carrier'] .fa-caret-up"
Sort_Load_By_Carrier_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Carrier'] .fa-caret-down"

Sort_Load_By_MainCarRep = "css:div[data-testid='load-search-table'] [title='Sort by Main Car Rep']"
Sort_Load_By_MainCarRep_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Main Car Rep'] .fa-caret-up"
Sort_Load_By_MainCarRep_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Main Car Rep'] .fa-caret-down"

Sort_Load_By_Trailer_Num = "css:div[data-testid='load-search-table'] [title='Sort by Trailer #']"
Sort_Load_By_Trailer_Num_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Trailer #'] .fa-caret-up"
Sort_Load_By_Trailer_Num_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Trailer #'] .fa-caret-down"

Sort_Load_By_Margin = "css:div[data-testid='load-search-table'] [title='Sort by Margin']"
Sort_Load_By_Margin_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Margin'] .fa-caret-up"
Sort_Load_By_Margin_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Margin'] .fa-caret-down"

Sort_Load_By_MaxCost = "css:div[data-testid='load-search-table'] [title='Sort by Max Cost']"
Sort_Load_By_MaxCost_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Max Cost'] .fa-caret-up"
Sort_Load_By_MaxCost_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Max Cost'] .fa-caret-down"

Sort_Load_By_OverMax = "css:div[data-testid='load-search-table'] [title='Sort by Over Max']"
Sort_Load_By_OverMax_ASC = "css:div[data-testid='load-search-table'] [title='Sort by Over Max'] .fa-caret-up"
Sort_Load_By_OverMax_DSC = "css:div[data-testid='load-search-table'] [title='Sort by Over Max'] .fa-caret-down"
