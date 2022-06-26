*** Settings ***
Library                                 SeleniumLibrary
Test Setup                              Open Browser                ${base_url}         ${browser_setup}
Test Teardown                           Close Browser

*** Variables ***
${base_url}                             http://automationpractice.com/index.php?controller=authentication&back=history#account-creation
${browser_setup}                        Chrome


*** Test Cases ***
I input with valid data
    Maximize Browser Window
    Input Text                          //input[@id="email_create"]                 mahyaandina@gmail.com
    Click Element                       //i[@class="icon-user left"]
    Sleep                               5s
    Element Should Be Visible           //input[@id="customer_firstname"]
    Click Element                       //label[@for="id_gender1"]
    Input Text					        //input[@id="customer_firstname"]			Mahya
    Input Text                          //input[@id="customer_lastname"]            Andina
    Input Text					        //input[@id="passwd"]                       12345
    Select From List By Index           //select[@id="days"]                        2
    Select From List By Index           //select[@id="months"]                      2
    Select From List By Value           //select[@id="years"]                       2000
    Input Text					        //input[@id="firstname"]			        Mahya
    Input Text                          //input[@id="lastname"]                     Andina
    Input Text                          //input[@id="company"]                      PT Maju Jaya
    Input Text                          //input[@id="address1"]                     Kemang
    Input Text                          //input[@id="address2"]                     -
    Input Text                          //input[@id="city"]                         Jakarta
    Select From List By Index           //select[@id="id_state"]                    2
    Input Text                          //input[@id="postcode"]                     1111
    Select From List By Value           //select[@id="id_country"]                  21
    Input Text                          //textarea[@id="other"]                     0987654321
    Input Text                          //input[@id="phone"]                        \
    Input Text                          //input[@id="phone_mobile"]                 0987654321
    Input Text                          //input[@id="alias"]                        MyAdresss
    Sleep                               3s

I input with valid email and blank data
    Maximize Browser Window
    Input Text                          //input[@id="email_create"]                 mahyaandina@gmail.com
    Click Element                       //i[@class="icon-user left"]
    Sleep                               5s
    Element Should Be Visible           //input[@id="customer_firstname"]   
    Click Element				        //button[@id="submitAccount"]
	sleep						        2s
	Element Should Be Visible           //div[@class="alert alert-danger"]


I input with registered email
    Maximize Browser Window
    Input Text                          //input[@id="email_create"]                 andhjb@gmail.com
    Click Element                       //i[@class="icon-user left"]
    Sleep                               5s
    Element Should Be Visible           //div[@class="alert alert-danger"]
