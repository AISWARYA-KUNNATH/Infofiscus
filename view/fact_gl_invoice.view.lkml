view: fact_gl_invoice {
  sql_table_name: "FINANCE"."FACT_GL_INVOICE"
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

  dimension: d_customers_key {
    type: number
    sql: ${TABLE}."D_CUSTOMERS_KEY" ;;
  }

  dimension: d_item_key {
    type: number
    sql: ${TABLE}."D_ITEM_KEY" ;;
  }

  dimension: d_tax_vendor_key {
    type: number
    sql: ${TABLE}."D_TAX_VENDOR_KEY" ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}."DATE_CREATED" ;;
  }

  dimension: created_date {
    type: date
    sql: ${TABLE}."DATE_CREATED" ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DUE_DATE" ;;
  }
  dimension: Trandue_date {
    type: date
    sql: ${TABLE}."DUE_DATE" ;;
  }

  dimension: dw_key_id {
    type: string
    sql: ${TABLE}."DW_KEY_ID" ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}."EXCHANGE_RATE" ;;
  }

  dimension: fact_invoice_key {
    type: number
    sql: ${TABLE}."FACT_INVOICE_KEY" ;;
  }

  dimension: gross_profit_percent {
    type: number
    sql: ${TABLE}."GROSS_PROFIT_PERCENT" ;;
  }

  dimension: grossprofit {
    type: number
    sql: ${TABLE}."GROSSPROFIT" ;;
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

  dimension: inv_status {
    type: string
    sql: ${TABLE}."INV_STATUS" ;;
  }

  dimension: inv_tranid {
    type: string
    sql: ${TABLE}."INV_TRANID" ;;
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

  dimension: subtotal {
    type: number
    sql: ${TABLE}."SUBTOTAL" ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}."TAX_RATE" ;;
  }

  dimension: tax_total {
    type: number
    sql: ${TABLE}."TAX_TOTAL" ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}."TOTAL_AMOUNT" ;;
  }

  dimension_group: trandate {
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
    sql: ${TABLE}."TRANDATE" ;;
  }
  dimension: tran_date {
    type: date
    sql: ${TABLE}."TRANDATE" ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }

  dimension: transaction_line_id {
    type: number
    sql: ${TABLE}."TRANSACTION_LINE_ID" ;;
  }
  dimension: Invoices_C {
    type: number
    sql: case when ${inv_status} = 'Paid In Full'
      then ${transaction_id} end ;;
  }

  dimension: Outstanding_Invoices_NC {
    type: number
    sql: case when ${inv_status}= 'Open'
      then ${transaction_id} end ;;
  }
  dimension: Overdue_Invoices_C {
    type: number
    sql: case when ${tran_date} > ${Trandue_date} and ${inv_status} = 'Paid In Full'
      then ${transaction_id}   end  ;;
  }
  dimension: Overdue_Invoices_NC {
    type: number
    sql: case when add_years(-7,now()) > ${Trandue_date} and ${inv_status} = 'Open'
      then ${transaction_id}   end  ;;
  }
  dimension: Invoice_Age_days  {
    type: number
    sql: DATEDIFF(day,${Trandue_date},${created_date}) ;;
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
  dimension: Outstanding_Amount {
    type: number
    sql: case when ${inv_status} = 'Open'
      then ${amount} else 0 end  ;;
  }
  dimension: Time_To_PayInvoices {
    type: number
    sql: case when  ${inv_status} = 'Paid In Full'
      then ${Diff_Date} end  ;;
  }
  dimension: Diff_Date {
    type: number
    sql: DATEDIFF(day,${date_created_date},${tran_date}) ;;
  }
  dimension: Payment_Terms {
    type: number
    sql: DATEDIFF(day,${created_date},${Trandue_date}) ;;
  }
  dimension: Invoices_Amount_Clrd {
    type: number
    sql: case when ${inv_status} = 'Paid In Full'
      then ${amount} else 0 end  ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
  measure: Invoices_Cleared {
    type: count_distinct
    sql: ${Invoices_C};;
  }
  measure: Outstanding_Invoices_NotCleared {
    type: count_distinct
    sql: ${Outstanding_Invoices_NC};;
  }
  measure: Overdue_Invoices_Cleared {
    type: count_distinct
    sql: ${Overdue_Invoices_C};;
  }
  measure: Overdue_Invoices_Not_Cleared {
    type: count_distinct
    sql: ${Overdue_Invoices_NC};;
  }
  measure: Total_Outstanding_Amount {
    type: sum
    sql: ${Outstanding_Amount} ;;
  }
  measure: Avg_Time_To_PayInvoices  {
    type: average
    sql: ${Time_To_PayInvoices} ;;
    value_format: "0"
  }
  measure: Avg_Payment_Terms {
    type: average
    sql: ${Payment_Terms} ;;
  }
  measure: Total_Invoices_Amount_Cleared {
    type: sum
    sql: ${Invoices_Amount_Clrd} ;;
  }
}
