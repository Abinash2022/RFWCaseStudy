*** Settings ***
Library    SeleniumLibrary
Library    AxeLibrary


*** Test Cases ***
Sample A11ytest
    Open Browser    https://demoblaze.com/    chrome
    &{results}    Run Accessibility Tests    homePageA11yReport.json
    Log To Console    Violations Count : ${results.violations}
    Log Readable Accessibility Result    violations
    Get Json Accessibility Result