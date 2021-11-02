*** Settings ***
Resource    ../../pageObjects/PageDefKeywords/LoginPage.robot
Resource    ../../pageObjects/PageDefKeywords/CommonKeywords.robot
Resource    ../../pageObjects/PageDefKeywords/AddSingleItem.robot
Resource    ../../pageObjects/PageDefKeywords/DeleteItem.robot
Resource    ../../pageObjects/PageDefKeywords/PlaceOrder.robot

*** Variables ***

${url}    https://demoblaze.com/
${browser}    chrome


*** Test Cases ***
Open Browser and Login
    Go to login Page    ${url}    ${browser} 
    Input Username
    Input Pwd
    Click Login  
    Verify Login Succeeded
    
Add an item to Cart
    Click on Samsung galaxy s6
    Add to cart
    Click Element    ${Home}
    Click on Samsung galaxy s6
    Add to cart
    
Delete an item from Cart
    Click on cart
    Delete Item From Cart
    
Place Order
    Click on Ordercart
    Click on Place Order
    Enter Name
    Enter Country
    Enter City
    Enter Card No
    Enter Month
    Enter Year
    Click Purchase
    Verify Purchase 

    

    
    


