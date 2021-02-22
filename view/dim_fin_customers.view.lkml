view: dim_fin_customers {
  sql_table_name: "FINANCE"."DIM_FIN_CUSTOMERS"
    ;;

  dimension: accountnumber {
    type: string
    sql: ${TABLE}."ACCOUNTNUMBER" ;;
  }

  dimension: alcohol_recipient_type {
    type: string
    sql: ${TABLE}."ALCOHOL_RECIPIENT_TYPE" ;;
  }

  dimension: allow_task_time_for_allocation {
    type: string
    sql: ${TABLE}."ALLOW_TASK_TIME_FOR_ALLOCATION" ;;
  }

  dimension: altemail {
    type: string
    sql: ${TABLE}."ALTEMAIL" ;;
  }

  dimension: alternate_contact_id {
    type: number
    sql: ${TABLE}."ALTERNATE_CONTACT_ID" ;;
  }

  dimension: altphone {
    type: string
    sql: ${TABLE}."ALTPHONE" ;;
  }

  dimension: amount_complete {
    type: number
    sql: ${TABLE}."AMOUNT_COMPLETE" ;;
  }

  dimension: annual_revenue_id {
    type: number
    sql: ${TABLE}."ANNUAL_REVENUE_ID" ;;
  }

  dimension: ap_contact_person {
    type: string
    sql: ${TABLE}."AP_CONTACT_PERSON" ;;
  }

  dimension: billaddress {
    type: string
    sql: ${TABLE}."BILLADDRESS" ;;
  }

  dimension: billing_rate_card_id {
    type: number
    sql: ${TABLE}."BILLING_RATE_CARD_ID" ;;
  }

  dimension: billing_schedule_id {
    type: number
    sql: ${TABLE}."BILLING_SCHEDULE_ID" ;;
  }

  dimension: billing_schedule_type {
    type: string
    sql: ${TABLE}."BILLING_SCHEDULE_TYPE" ;;
  }

  dimension: billing_transaction_type {
    type: string
    sql: ${TABLE}."BILLING_TRANSACTION_TYPE" ;;
  }

  dimension_group: calculated_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CALCULATED_END" ;;
  }

  dimension: category_0 {
    type: string
    sql: ${TABLE}."CATEGORY_0" ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}."CATEGORY_ID" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: collection_notes {
    type: string
    sql: ${TABLE}."COLLECTION_NOTES" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: company_size_id {
    type: number
    sql: ${TABLE}."COMPANY_SIZE_ID" ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}."COMPANYNAME" ;;
  }

  dimension: consol_days_overdue {
    type: number
    sql: ${TABLE}."CONSOL_DAYS_OVERDUE" ;;
  }

  dimension: consol_deposit_balance {
    type: number
    sql: ${TABLE}."CONSOL_DEPOSIT_BALANCE" ;;
  }

  dimension: consol_deposit_balance_foreign {
    type: number
    sql: ${TABLE}."CONSOL_DEPOSIT_BALANCE_FOREIGN" ;;
  }

  dimension: consol_openbalance {
    type: number
    sql: ${TABLE}."CONSOL_OPENBALANCE" ;;
  }

  dimension: consol_openbalance_foreign {
    type: number
    sql: ${TABLE}."CONSOL_OPENBALANCE_FOREIGN" ;;
  }

  dimension: consol_unbilled_orders {
    type: number
    sql: ${TABLE}."CONSOL_UNBILLED_ORDERS" ;;
  }

  dimension: consol_unbilled_orders_foreign {
    type: number
    sql: ${TABLE}."CONSOL_UNBILLED_ORDERS_FOREIGN" ;;
  }

  dimension: converted_to_contact_id {
    type: number
    sql: ${TABLE}."CONVERTED_TO_CONTACT_ID" ;;
  }

  dimension: converted_to_id {
    type: number
    sql: ${TABLE}."CONVERTED_TO_ID" ;;
  }

  dimension: cost_estimate {
    type: number
    sql: ${TABLE}."COST_ESTIMATE" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATE_DATE" ;;
  }

  dimension: credithold {
    type: string
    sql: ${TABLE}."CREDITHOLD" ;;
  }

  dimension: creditlimit {
    type: number
    sql: ${TABLE}."CREDITLIMIT" ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}."CURRENCY_ID" ;;
  }

  dimension: current_sales_order_id {
    type: number
    sql: ${TABLE}."CURRENT_SALES_ORDER_ID" ;;
  }

  dimension: customer_credit_on_hold {
    type: string
    sql: ${TABLE}."CUSTOMER_CREDIT_ON_HOLD" ;;
  }

  dimension: customer_extid {
    type: string
    sql: ${TABLE}."CUSTOMER_EXTID" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: customer_type_id {
    type: number
    sql: ${TABLE}."CUSTOMER_TYPE_ID" ;;
  }

  dimension: d_f_customers_key {
    type: number
    sql: ${TABLE}."D_F_CUSTOMERS_KEY" ;;
  }

  dimension_group: date_closed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_CLOSED" ;;
  }

  dimension_group: date_convsersion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_CONVSERSION" ;;
  }

  dimension_group: date_first_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_FIRST_ORDER" ;;
  }

  dimension_group: date_first_sale {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_FIRST_SALE" ;;
  }

  dimension_group: date_gross_lead {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_GROSS_LEAD" ;;
  }

  dimension_group: date_last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_LAST_MODIFIED" ;;
  }

  dimension_group: date_last_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_LAST_ORDER" ;;
  }

  dimension_group: date_last_sale {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_LAST_SALE" ;;
  }

  dimension_group: date_lead {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_LEAD" ;;
  }

  dimension_group: date_prospect {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_PROSPECT" ;;
  }

  dimension: days_overdue {
    type: number
    sql: ${TABLE}."DAYS_OVERDUE" ;;
  }

  dimension: default_cost_template_id {
    type: number
    sql: ${TABLE}."DEFAULT_COST_TEMPLATE_ID" ;;
  }

  dimension: default_order_priority {
    type: number
    sql: ${TABLE}."DEFAULT_ORDER_PRIORITY" ;;
  }

  dimension: default_receivables_account_id {
    type: number
    sql: ${TABLE}."DEFAULT_RECEIVABLES_ACCOUNT_ID" ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }

  dimension: deposit_balance {
    type: number
    sql: ${TABLE}."DEPOSIT_BALANCE" ;;
  }

  dimension: deposit_balance_foreign {
    type: number
    sql: ${TABLE}."DEPOSIT_BALANCE_FOREIGN" ;;
  }

  dimension: direct_debit {
    type: string
    sql: ${TABLE}."DIRECT_DEBIT" ;;
  }

  dimension: eft_bill_payment {
    type: string
    sql: ${TABLE}."EFT_BILL_PAYMENT" ;;
  }

  dimension: eft_customer_refund_payment {
    type: string
    sql: ${TABLE}."EFT_CUSTOMER_REFUND_PAYMENT" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension_group: expected_close {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."EXPECTED_CLOSE" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: first_sale_period_id {
    type: number
    sql: ${TABLE}."FIRST_SALE_PERIOD_ID" ;;
  }

  dimension_group: first_visit {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."FIRST_VISIT" ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}."FIRSTNAME" ;;
  }

  dimension: forecast_based_on_allocations {
    type: string
    sql: ${TABLE}."FORECAST_BASED_ON_ALLOCATIONS" ;;
  }

  dimension: forecast_charge_run_on_demand {
    type: string
    sql: ${TABLE}."FORECAST_CHARGE_RUN_ON_DEMAND" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."FULL_NAME" ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}."HOME_PHONE" ;;
  }

  dimension: hot_lead {
    type: string
    sql: ${TABLE}."HOT_LEAD" ;;
  }

  dimension: how_did_you_hear_of_us_id {
    type: number
    sql: ${TABLE}."HOW_DID_YOU_HEAR_OF_US_ID" ;;
  }

  dimension: industry_type_id {
    type: number
    sql: ${TABLE}."INDUSTRY_TYPE_ID" ;;
  }

  dimension_group: insert {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."INSERT_DATE" ;;
  }

  dimension: is_exempt_time {
    type: string
    sql: ${TABLE}."IS_EXEMPT_TIME" ;;
  }

  dimension: is_explicit_conversion {
    type: string
    sql: ${TABLE}."IS_EXPLICIT_CONVERSION" ;;
  }

  dimension: is_job {
    type: string
    sql: ${TABLE}."IS_JOB" ;;
  }

  dimension: is_limit_time_to_assignees {
    type: string
    sql: ${TABLE}."IS_LIMIT_TIME_TO_ASSIGNEES" ;;
  }

  dimension: is_manufacturer {
    type: string
    sql: ${TABLE}."IS_MANUFACTURER" ;;
  }

  dimension: is_person {
    type: string
    sql: ${TABLE}."IS_PERSON" ;;
  }

  dimension: is_productive_time {
    type: string
    sql: ${TABLE}."IS_PRODUCTIVE_TIME" ;;
  }

  dimension: is_project_completely_billed {
    type: string
    sql: ${TABLE}."IS_PROJECT_COMPLETELY_BILLED" ;;
  }

  dimension: is_utilized_time {
    type: string
    sql: ${TABLE}."IS_UTILIZED_TIME" ;;
  }

  dimension: isemailhtml {
    type: string
    sql: ${TABLE}."ISEMAILHTML" ;;
  }

  dimension: isemailpdf {
    type: string
    sql: ${TABLE}."ISEMAILPDF" ;;
  }

  dimension: isinactive {
    type: string
    sql: ${TABLE}."ISINACTIVE" ;;
  }

  dimension: istaxable {
    type: string
    sql: ${TABLE}."ISTAXABLE" ;;
  }

  dimension_group: job_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."JOB_END" ;;
  }

  dimension_group: job_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."JOB_START" ;;
  }

  dimension: job_type_id {
    type: number
    sql: ${TABLE}."JOB_TYPE_ID" ;;
  }

  dimension: keyword_search2_id {
    type: number
    sql: ${TABLE}."KEYWORD_SEARCH2_ID" ;;
  }

  dimension: keyword_search_id {
    type: number
    sql: ${TABLE}."KEYWORD_SEARCH_ID" ;;
  }

  dimension: labor_budget_from_allocations {
    type: string
    sql: ${TABLE}."LABOR_BUDGET_FROM_ALLOCATIONS" ;;
  }

  dimension: language_id {
    type: string
    sql: ${TABLE}."LANGUAGE_ID" ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LAST_MODIFIED_DATE" ;;
  }

  dimension: last_sale_period_id {
    type: number
    sql: ${TABLE}."LAST_SALE_PERIOD_ID" ;;
  }

  dimension_group: last_visit {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LAST_VISIT" ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}."LASTNAME" ;;
  }

  dimension: lead_source_id {
    type: number
    sql: ${TABLE}."LEAD_SOURCE_ID" ;;
  }

  dimension: line1 {
    type: string
    sql: ${TABLE}."LINE1" ;;
  }

  dimension: line2 {
    type: string
    sql: ${TABLE}."LINE2" ;;
  }

  dimension: line3 {
    type: string
    sql: ${TABLE}."LINE3" ;;
  }

  dimension: loginaccess {
    type: string
    sql: ${TABLE}."LOGINACCESS" ;;
  }

  dimension: medium_id {
    type: number
    sql: ${TABLE}."MEDIUM_ID" ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}."MIDDLENAME" ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MOBILE_PHONE" ;;
  }

  dimension: multiple_price_id {
    type: number
    sql: ${TABLE}."MULTIPLE_PRICE_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: openbalance {
    type: number
    sql: ${TABLE}."OPENBALANCE" ;;
  }

  dimension: openbalance_foreign {
    type: number
    sql: ${TABLE}."OPENBALANCE_FOREIGN" ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}."PARTNER_ID" ;;
  }

  dimension: payment__of_balance {
    type: number
    sql: ${TABLE}."PAYMENT__OF_BALANCE" ;;
  }

  dimension: payment_commitment_amount {
    type: number
    sql: ${TABLE}."PAYMENT_COMMITMENT_AMOUNT" ;;
  }

  dimension_group: payment_commitment {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PAYMENT_COMMITMENT_DATE" ;;
  }

  dimension: payment_terms_id {
    type: number
    sql: ${TABLE}."PAYMENT_TERMS_ID" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: primary_contact_id {
    type: number
    sql: ${TABLE}."PRIMARY_CONTACT_ID" ;;
  }

  dimension: print_on_check_as {
    type: string
    sql: ${TABLE}."PRINT_ON_CHECK_AS" ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."PROBABILITY" ;;
  }

  dimension: product_interest_id {
    type: number
    sql: ${TABLE}."PRODUCT_INTEREST_ID" ;;
  }

  dimension: project_expense_type_id {
    type: number
    sql: ${TABLE}."PROJECT_EXPENSE_TYPE_ID" ;;
  }

  dimension_group: projected_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PROJECTED_END" ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}."REFERRER" ;;
  }

  dimension: related_asset_id {
    type: number
    sql: ${TABLE}."RELATED_ASSET_ID" ;;
  }

  dimension: remaining_vendor_credit {
    type: number
    sql: ${TABLE}."REMAINING_VENDOR_CREDIT" ;;
  }

  dimension: reminderdays {
    type: number
    sql: ${TABLE}."REMINDERDAYS" ;;
  }

  dimension_group: renewal {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."RENEWAL" ;;
  }

  dimension: represents_subsidiary_id {
    type: number
    sql: ${TABLE}."REPRESENTS_SUBSIDIARY_ID" ;;
  }

  dimension: resalenumber {
    type: string
    sql: ${TABLE}."RESALENUMBER" ;;
  }

  dimension: rev_rec_forecast_rule_id {
    type: number
    sql: ${TABLE}."REV_REC_FORECAST_RULE_ID" ;;
  }

  dimension: rev_rec_forecast_template {
    type: number
    sql: ${TABLE}."REV_REC_FORECAST_TEMPLATE" ;;
  }

  dimension: revenue_estimate {
    type: number
    sql: ${TABLE}."REVENUE_ESTIMATE" ;;
  }

  dimension: sales_engineer {
    type: string
    sql: ${TABLE}."SALES_ENGINEER" ;;
  }

  dimension: sales_rep_id {
    type: number
    sql: ${TABLE}."SALES_REP_ID" ;;
  }

  dimension: sales_territory_id {
    type: number
    sql: ${TABLE}."SALES_TERRITORY_ID" ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}."SALUTATION" ;;
  }

  dimension: search_engine_id {
    type: number
    sql: ${TABLE}."SEARCH_ENGINE_ID" ;;
  }

  dimension: set_customer_credit_on_hold {
    type: string
    sql: ${TABLE}."SET_CUSTOMER_CREDIT_ON_HOLD" ;;
  }

  dimension: ship_complete {
    type: string
    sql: ${TABLE}."SHIP_COMPLETE" ;;
  }

  dimension: shipaddress {
    type: string
    sql: ${TABLE}."SHIPADDRESS" ;;
  }

  dimension: shipping_instructions {
    type: string
    sql: ${TABLE}."SHIPPING_INSTRUCTIONS" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: status_descr {
    type: string
    sql: ${TABLE}."STATUS_DESCR" ;;
  }

  dimension: status_probability {
    type: number
    sql: ${TABLE}."STATUS_PROBABILITY" ;;
  }

  dimension: status_read_only {
    type: string
    sql: ${TABLE}."STATUS_READ_ONLY" ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}."SUBSIDIARY_ID" ;;
  }

  dimension: supervisore_id {
    type: number
    sql: ${TABLE}."SUPERVISORE_ID" ;;
  }

  dimension: tax_item_id {
    type: number
    sql: ${TABLE}."TAX_ITEM_ID" ;;
  }

  dimension: third_party_acct {
    type: string
    sql: ${TABLE}."THIRD_PARTY_ACCT" ;;
  }

  dimension: third_party_carrier {
    type: string
    sql: ${TABLE}."THIRD_PARTY_CARRIER" ;;
  }

  dimension: third_party_country {
    type: string
    sql: ${TABLE}."THIRD_PARTY_COUNTRY" ;;
  }

  dimension: third_party_zip_code {
    type: string
    sql: ${TABLE}."THIRD_PARTY_ZIP_CODE" ;;
  }

  dimension: top_level_parent_id {
    type: number
    sql: ${TABLE}."TOP_LEVEL_PARENT_ID" ;;
  }

  dimension: unbilled_orders {
    type: number
    sql: ${TABLE}."UNBILLED_ORDERS" ;;
  }

  dimension: unbilled_orders_foreign {
    type: number
    sql: ${TABLE}."UNBILLED_ORDERS_FOREIGN" ;;
  }

  dimension_group: update {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."UPDATE_DATE" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  dimension: use_calculated_billing_budget {
    type: string
    sql: ${TABLE}."USE_CALCULATED_BILLING_BUDGET" ;;
  }

  dimension: use_calculated_cost_budget {
    type: string
    sql: ${TABLE}."USE_CALCULATED_COST_BUDGET" ;;
  }

  dimension: use_percent_complete_override {
    type: string
    sql: ${TABLE}."USE_PERCENT_COMPLETE_OVERRIDE" ;;
  }

  dimension: vendor_lead_time {
    type: number
    sql: ${TABLE}."VENDOR_LEAD_TIME" ;;
  }

  dimension: wc_picture {
    type: number
    sql: ${TABLE}."WC_PICTURE" ;;
  }

  dimension: web_lead {
    type: string
    sql: ${TABLE}."WEB_LEAD" ;;
  }

  dimension: wrnty_center_phone {
    type: string
    sql: ${TABLE}."WRNTY_CENTER_PHONE" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      full_name,
      lastname,
      companyname,
      firstname,
      name,
      middlename
    ]
  }
}
