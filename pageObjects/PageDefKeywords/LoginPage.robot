*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/locators.robot
Variables    ../TestData/TestDatas.py

*** Keywords ***
Input Username
    Input Text    ${LoginUsernameInputBox}    ${Username}    
    
Input Pwd
    Input Text    ${LoginPasswordInputBox}    ${Password}    
    
Click Login
    Click Element    ${LoginButton} 