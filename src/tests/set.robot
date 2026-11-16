*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter value is set to 10 the counter value becomes 10
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text="aseta"
    Get Text  body  contains  nappia painettu 10 kertaa