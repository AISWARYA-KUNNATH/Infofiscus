view: budget_detail_analysis {
  derived_table: {
    sql: SELECT F.*,G.NAME,G.ACCOUNTNUMBER FROM(select C.*, D.FULL_NAME from (select A.ACCOUNT_ID,A.AMOUNT,B.ENTITY_ID from "NETSUITE_LANDING"."FINANCE"."TRANSACTION_LINES" A inner join "NETSUITE_LANDING"."FINANCE"."TRANSACTIONS" B on A. TRANSACTION_ID
      =B. TRANSACTION_ID) C left outer join "FINANCE_DATAMART"."FINANCE"."DIM_CUSTOMERS" D on C.ENTITY_ID=D.CUSTOMER_ID) F left outer JOIN
      "NETSUITE_LANDING"."FINANCE"."ACCOUNTS" G ON F.ACCOUNT_ID=G.ACCOUNT_ID
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}."ENTITY_ID" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."FULL_NAME" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: accountnumber {
    type: string
    sql: ${TABLE}."ACCOUNTNUMBER" ;;
  }
  measure:Amount{
    type: sum
    sql:${amount};;
    value_format: "0"
  }
  set: detail {
    fields: [
      account_id,
      amount,
      entity_id,
      full_name,
      name,
      accountnumber
    ]
  }
}
