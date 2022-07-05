*** Settings ***
Documentation                               Order test cases
Library                                     SeleniumLibrary
Resource                                    ../pageObjects/Order.robot

*** Test Cases ***
User Should Be Able to order product 
    [Documentation]                         Test to verify that user should be able to order product
    [Setup]                                 Open Browser Chrome

    Verify Current Url Is Contact Url
    Klik Add to cart
    Success add to shopping cart
    Klik checkout
    Summary page is appear
    Click Checkout Summary
    Sign in page is appear
    Input Email
    Input Password
    Klik Sign in
    Address page is appear
    Click Checkout Address
    


    [Teardown]                          Close Browser
