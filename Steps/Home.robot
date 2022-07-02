*** Settings ***
Documentation                   Home test cases
Library                         SeleniumLibrary
Resource                        ../pageObjects/Home.robot

*** Test Cases ***
User Should Be Able to Search Product 
    [Documentation]             Test to verify that User Should Be Able to Search Product 
    [Setup]                     Open Browser Chrome                      

    Input product to search
    Click search button

    [Teardown]                  Close Browser


User click button "Call Us" 
    [Documentation]             Test to verify that User click button "Call Us" 
    [Setup]                     Open Browser Chrome 

    I click button "Call Us"
    info appear
    [Teardown]                  Close Browser

    




