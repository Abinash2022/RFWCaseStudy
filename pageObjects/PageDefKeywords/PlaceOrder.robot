*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/locators.robot
Variables    ../TestData/TestDatas.py

*** Keywords ***
Click on Ordercart
    Click Element    ${Cart} 
               
    Wait Until Element Is Visible    ${Valid}    
    Set Selenium Timeout    3s
    
Click on Place Order
    Click Button    ${PlaceOrder}    
    
    Wait Until Element Is Visible    ${ConfirmPage}  
    
        
Enter Name
    Execute Javascript    document.querySelector("#name").value = "Abinash" 
    
Enter Country
    Execute Javascript    document.querySelector("#country").value = "India"    
    
Enter City
    Execute Javascript    document.querySelector("#city").value = "Bhubaneswar"    
    
Enter Card No
    Execute Javascript    document.querySelector("#card").value = "123456789"    
    
Enter Month
    Execute Javascript    document.querySelector("#month").value = "11"
    
Enter Year
    Execute Javascript    document.querySelector("#year").value = "2021"
    
Click Purchase
     Execute Javascript    document.querySelector("#orderModal > div > div > div.modal-footer > button.btn.btn-primary").click()
     
Verify Purchase
    Element Should Be Visible    ${VerifyPurchase}    Thank you for your purchase!
    Page Should Contain Button    ${OK} 
    Set Selenium Timeout    2s   
    Click Button    ${OK} 
    
    

    