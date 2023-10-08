*** Settings ***
Documentation  Book Functionalities
Library  SeleniumLibrary
Resource  ../../Resources/commonFunctionality.robot
Resource  ../../Resources/routeFunctionality.robot
Test Teardown    commonFunctionality.Finish TestCase

*** Test Cases *** 
Validate Add Books
    [Documentation]  This testcase checks the validity of Add Books functionality
    routeFunctionality.Go to Add Book Page
    Input Text    bookid    001
    Input Text    bookname    Ruby
    Input Text    subject    Programming
    Input Text    category    Not-Issued
    Click Button    css:body > div > div > div > div > form > button
    Click Link    css:body > div > ul > li:nth-child(1) > a
    Page Should Contain    001
    Page Should Contain    Ruby

Search Book ID
    [Documentation]  This testcase checks the validity of Search Student functionality
    routeFunctionality.Go to Dashboard Page
    Input Text    query2    001
    Click Button    css:body > div.topnav > div > div > form > button
    Page Should Contain    001

Validate Edit Books
    [Documentation]  This testcase checks the validity of Edit Books functionality
    routeFunctionality.Go to Dashboard Page
    Click Link    css:#dataTable > tbody > tr:nth-child(3) > td:nth-child(5) > a
    Input Text    bookid    002
    Input Text    bookname    Ruby2
    Input Text    subject    Program
    Input Text    category    Not-Issued
    Click Button    css:body > div > div > div > div > form > button
    Click Link    css:body > div > ul > li:nth-child(1) > a
    Page Should Contain    002
    Page Should Contain    Ruby2


Validate Delete Books
    [Documentation]  This testcase checks the validity of Delete Books functionality
    routeFunctionality.Go to Dashboard Page
    Click Link    css:#dataTable > tbody > tr:nth-child(3) > td:nth-child(6) > a
    Wait Until Page Does Not Contain    002
    Page Should Not Contain    002
    Page Should Not Contain    Ruby2

Search Book ID with Incorrect ID
    [Documentation]  This testcase checks the validity of Search Student functionality
    routeFunctionality.Go to Dashboard Page
    Input Text    query2    0011
    Click Button    css:body > div.topnav > div > div > form > button
    Page Should Not Contain    0011
