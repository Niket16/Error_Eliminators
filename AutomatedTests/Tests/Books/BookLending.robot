*** Settings ***
Documentation  Book Circulation Functionalities
Library  SeleniumLibrary
Resource  ../../Resources/commonFunctionality.robot
Resource  ../../Resources/routeFunctionality.robot
Test Teardown    commonFunctionality.Finish TestCase

*** Test Cases *** 
# Validate Issue and View Books with Incorrect Book ID
#     [Documentation]  This testcase checks the validity of Issue and View Books with Incorrect Book ID
#     routeFunctionality.Go to Issue Book Page
#     Input Text    book1    BE1
#     Input Text    studentid    EN14CS301110
#     Click Button    css:body > div > div > div > div > form > button
#     Click Link    css:body > div > ul > li:nth-child(5) > a
#     Page Should Not Contain    EN14CS301110
#     Page Should Not Contain    Python
#     Page Should Not Contain    Mishika

# Validate Issue and View Books with Incorrect Stuednt ID
#     [Documentation]  This testcase checks the validity of Issued Book with Incorrect Stuednt ID
#     routeFunctionality.Go to Issue Book Page
#     Input Text    book1    BE12345H
#     Input Text    studentid    EN14
#     Click Button    css:body > div > div > div > div > form > button
#     Click Link    css:body > div > ul > li:nth-child(5) > a
#     Page Should Not Contain    EN14CS301110
#     Page Should Not Contain    Python
#     Page Should Not Contain    Mishika

# Validate Issue and View Books with Incorrect Stuednt ID and Book ID
#     [Documentation]  This testcase checks the validity of Issued Book functionality with Incorrect Stuednt ID and Book ID
#     routeFunctionality.Go to Issue Book Page
#     Input Text    book1    BE1
#     Input Text    studentid    EN14
#     Click Button    css:body > div > div > div > div > form > button
#     Click Link    css:body > div > ul > li:nth-child(5) > a
#     Page Should Not Contain    EN14CS301110
#     Page Should Not Contain    Python
#     Page Should Not Contain    Mishika


Validate Issue and View Books
    [Documentation]  This testcase checks the validity of Issued Book functionality
    routeFunctionality.Go to Issue Book Page
    Input Text    book1    BE12345H
    Input Text    studentid    EN14CS301110
    Click Button    css:body > div > div > div > div > form > button
    Sleep    1s
    Click Link    css:body > div > ul > li:nth-child(5) > a
    Sleep    1s
    Page Should Contain    EN14CS301110
    Page Should Contain    Python
    Page Should Contain    Mishika

Validate Return Issued Books
    [Documentation]  This testcase checks the validity of Return Issued Books functionality
    routeFunctionality.Go to Return Book Page
    Input Text    bookid2    BE12345H
    Click Button    css:body > div > div > div > div > form > button
    Click Link    css:body > div > ul > li:nth-child(5) > a
    Page Should Not Contain    EN14CS301110
    Page Should Not Contain    Python
    Page Should Not Contain    Mishika


