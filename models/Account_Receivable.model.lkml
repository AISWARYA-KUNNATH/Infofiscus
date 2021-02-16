connection: "finance_staging"
include: "/view/**/*.view"
label: "AccountReceivable"

datagroup: infofiscus_income_expenses_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: infofiscus_income_expenses_default_datagroup
explore: finance_ar_ap_view  {
  label: "Account_Receivable"
  }
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
