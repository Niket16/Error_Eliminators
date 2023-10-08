*** Settings ***
Documentation  Students Functionalities
Library  SeleniumLibrary
Resource  ../../Resources/commonFunctionality.robot
Resource  ../../Resources/routeFunctionality.robot
Test Teardown    commonFunctionality.Finish TestCase

*** Test Cases *** 
Validate Add and View Students
    [Documentation]  This testcase checks the validity of Add Students functionality
    routeFunctionality.Go to Add Student Page
    Input Text    sname    Veronica
    Input Text    studentid    001
    Click Button    css:body > div > div > div > div > form > button
    Click Link    css:body > div > ul > li:nth-child(6) > a
    Page Should Contain    001
    Page Should Contain    Veronica

Search Student ID
    [Documentation]  This testcase checks the validity of Search Student functionality
    routeFunctionality.Go to View Student Page
    Input Text    query3    001
    Click Button    css:body > div.topnav > div > div > form > button
    Page Should Contain    001
    Page Should Contain    Veronica

Seach Invalid Student ID
    [Documentation]  This testcase checks the validity of Search Student functionality using incorrect data
    routeFunctionality.Go to View Student Page
    Input Text    query3    TEST000
    Click Button    css:body > div.topnav > div > div > form > button
    Page Should NOT Contain    TEST000

Validate Add Duplicate Student Data
    [Documentation]  This testcase checks the validity of Add Duplicate Students functionality
    routeFunctionality.Go to Add Student Page
    Input Text    sname    Veronica
    Input Text    studentid    001
    Click Button    css:body > div > div > div > div > form > button
    Page Should Contain    Student already exists.