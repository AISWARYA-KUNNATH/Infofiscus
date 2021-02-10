connection: "finance_datamart"
include: "/view/**/*.view"
label: "Infofiscus Supply Chain"

datagroup: infofiscus_income_expenses_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: infofiscus_income_expenses_default_datagroup
explore: fact_booking_daily {
  label: "Booking Analysis"
  join: dim_date {
    type: full_outer
    relationship: many_to_one
    sql_on: ${fact_booking_daily.d_actual_ship_date_key} = ${dim_date.date_pkey} ;;
     }
    join: dim_booking_date{
      type: full_outer
      relationship: many_to_one
      sql_on: ${fact_booking_daily.d_booked_date_key} = ${dim_booking_date.date_pkey} ;;
      }
    join: dim_promised_date {
      type: full_outer
      relationship: many_to_one
      sql: ${fact_booking_daily.d_promised_ship_date_key} = ${dim_promised_date.date_pkey} ;;
    }

  join: dim_account {
    type: full_outer
    relationship: many_to_one
    sql_on: ${fact_booking_daily.d_account_key}=${dim_account.d_account_key} ;;

  }
  join: dim_customers {
    type: full_outer
    relationship: many_to_one
    sql_on: ${fact_booking_daily.d_ship_to_customer_key} =${dim_customers.d_customers_key};;
  }
  join: dim_product {
    type: full_outer
    relationship: many_to_one
    sql_on: ${fact_booking_daily.d_product_key}=${dim_product.d_product_key} ;;
  }
join: dim_sales_order {
  type: full_outer
  relationship: many_to_one
  sql_on:  ${fact_booking_daily.d_sales_order_key}=${dim_sales_order.d_sales_order_key};;

}

join: fact_shipment_daily {
  type: full_outer
  relationship: many_to_one
  sql_on: ${fact_booking_daily.transaction_line_id}=${fact_shipment_daily.order_line_id}
  and ${fact_booking_daily.order_number}=${fact_shipment_daily.order_number};;

}


    }
