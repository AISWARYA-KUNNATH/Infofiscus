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

  measure: Total_Outstanding_Amount {
    type: sum
    sql: case when ${dim_transaction.status} = 'Open'
    then ${amount} end  ;;
    value_format: "0"
}

  dimension: invoice_age_days {
    type: number
    sql: DATEDIFF(day,${dim_transaction.trandate_day},${dim_transaction.trans_due})  ;;
  }



  dimension: Aging_Buckets {
    case: {
      when: {
        sql: ${invoice_age_days} <= 15 ;;
        label: "15 Days"
      }
      when: {
        sql: ${invoice_age_days} <= 30 ;;
        label: "30 Days"
      }
      when: {
        sql: ${invoice_age_days} <= 60 ;;
        label: "60 Days"
      }
      when: {
        sql: ${invoice_age_days} <= 90 ;;
        label: "90 Days"
      }
      when: {
        sql: ${invoice_age_days} <= 91 ;;
        label: "91 Days"
      }
    }
  }

  measure: Overdue_Invoices_cleared {
    type: count_distinct
    sql: case when ${dim_transaction.trans_due} < ${dim_transaction.trandate_day} and ${dim_transaction.status} = 'Paid In Full'
      then ${d_invoice_key}  end  ;;
  }

  measure: Invoices_cleared {
    type: count_distinct
    sql: case when ${dim_transaction.status} = 'Paid In Full'
      then ${d_invoice_key} end  ;;
  }

  measure: Overdue_Invoices_not_cleared {
    type: count_distinct
    sql: case when ${dim_transaction.trans_due} < current_date() and ${dim_transaction.status} = 'Open'
      then ${d_invoice_key}  end  ;;
  }

  measure: Outstanding_Invoices_not_cleared {
    type: count_distinct
    sql: case when ${dim_transaction.status} = 'Open'
      then ${d_invoice_key} end  ;;
  }

  measure: DSO_Y {
    type: running_total
    sql: ${TABLE}."AMOUNT"  ;;
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

  dimension: d_dept_key {
    type: number
    sql: ${TABLE}."D_DEPT_KEY" ;;
  }

  dimension: d_invoice_key {
    type: number
    sql: ${TABLE}."D_INVOICE_KEY" ;;
  }

  dimension: d_item_key {
    type: number
    sql: ${TABLE}."D_ITEM_KEY" ;;
  }

  dimension: d_transaction_key {
    type: number
    sql: ${TABLE}."D_TRANSACTION_KEY" ;;
  }

  dimension: d_transactionlines_key {
    type: number
    sql: ${TABLE}."D_TRANSACTIONLINES_KEY" ;;
  }

  dimension: d_vendor_key {
    type: number
    sql: ${TABLE}."D_VENDOR_KEY" ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}."DISCOUNT_AMOUNT" ;;
  }

  dimension: discount_rate {
    type: string
    sql: ${TABLE}."DISCOUNT_RATE" ;;
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
}
