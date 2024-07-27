*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}/../Utils/CustomSeleniumLibrary.py


*** Variables ***
${URL}                  https://the-internet.herokuapp.com/
${BROWSER}              Chrome
${CHROMEDRIVER_PATH}    /Users/mukeshtiwari/Downloads/selsetup/chromedriver


*** Keywords ***
Open Chrome Browser
    Open Browser    ${URL}    ${BROWSER}    service_log_path=${CHROMEDRIVER_PATH}

Suite Cleanup
    Run Keyword And Ignore Error    Close All Browsers
