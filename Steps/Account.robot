*** Settings ***
Documentation       My Account test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Account.robot

*** Test Cases ***
User Should Be Able To See My Account
    [Documentation]       Test to verify that user should be able to see my account
    [Setup]               Open Browser Chrome

    Verify Current Url Is MyAccount Url
    input email to login
    input password
    click login
    click Order History And Details 

    [Teardown]            Close Browser

