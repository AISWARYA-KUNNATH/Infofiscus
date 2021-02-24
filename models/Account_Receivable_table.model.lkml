connection: "finance_datamart"
include: "/view/**/*.view"
label: "Account_Receivable_table"

datagroup: Account_Receivable_table_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Account_Receivable_table_default_datagroup
explore: fact_gl_invoice{
  label: "Account_Receivable"
  join: dim_account {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_account_key}=${dim_account.d_account_key} ;;
    # sql_on: ${fact_gljournals.D Account Key} = ${dim_account.D Account Key} ;;
  }
  join: dim_accountingperiods {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_accountingperiods_key} = ${dim_accountingperiods.d_accountingperiods_key} ;;
  }
  join: dim_currencies {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_currency_key} = ${dim_currencies.d_currency_key} ;;
  }

  join: dim_fin_customers  {
    type:left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_customers_key} = ${dim_fin_customers.d_f_customers_key};;
  }

  join: dim_item {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_item_key} = ${dim_item.d_item_key} ;;
  }
  join: dim_vendors {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_tax_vendor_key} = ${dim_vendors.d_vendor_key} ;;
  }
}
