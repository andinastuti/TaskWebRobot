*** Settings ***
Library                                 SeleniumLibrary
Test Setup                              Open Browser                ${base_url}         ${browser_setup}
Test Teardown                           Close Browser

*** Variables ***
${base_url}                             http://automationpractice.com/index.php?controller=my-account
${browser_setup}                        Chrome


*** Test Cases ***
I click Order History And Details
    Maximize Browser Window
    Input Text                          //input[@id="email"]                         andhjb@gmail.com
    Input Text                          //input[@id="passwd"]                        12345
    Click Element                       //button[@id="SubmitLogin"]
    Sleep                               5s
    Element Should Be Visible           //i[@class="icon-list-ol"]
    Click Element                       //i[@class="icon-list-ol"]
    Element Should Be Visible           //div[@id="block-history"]

I click My Credit Slips
    Maximize Browser Window
    Input Text                          //input[@id="email"]                         andhjb@gmail.com
    Input Text                          //input[@id="passwd"]                        12345
    Click Element                       //button[@id="SubmitLogin"]
    Sleep                               5s
    Element Should Be Visible           //i[@class="icon-ban-circle"]
    Click Element                       //i[@class="icon-ban-circle"]
    Element Should Be Visible           //div[@id="block-history"]

I click My Address
    Maximize Browser Window
    Input Text                          //input[@id="email"]                         andhjb@gmail.com
    Input Text                          //input[@id="passwd"]                        12345
    Click Element                       //button[@id="SubmitLogin"]
    Sleep                               5s
    Element Should Be Visible           //i[@class="icon-building"]
    Click Element                       //i[@class="icon-building"]
    Element Should Be Visible           //div[@class="bloc_adresses row"]

I click My Personal Information
    Maximize Browser Window
    Input Text                          //input[@id="email"]                         andhjb@gmail.com
    Input Text                          //input[@id="passwd"]                        12345
    Click Element                       //button[@id="SubmitLogin"]
    Sleep                               5s
    Element Should Be Visible           //i[@class="icon-user"]
    Click Element                       //i[@class="icon-user"]
    Element Should Be Visible           //input[@id="firstname"]

I click My Wishlist
    Maximize Browser Window
    Input Text                          //input[@id="email"]                         andhjb@gmail.com
    Input Text                          //input[@id="passwd"]                        12345
    Click Element                       //button[@id="SubmitLogin"]
    Sleep                               5s
    Element Should Be Visible           //i[@class="icon-heart"]
    Click Element                       //i[@class="icon-heart"]
    Element Should Be Visible           //input[@id="name"]

I click Log Out
    Maximize Browser Window
    Input Text                          //input[@id="email"]                         andhjb@gmail.com
    Input Text                          //input[@id="passwd"]                        12345
    Click Element                       //button[@id="SubmitLogin"]
    Sleep                               5s
    Element Should Be Visible           //i[@class="icon-heart"]
    Click Element                       //a[@class="logout"]
    Element Should Be Visible           //input[@id="newsletter-input"]
