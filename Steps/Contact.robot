*** Settings ***
Documentation                               Contact test cases
Library                                     SeleniumLibrary
Resource                                    ../pageObjects/Contact.robot

*** Test Cases ***
User Should Be Able to Contact 
    [Documentation]                         Test to verify that user should be able to contact
    [Setup]                                 Open Browser Chrome

    Verify Current Url Is Contact Url
    Choose Subject heading
    input email                             email=andhjb@gmail.com
    input massage
    Click send
    Success send email

    [Teardown]                              Close Browser
