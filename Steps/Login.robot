*** Settings ***
Documentation                               Login test cases
Library                                     SeleniumLibrary
Resource                                    ../pageObjects/Login.robot

*** Test Cases ***
User Should Be Able to Login 
    [Documentation]                         Test to verify that User Should Be Able to Login
    [Setup]                                 Open Browser Chrome

    Verify Current Url Is Login Url         
    input email                             email=andhjb@gmail.com
    input password                          password=12345
    Klik Button Login Sign In
    Login Success

    [Teardown]                              Close Browser

User Login with invalid email and valid password
    [Documentation]                         Test to verify that User Should Be Able to Login
    [Setup]                                 Open Browser Chrome

    Verify Current Url Is Login Url         
    input email                             email=annnn@gmail.com
    input password                          password=12345
    Klik Button Login Sign In
    Login Alert

    [Teardown]                              Close Browser

User Login with valid email and invalid password
    [Documentation]                         Test to verify that User Login with valid email and invalid password
    [Setup]                                 Open Browser Chrome

    Verify Current Url Is Login Url         
    input email                             email=adhjb@gmail.com
    input password                          password=1212
    Klik Button Login Sign In
    Login Alert

    [Teardown]                              Close Browser

User forgot password
    [Documentation]                         Test to verify that User Login with valid email and invalid password
    [Setup]                                 Open Browser Chrome

    Klik Forgot Password
    input email                             email=mahyaandina@gmail.com
    Klik retrieve password
    Success sent to email address

    [Teardown]                              Close Browser
