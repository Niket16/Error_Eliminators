*** Settings ***
Documentation  Auth Functionality
Library  SeleniumLibrary
Resource  ../../Resources/commonFunctionality.robot
Resource  ../../Resources/routeFunctionality.robot
Test Teardown    commonFunctionality.Finish TestCase

*** Test Cases *** 
Validate Login
    [Documentation]  This testcase checks the valid login functionality
    routeFunctionality.Go to Login Page
    Input Text    loginuname    testuser23
    Input Password    loginpassword    login@123
    Click Button    Login
    Page Should Contain    Message : Successfully logged in

Validate Login with Incorrect Password
    [Documentation]  This testcase checks the valid login with incorrect password functionality
    routeFunctionality.Go to Login Page
    Input Text    loginuname    tes
    Input Password    loginpassword    login@123
    Click Button    Login
    Page Should Contain    Home
    Page Should Contain    Staff

Validate Login with Incorrect Username and Password
    [Documentation]  This testcase checks the valid login with incorrect password functionality
    routeFunctionality.Go to Login Page
    Input Text    loginuname    testerqwe
    Input Password    loginpassword    login@12345
    Click Button    Login
    Page Should Contain    Home
    Page Should Contain    Staff

Validate Login with Incorrect Username
    [Documentation]  This testcase checks the valid login with incorrect password functionality
    routeFunctionality.Go to Login Page
    Input Text    loginuname    testuser23
    Input Password    loginpassword    login
    Click Button    Login
    Page Should Contain    Home
    Page Should Contain    Staff
    
Validate Logout
    [Documentation]  This testcase checks the valid login functionality
    routeFunctionality.Go to Dashboard Page
    Click Link    css:body > div.sidebar > ul > li:nth-child(8) > a
    Page Should Contain    Staff Login
