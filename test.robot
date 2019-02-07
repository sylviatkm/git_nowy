*** Settings ***
Library   Selenium2Library

*** Variables ***
${BROWSER}   Firefox
${LOGIN}   testerwsb_t1
${HASLO}   adam1234
${URL}   https://profil.wp.pl/login.html?zaloguj=poczta
${XPATH_LOGIN}   //*[@id="login"]
${XPATH_HASLO}   //*[@id="password"]
${XPATH_ZALOGUJ}   //*[@id="btnSubmit"]

*** Test Case ***
Logowanie wp.pl
   Otworz Firefox i wp.pl
   Wprowadz Login
   Wprowadz Haslo
   Zaloguj
   Zamknij Firefox

*** Keywords ***
Otworz Firefox i wp.pl
   Open Browser   ${URL}   ${BROWSER}

Wprowadz Login
   Input Text   ${XPATH_LOGIN}   ${LOGIN}

Wprowadz Haslo
   Input Text   ${XPATH_HASLO}   ${HASLO}

Zaloguj
   Click Button   ${XPATH_ZALOGUJ}

Zamknij Firefox
   Close All Browsers

