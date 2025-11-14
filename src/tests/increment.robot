*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

When button pressed twice the counter is two
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa

The value addsup correctly
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Click Button  Nollaa
    Click Button  Paina
    Click Button  Paina
    Input Text  value  5
    Click Button  aseta
    Page Should Contain  nappia painettu 7 kertaa