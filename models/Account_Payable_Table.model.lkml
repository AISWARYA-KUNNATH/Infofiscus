connection: "finance_datamart"
include: "/view/**/*.view"
label: "Account_Payable_table"

datagroup: Account_Receivable_table_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Account_Receivable_table_default_datagroup
explore: fact_gl_bill{
  label: "Account_Payable"
  join: dim_account {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_account_key}=${dim_account.d_account_key} ;;
    # sql_on: ${fact_gljournals.D Account Key} = ${dim_account.D Account Key} ;;
  }
  join: dim_accountingperiods {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_accountingperiods_key} = ${dim_accountingperiods.d_accountingperiods_key} ;;
  }
  join: dim_currencies {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_currency_key} = ${dim_currencies.d_currency_key} ;;
  }

  join: dim_customers  {
    type:left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_customers_key} = ${dim_customers.d_customers_key} ;;
  }

  join:dim_department  {
    type:left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_dept_key} = ${dim_department.d_dept_key} ;;
  }
  join: dim_item {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_item_key} = ${dim_item.d_item_key} ;;
  }
  join:  dim_invoice{
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_invoice_key} = ${dim_invoice.d_invoice_key} ;;
  }
  join: dim_transaction{
    type: inner
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_transaction_key} = ${dim_transaction.d_transaction_key} ;;
  }
  join: dim_transactionlines {
    type: inner
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_transactionlines_key} = ${dim_transactionlines.d_transactionlines_key} ;;
  }
  join:  dim_vendors{
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_vendor_key} = ${dim_vendors.d_vendor_key} ;;
  }
}
