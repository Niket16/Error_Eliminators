*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Resource  commonFunctionality.robot
    
*** Keywords ***
Go to Login Page
    [Documentation]  This is to route to login page
    Start TestCase
    Click Link    //*[@id="navbarCollapse"]/div[1]/a[2]
    Click link    css:body > div.jumbotron > p:nth-child(4) > a:nth-child(2)

Go to Signup Page
    [Documentation]  This is to route to Signup page
    Start TestCase
    Click Link    //*[@id="navbarCollapse"]/div[1]/a[2]
    Click link    css:body > div.jumbotron > p:nth-child(4) > a:nth-child(1)

Go to Dashboard Page
    [Documentation]  This is to route to Dashboard page
    commonFunctionality.Login user

Go to Add Book Page
    [Documentation]  This is to route to Add Book page
    commonFunctionality.Login user
    Click Link    css:body > div.sidebar > ul > li:nth-child(2) > a

Go to Issue Book Page
    [Documentation]  This is to route to Add Book page
    commonFunctionality.Login user
    Click Link    css:body > div > ul > li:nth-child(4) > a

Go to Return Book Page
    [Documentation]  This is to route to Return Book page
    commonFunctionality.Login user
    Click Link    css:body > div > ul > li:nth-child(7) > a

Go to Add Student Page
    [Documentation]  This is to route to Add Student page
    commonFunctionality.Login user
    Click Link    css:body > div.sidebar > ul > li:nth-child(3) > a

Go to View Student Page
    [Documentation]  This is to route to Add Student page
    commonFunctionality.Login user
    Click Link    css:body > div.sidebar > ul > li:nth-child(6) > a


    
    
