*** Settings ***
Documentation                               Register test cases
Library                                     SeleniumLibrary
Resource                                    ../pageObjects/Register.robot

*** Test Cases ***
User Should Be Able to Register 
    [Documentation]                         Test to verify that user should be able to register
    [Setup]                                 Open Browser Chrome


    Verify Current Url Is Homepage Url
    input email                             email=fadlil2@gmail.com
    Verify register page                          
    choose title
    input first name
    input last name
    input password                     
    choose date                        
    choose month                      
    choose year             
    input company                      
    input adress1                       
    input address2
    input city                         
    input state                         
    input postal code                  
    select country                     
    input additional information        
    input home phone                    
    input mobile phone                 
    input alias
    klik Register  

    [Teardown]                              Close Browser

Register user with unvalid email 
    [Documentation]                         Test to Register user with unvalid email
    [Setup]                                 Open Browser Chrome

    Verify Current Url Is Homepage Url
    input email                             email=mahyaandina@
    Notification appear                          

    [Teardown]                              Close Browser

Register user with registered email 
    [Documentation]                         Test to Register user with registered email
    [Setup]                                 Open Browser Chrome

    Verify Current Url Is Homepage Url
    input email                             email=mahyaandina@gmail.com
    Notification appear                          

    [Teardown]                              Close Browser