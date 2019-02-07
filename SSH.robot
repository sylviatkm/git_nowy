*** Settings ***
Library   SSHLibrary

*** Variables ***
${HOST}   127.0.0.1
${USER}   sylviatkm
${PASSWD}   linux7

*** Test Cases ***
Second Robot Test Case
   SSHLibrary.Open Connection   ${HOST}
   Login   ${USER}   ${PASSWD}

   ${rc}=   Execute Command   uname- a
   Should Contain   ${rc}   0

   Close All Connections


