view: finance_ar_ap_view {
  sql_table_name: "FINANCE"."FINANCE_AR_AP_VIEW"
    ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: account_type_name {
    type: string
    sql: ${TABLE}."ACCOUNT_TYPE_NAME" ;;
  }

  dimension_group: accounting_period_ending {
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
    sql: ${TABLE}."ACCOUNTING_PERIOD_ENDING" ;;
  }

  dimension: accounting_period_full_name {
    type: string
    sql: ${TABLE}."ACCOUNTING_PERIOD_FULL_NAME" ;;
  }

  dimension: accounting_period_name {
    type: string
    sql: ${TABLE}."ACCOUNTING_PERIOD_NAME" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}."CURRENCY_NAME" ;;
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}."CURRENCY_SYMBOL" ;;
  }

  dimension: customer_city {
    type: string
    sql: ${TABLE}."CUSTOMER_CITY" ;;
  }

  dimension: customer_company_name {
    type: string
    sql: ${TABLE}."CUSTOMER_COMPANY_NAME" ;;
  }

  dimension: customer_country {
    type: string
    sql: ${TABLE}."CUSTOMER_COUNTRY" ;;
  }

  dimension_group: customer_date_first_order {
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
    sql: ${TABLE}."CUSTOMER_DATE_FIRST_ORDER" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}."CUSTOMER_STATE" ;;
  }

  dimension: customer_zipcode {
    type: string
    sql: ${TABLE}."CUSTOMER_ZIPCODE" ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}."DEPARTMENT_NAME" ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}."DISCOUNT_AMOUNT" ;;
  }

  dimension: discount_rate {
    type: string
    sql: ${TABLE}."DISCOUNT_RATE" ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}."DUE_DATE" ;;
  }

  dimension_group: inv_created {
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
    sql: ${TABLE}."INV_CREATED_DATE" ;;
  }

  dimension: inv_email {
    type: string
    sql: ${TABLE}."INV_EMAIL" ;;
  }

  dimension: inv_exchange_rate {
    type: number
    sql: ${TABLE}."INV_EXCHANGE_RATE" ;;
  }

  dimension: inv_gross_profit {
    type: number
    sql: ${TABLE}."INV_GROSS_PROFIT" ;;
  }

  dimension: inv_gross_profit_percent {
    type: number
    sql: ${TABLE}."INV_GROSS_PROFIT_PERCENT" ;;
  }

  dimension: inv_id {
    type: string
    sql: ${TABLE}."INV_ID" ;;
  }

  dimension: inv_istaxable {
    type: yesno
    sql: ${TABLE}."INV_ISTAXABLE" ;;
  }

  dimension: inv_paid_amount {
    type: number
    sql: ${TABLE}."INV_PAID_AMOUNT" ;;
  }

  dimension: inv_recognized_revenue {
    type: number
    sql: ${TABLE}."INV_RECOGNIZED_REVENUE" ;;
  }

  dimension: inv_revenue_status {
    type: string
    sql: ${TABLE}."INV_REVENUE_STATUS" ;;
  }

  dimension: inv_shipping_cost {
    type: number
    sql: ${TABLE}."INV_SHIPPING_COST" ;;
  }

  dimension: inv_state {
    type: string
    sql: ${TABLE}."INV_STATE" ;;
  }

  dimension: inv_status {
    type: string
    sql: ${TABLE}."INV_STATUS" ;;
  }

  dimension: inv_subtotal {
    type: number
    sql: ${TABLE}."INV_SUBTOTAL" ;;
  }

  dimension: inv_tax_rate {
    type: number
    sql: ${TABLE}."INV_TAX_RATE" ;;
  }

  dimension: inv_tax_total {
    type: number
    sql: ${TABLE}."INV_TAX_TOTAL" ;;
  }

  dimension: inv_total_amount {
    type: number
    sql: ${TABLE}."INV_TOTAL_AMOUNT" ;;
  }

  dimension: is_accounting_period_closed {
    type: yesno
    sql: ${TABLE}."IS_ACCOUNTING_PERIOD_CLOSED" ;;
  }

  dimension: is_taxable {
    type: yesno
    sql: ${TABLE}."IS_TAXABLE" ;;
  }

  dimension: is_transaction_non_posting {
    type: yesno
    sql: ${TABLE}."IS_TRANSACTION_NON_POSTING" ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}."ITEM_NAME" ;;
  }

  dimension: item_sales_description {
    type: string
    sql: ${TABLE}."ITEM_SALES_DESCRIPTION" ;;
  }

  dimension: item_type_name {
    type: string
    sql: ${TABLE}."ITEM_TYPE_NAME" ;;
  }

  dimension: outstanding_amount {
    type: number
    sql: ${TABLE}."OUTSTANDING_AMOUNT" ;;
  }

  dimension: pending_amount {
    type: number
    sql: ${TABLE}."PENDING_AMOUNT" ;;
  }

  dimension: posting_period {
    type: string
    sql: ${TABLE}."POSTING_PERIOD" ;;
  }

  dimension_group: receive {
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
    sql: ${TABLE}."RECEIVE_DATE" ;;
  }

  dimension: recurringbill {
    type: yesno
    sql: ${TABLE}."RECURRINGBILL" ;;
  }

  dimension: settlement_amount {
    type: number
    sql: ${TABLE}."SETTLEMENT_AMOUNT" ;;
  }

  dimension: subsidiary_name {
    type: string
    sql: ${TABLE}."SUBSIDIARY_NAME" ;;
  }

  dimension: tranid {
    type: string
    sql: ${TABLE}."TRANID" ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}."TRANSACTION_DATE" ;;
  }

  dimension_group: transaction_due {
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
    sql: ${TABLE}."TRANSACTION_DUE_DATE" ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }

  dimension: transaction_line_id {
    type: number
    sql: ${TABLE}."TRANSACTION_LINE_ID" ;;
  }

  dimension: transaction_memo {
    type: string
    sql: ${TABLE}."TRANSACTION_MEMO" ;;
  }

  dimension: transaction_status {
    type: string
    sql: ${TABLE}."TRANSACTION_STATUS" ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}."TRANSACTION_TYPE" ;;
  }

  dimension_group: vendor_create {
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
    sql: ${TABLE}."VENDOR_CREATE_DATE" ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}."VENDOR_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      accounting_period_name,
      accounting_period_full_name,
      account_name,
      department_name,
      subsidiary_name,
      customer_name,
      customer_company_name,
      item_name,
      account_type_name,
      currency_name,
      item_type_name,
      vendor_name
    ]
  }
}
