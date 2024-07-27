*** Settings ***
Resource            ${CURDIR}/../Page-OR/Login-OR-Web.robot

Suite Setup         Open Chrome Browser
Suite Teardown      Suite Cleanup


*** Test Cases ***
Testing Of Internet Heroku Login Page
    Check If Internet Heroku Home Page Is Loaded
    Login To Heroku Website
    Title Should Start With    The Internet
