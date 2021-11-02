*** Settings ***

Library    SeleniumLibrary
Library    DataDriver    ../../tests/Functional Test/AddMultipleItem.csv
Resource    ../../pageObjects/PageDefKeywords/MulticommonKey.robot  
    

Suite Setup    Go to login Page    ${url}    ${browser}   

Test Template    Add Multiple Items

*** Variables ***
${url}    https://demoblaze.com/
${browser}    chrome
${Item}
${AddToCart}


*** Test Cases *** 
Add Item ${Item} by clicking on ${AddToCart}    Item    AddToCart      
    
*** Keywords ***
Add Multiple Items
    [Arguments]    ${Item}    ${AddToCart} 
    Click On    ${Item}
    Add Item to Cart    ${AddToCart} 
    Set Selenium Timeout    5s   
    Goto Home
    Set Selenium Timeout    10s
        
    
Check cart Items
    Verify the cart has many Items

        
    
    
    
    

