view: dim_accountcategories {
  sql_table_name: "FINANCE"."DIM_ACCOUNTCATEGORIES"
    ;;

  dimension: account_category {
    type: string
    sql: ${TABLE}."ACCOUNT_CATEGORY" ;;
  }

  dimension: account_range_max {
    type: string
    sql: ${TABLE}."ACCOUNT_RANGE_MAX" ;;
  }

  dimension: account_range_min {
    type: string
    sql: ${TABLE}."ACCOUNT_RANGE_MIN" ;;
  }

  dimension: category_type {
    type: string
    sql: ${TABLE}."CATEGORY_TYPE" ;;
  }

  dimension: d_accountcategories_key {
    type: number
    primary_key: yes
    sql: ${TABLE}."D_ACCOUNTCATEGORIES_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  dimension: Dim_Revenue{
    type:number
    sql:
       CASE WHEN ${account_category}='REVENUE'
       THEN ${fact_gljournals.net_amount}*-1
       END ;;
  }
  dimension: Dim_operating_expense{
    type:number
    sql:
  case when ${account_category}='OPERATING EXPENSES'
  THEN ${fact_gljournals.net_amount} END;;
}
  dimension: Dim_Expense{
    type:number
    sql:
      case when ${category_type}='Expenses'
      THEN ${fact_gljournals.net_amount} END;;
  }

  dimension: Dim_cost_of_goods_sold{
    type:number
    sql:
      case when ${account_category}='COST OF GOODS SOLD'
      THEN ${fact_gljournals.net_amount} END;;
  }

  dimension: Dim_assets{
    type:number
    sql:
      case when ${account_category}='ASSETS'
      THEN ${fact_gljournals.net_amount} END;;
  }

  dimension: Dim_Liabilities{
    type:number
    sql:
      case when ${category_type}='Liabilities'
      THEN ${fact_gljournals.net_amount}*-1
      END;;
  }


}
