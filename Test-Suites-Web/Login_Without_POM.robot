*** Settings ***
Library             SeleniumLibrary
Library             ${CURDIR}/../Utils/CustomSeleniumLibrary.py

Suite Setup         Open Chrome Browser
Suite Teardown      Suite Cleanup


*** Variables ***
${URL}                              https://the-internet.herokuapp.com/
${BROWSER}                          Chrome
${CHROMEDRIVER_PATH}                /Users/mukeshtiwari/Downloads/selsetup/chromedriver
${welcome_internet_heroku_xpath}    //h1[normalize-space()='Welcome to the-internet']
${login_url}                        https://the-internet.herokuapp.com/login
${login_page_xpath}                 //h2[normalize-space()='Login Page']
${username_xpath}                   //input[@id='username']
${password_xpath}                   //input[@id='password']
${submit_button_xpath}              //button[@type='submit']
${username}                         tomsmith
${password}                         SuperSecretPassword!
${success_xpath}                    //h2[normalize-space()='Secure Area']


*** Test Cases ***
Testing Of Internet Heroku Login Page
    Check If Internet Heroku Home Page Is Loaded
    Login To Heroku Website
    Title Should Start With    The Internet


*** Keywords ***
Open Chrome Browser
    Open Browser    ${URL}    ${BROWSER}    service_log_path=${CHROMEDRIVER_PATH}

Suite Cleanup
    Run Keyword And Ignore Error    Close All Browsers

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
