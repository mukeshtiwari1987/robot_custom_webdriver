*** Settings ***
Resource    ${CURDIR}/../Keywords/Global-Keywords.robot


*** Variables ***
${welcome_internet_heroku_xpath}    //h1[normalize-space()='Welcome to the-internet']
${login_url}                        https://the-internet.herokuapp.com/login
${login_page_xpath}                 //h2[normalize-space()='Login Page']
${username_xpath}                   //input[@id='username']
${password_xpath}                   //input[@id='password']
${submit_button_xpath}              //button[@type='submit']
${username}                         tomsmith
${password}                         SuperSecretPassword!
${success_xpath}                    //h2[normalize-space()='Secure Area']


*** Keywords ***
Check If Internet Heroku Home Page Is Loaded
    Wait Until Element Is Visible    ${welcome_internet_heroku_xpath}

Login To Heroku Website
    Go To    ${login_url}
    Wait Until Element Is Visible    ${login_page_xpath}
    Click Element    ${username_xpath}
    Input Text    ${username_xpath}    ${username}
    Click Element    ${password_xpath}
    Input Text    ${password_xpath}    ${password}
    Click Button    ${submit_button_xpath}
    Wait Until Element Is Visible    ${success_xpath}
