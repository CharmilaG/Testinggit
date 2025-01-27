*** Settings ***

Library    ../../salesforce_common_functions.py
Suite Setup       Initialize browser and log in to salesforce
Suite Teardown    Log out from the salesforce and close browser

*** Variables ***

${lead_creation_data}        ${CURDIR}/lead_creation_data.json
${leads_records_id_data}        ${CURDIR}/lead_records_id.json

*** Test Cases ***

test
    Create Leads    ${lead_creation_data}

