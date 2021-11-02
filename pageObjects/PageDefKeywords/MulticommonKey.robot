*** Settings ***
Library    SeleniumLibrary
Variables    ../TestData/TestDatas.py

*** Variables ***
${url}    https://demoblaze.com/
${browser}    chrome
${LoginMenuButton}          id:login2
${LoginUsernameInputBox}    id:loginusername
${LoginPasswordInputBox}    id:loginpassword
${NameOfUser}               id:nameofuser
${LoginButton}              //div/button[text()="Log in"]
${Home}                     //*[@id="navbarExample"]/ul/li[1]/a
${ItemVisible}              //*[@id="nava"]/img
${Cart}                     //*[@id="cartur"]
${DeleteItem}               //*[@id="tbodyid"]/tr[1]/td[4]/a
${Delete}                   //*[@id="tbodyid"]/tr[1]/td[4]/a
${Category}                 //*[@id="cat"]

*** Keywords ***
Go to login Page
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Title Should Be    STORE   
    click element    ${LoginMenuButton} 
    Wait Until Element Is Visible    ${LoginUsernameInputBox}
    Input Text    ${LoginUsernameInputBox}    ${Username}    
    Input Text    ${LoginPasswordInputBox}    ${Password}    
    
    Click Button    ${LoginButton}    
    
    Wait Until Element Is Visible    ${NameOfUser}    
    Get Text    ${NameOfUser} 
    
Click On 
    [Arguments]    ${Item}
    Click Element    ${Item}  
    
Add Item to Cart
    [Arguments]    ${AddToCart}
    Click Element    ${AddToCart}   
    Handle Alert    ACCEPT    
    Wait Until Element Is Visible    ${ItemVisible}    

Goto Home
    Click Element    ${Home}
    Sleep    2s    
    Wait Until Page Contains Element    ${Category}
    
Verify the cart has many Items
    Click Element    ${Home}
    Click Element    ${Cart}
    Element Should Be Visible    ${Delete}           
    # Exit For Loop If    xpath://h3[@id = 'totalp' and text() >= '360'] 
        
# App TearDown
    # Close All Browsers