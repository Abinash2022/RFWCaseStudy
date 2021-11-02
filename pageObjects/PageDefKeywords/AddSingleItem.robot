*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/locators.robot
Variables    ../TestData/TestDatas.py

*** Keywords ***
Click on Samsung galaxy s6
    Click Element    ${SamsungGalaxyS6} 
               
    Wait Until Element Is Visible    ${ItemVisible}
        
Add to cart
    Click Element    ${Addcart}  
     
    Handle Alert    ACCEPT
    
     
     