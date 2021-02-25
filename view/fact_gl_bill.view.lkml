view: fact_gl_bill {
  sql_table_name: "FINANCE"."FACT_GL_BILL"
    ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: d_account_key {
    type: number
    sql: ${TABLE}."D_ACCOUNT_KEY" ;;
  }

  dimension: d_accountingperiods_key {
    type: number
    sql: ${TABLE}."D_ACCOUNTINGPERIODS_KEY" ;;
  }

  dimension: d_currency_key {
    type: number
    sql: ${TABLE}."D_CURRENCY_KEY" ;;
  }

  dimension: d_vendor_key {
    type: number
    sql: ${TABLE}."D_VENDOR_KEY" ;;
  }

  dimension: dw_key_id {
    type: string
    sql: ${TABLE}."DW_KEY_ID" ;;
  }

  dimension: fact_bill_key {
    type: number
    sql: ${TABLE}."FACT_BILL_KEY" ;;
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

  dimension: openbalance {
    type: number
    sql: ${TABLE}."OPENBALANCE" ;;
  }

  dimension: openbalance_foreign {
    type: number
    sql: ${TABLE}."OPENBALANCE_FOREIGN" ;;
  }

  dimension: pending_amount {
    type: number
    sql: ${TABLE}."PENDING_AMOUNT" ;;
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
  dimension: trandate_day {
    type: date
    sql:${TABLE}."TRANSACTION_DATE"  ;;
  }

  dimension_group: transaction_date_created {
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
    sql: ${TABLE}."TRANSACTION_DATE_CREATED" ;;
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

  dimension: transaction_status {
    type: string
    sql: ${TABLE}."TRANSACTION_STATUS" ;;
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
  dimension: amt {
    type: number
    sql: case when ${transaction_due_date} < ${dim_vendors.vendor_create} and ${transaction_status} = 'Open'
      then ${amount} else 0 end  ;;
  }

  dimension: Invoices_C {
    type: number
    sql: case when ${transaction_status} = 'Paid In Full'
      then ${transaction_id} end ;;
  }

  dimension: Invoices_Amount_Clrd {
    type: number
    sql: case when ${transaction_status} = 'Paid In Full'
      then ${amount} else 0 end  ;;
  }

  dimension: Diff_Date {
    type: number
    sql: DATEDIFF(day,${trandate_day},${dim_vendors.vendor_create}) ;;
  }

  dimension: Time_To_PayInvoices {
    type: number
    sql: case when  ${transaction_status} = 'Paid In Full'
      then ${Diff_Date} end  ;;
  }

  dimension: Overdue_Invoices_C {
    type: number
    sql: case when ${dim_vendors.vendor_create} > ${transaction_due_date} and ${transaction_status} = 'Paid In Full'
      then ${transaction_id} else 0 end  ;;
  }

  dimension: Outstanding_Invoices_NC {
    type: number
    sql: case when ${transaction_status} = 'Open'
      then ${transaction_id} end ;;
  }

  dimension: Overdue_Invoices_NC {
    type: number
    sql: case when ${transaction_due_date} < ${dim_vendors.vendor_create} and ${transaction_status} = 'Open'
      then ${transaction_id} end  ;;
  }

  dimension: Payment_Terms {
    type: number
    sql: DATEDIFF(day,${dim_vendors.vendor_create},${transaction_due_date}) ;;
  }

  dimension: Invoice_Age_days  {
    type: number
    sql: DATEDIFF(day,${trandate_day},${transaction_due_date}) ;;
  }
  dimension: Outstanding_Amount {
    type: number
    sql: case when ${transaction_status} = 'Open'
      then ${amount} else 0 end  ;;
  }

  dimension: Aging_Buckets {
    case: {
      when: {
        sql: ${Invoice_Age_days} <= 15   ;;
        label: "15 Days"
      }

      when: {
        sql: ${Invoice_Age_days} <= 30 ;;
        label: "30 Days"
      }
      when: {
        sql: ${Invoice_Age_days} <= 60 ;;
        label: "60 Days"
      }
      when: {
        sql: ${Invoice_Age_days} <= 90 ;;
        label: "90 Days"
      }
      when: {
        sql: ${Invoice_Age_days} >= 91  ;;
        label: "91 Days"
      }
    }
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Total_Outstanding_Amount {
    type: sum
    sql: ${Outstanding_Amount} ;;
  }

  measure: Overdue_Amount {
    type: sum
    sql: ${amt} ;;
  }

  measure: Invoices_Cleared {
    type: count_distinct
    sql: ${Invoices_C};;
  }

  measure: Total_Invoices_Amount_Cleared {
    type: sum
    sql: ${Invoices_Amount_Clrd} ;;
  }
  measure: Avg_Time_To_PayInvoices  {
    type: average
    sql: ${Time_To_PayInvoices} ;;
    value_format: "0"
  }

  measure: Overdue_Invoices_Cleared {
    type: count_distinct
    sql: ${Overdue_Invoices_C};;
  }

  measure: Outstanding_Invoices_NotCleared {
    type: count_distinct
    sql: ${Outstanding_Invoices_NC};;
  }

  measure: Overdue_Bill_NotCleared {
    type: count_distinct
    sql: ${Overdue_Invoices_NC};;
  }

  measure: Avg_Payment_Terms {
    type: average
    sql: ${Payment_Terms} ;;
  }

  measure: Aging {
    type: number
    sql: ${Invoice_Age_days} ;;
  }


}
