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
  join:  dim_vendors{
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_bill.d_vendor_key} = ${dim_vendors.d_vendor_key} ;;
  }

}
