*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/locators.robot
Variables    ../TestData/TestDatas.py

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
    
Click Login Button
    Click Button    ${LoginButton}    
    
Verify Login Succeeded
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
    
# App TearDown
    # Close All Browsers