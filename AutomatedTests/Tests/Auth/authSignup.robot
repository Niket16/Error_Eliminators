*** Settings ***
Documentation  Auth Functionality
Library  SeleniumLibrary
Resource  ../../Resources/commonFunctionality.robot
Resource  ../../Resources/routeFunctionality.robot
Test Teardown    commonFunctionality.Finish TestCase

*** Test Cases *** 
Validate Singup with One Field Invalid
    [Documentation]  This testcase checks the valid Signup functionality with One Field Invalid
    routeFunctionality.Go to Signup Page
    Input Text    uname    testuser2023
    Input Text    fname    test
    Input Text    lname    user221
    Input Text    email    testuser2023@gmail.com
    Input Text    phone    1234567890
    Input Password    password    lo
    Click Button    Create
    Page Should Contain    STAFF SIGNUP

Validate Singup with multiple Field Invalid
    [Documentation]  This testcase checks the valid Signup functionality with multiple Field Invalid
    routeFunctionality.Go to Signup Page
    Input Text    uname    testuser2023
    Input Text    fname    test
    Input Text    lname    user221
    Input Text    email    testuser2023@gmail.com
    Input Text    phone    12
    Input Password    password    lo
    Click Button    Create
    Page Should Contain    STAFF SIGNUP
    
Validate Singup
    [Documentation]  This testcase checks the valid Signup functionality
    routeFunctionality.Go to Signup Page
    Input Text    uname    testuser2023
    Input Text    fname    test
    Input Text    lname    user221
    Input Text    email    testuser2023@gmail.com
    Input Text    phone    1234567890
    Input Password    password    login@123
    Click Button    Create


