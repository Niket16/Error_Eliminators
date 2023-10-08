*** Settings ***
Documentation  Information Page Access Functionality
Library  SeleniumLibrary
Resource  ../../Resources/commonFunctionality.robot
Resource  ../../Resources/routeFunctionality.robot
Test Setup    commonFunctionality.Start TestCase
Test Teardown    commonFunctionality.Finish TestCase


*** Test Cases *** 
Validate Contact Us
    [Documentation]  This testcase checks the Contact us page
    Click Link    css:#navbarCollapse > div:nth-child(2) > a:nth-child(2)
    Page Should Contain    Contact us
