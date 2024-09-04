Select 
parse_json(RECORD_CONTENT):Amount :: varchar as amount
,parse_json(RECORD_CONTENT):Card :: varchar as card
,parse_json(RECORD_CONTENT):Day :: varchar as days
,parse_json(RECORD_CONTENT):"Is Fraud?" :: varchar as iffraud
,parse_json(RECORD_CONTENT):MCC :: varchar as mcc
,parse_json(RECORD_CONTENT):"Merchant City" :: varchar as MerchantCity
,parse_json(RECORD_CONTENT):"Merchant State" :: varchar as MerchantState
,parse_json(RECORD_CONTENT):"Merchant Name" :: varchar as MerchantName
,parse_json(RECORD_CONTENT):"Month" :: varchar as MonthNames
,parse_json(RECORD_CONTENT):"Time" :: varchar as TimeState
,parse_json(RECORD_CONTENT):"Use Chip" :: varchar as UseChipState
,parse_json(RECORD_CONTENT):"User" :: varchar as ValUser
,parse_json(RECORD_CONTENT):"Year" :: varchar as Years
,parse_json(RECORD_CONTENT):"Zip" :: varchar as Zip
from HACKATHON.PUBLIC.TRANSACTIONS Limit 100;