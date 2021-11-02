*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/locators.robot
Variables    ../TestData/TestDatas.py

*** Keywords ***
Click on cart
    Click Element    ${Cart} 
               
    Wait Until Element Is Visible    ${Valid}
        
# Verify Multiple Items are present in cart
    # Run Keyword If    '${MultipleItem}'    Click Element    ${DeleteItem}    
    # Page Should Contain    Total       
    # Capture Page Screenshot    ./index1.html
    
Delete Item From Cart
    Click Element    ${DeleteItem}
    Page Should Contain    Total  
    Capture Page Screenshot    ./index2.html
    
    
    
        
    
    