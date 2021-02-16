view: dim_vendors {
  sql_table_name: "FINANCE"."DIM_VENDORS"
    ;;

  dimension: accountnumber {
    type: string
    sql: ${TABLE}."ACCOUNTNUMBER" ;;
  }

  dimension: billaddress {
    type: string
    sql: ${TABLE}."BILLADDRESS" ;;
  }

  dimension: billing_class_id {
    type: number
    sql: ${TABLE}."BILLING_CLASS_ID" ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}."CATEGORY_ID" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}."COMPANYNAME" ;;
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

  dimension: d_vendor_key {
    type: number
    sql: ${TABLE}."D_VENDOR_KEY" ;;
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

  dimension: department_id {
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."FULL_NAME" ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}."HOME_PHONE" ;;
  }

  dimension: how_did_you_hear_of_us_id {
    type: number
    sql: ${TABLE}."HOW_DID_YOU_HEAR_OF_US_ID" ;;
  }

  dimension_group: insert_dt {
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
    sql: ${TABLE}."INSERT_DT" ;;
  }

  dimension: isinactive {
    type: string
    sql: ${TABLE}."ISINACTIVE" ;;
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

  dimension: medium_id {
    type: number
    sql: ${TABLE}."MEDIUM_ID" ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MOBILE_PHONE" ;;
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

  dimension: payables_account_id {
    type: number
    sql: ${TABLE}."PAYABLES_ACCOUNT_ID" ;;
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

  dimension: priority {
    type: number
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: purchaseorderamount {
    type: number
    sql: ${TABLE}."PURCHASEORDERAMOUNT" ;;
  }

  dimension: purchaseorderquantity {
    type: number
    sql: ${TABLE}."PURCHASEORDERQUANTITY" ;;
  }

  dimension: purchaseorderquantitydiff {
    type: number
    sql: ${TABLE}."PURCHASEORDERQUANTITYDIFF" ;;
  }

  dimension: receiptamount {
    type: number
    sql: ${TABLE}."RECEIPTAMOUNT" ;;
  }

  dimension: receiptquantity {
    type: number
    sql: ${TABLE}."RECEIPTQUANTITY" ;;
  }

  dimension: receiptquantitydiff {
    type: number
    sql: ${TABLE}."RECEIPTQUANTITYDIFF" ;;
  }

  dimension: related_asset_id {
    type: number
    sql: ${TABLE}."RELATED_ASSET_ID" ;;
  }

  dimension: remaining_vendor_credit {
    type: number
    sql: ${TABLE}."REMAINING_VENDOR_CREDIT" ;;
  }

  dimension: sales_engineer {
    type: string
    sql: ${TABLE}."SALES_ENGINEER" ;;
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

  dimension: subsidiary {
    type: number
    sql: ${TABLE}."SUBSIDIARY" ;;
  }

  dimension: taxidnum {
    type: string
    sql: ${TABLE}."TAXIDNUM" ;;
  }

  dimension: unbilled_orders {
    type: number
    sql: ${TABLE}."UNBILLED_ORDERS" ;;
  }

  dimension: unbilled_orders_foreign {
    type: number
    sql: ${TABLE}."UNBILLED_ORDERS_FOREIGN" ;;
  }

  dimension_group: update_dt {
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
    sql: ${TABLE}."UPDATE_DT" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  dimension: vendor_extid {
    type: string
    sql: ${TABLE}."VENDOR_EXTID" ;;
  }

  dimension: vendor_id {
    type: number
    sql: ${TABLE}."VENDOR_ID" ;;
  }

  dimension: vendor_lead_time {
    type: number
    sql: ${TABLE}."VENDOR_LEAD_TIME" ;;
  }

  dimension: vendor_type_id {
    type: number
    sql: ${TABLE}."VENDOR_TYPE_ID" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [companyname, name, full_name]
  }
}
