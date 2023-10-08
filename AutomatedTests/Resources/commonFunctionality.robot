*** Settings ***
Documentation  Common Functionality
Library  SeleniumLibrary
Resource  routeFunctionality.robot
*** Variables *** 
${URL}  http://127.0.0.1:8000/
${Browser}  chrome
${ValidUsername}  testuser23
${ValidPassword}    login@123

*** Keywords ***  
Start TestCase
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Finish TestCase
    Close Browser

Login user
    routeFunctionality.Go to Login Page
    Input Text    loginuname    testuser23
    Input Password    loginpassword    login@123
    Click Button    Login
    Page Should Contain    Message : Successfully logged in
    
