view: dim_transaction {
  sql_table_name: "FINANCE"."DIM_TRANSACTION"
    ;;

  dimension: account_based_number {
    type: string
    sql: ${TABLE}."ACCOUNT_BASED_NUMBER" ;;
  }

  dimension: accounting_book_id {
    type: number
    sql: ${TABLE}."ACCOUNTING_BOOK_ID" ;;
  }

  dimension: accounting_period_id {
    type: number
    sql: ${TABLE}."ACCOUNTING_PERIOD_ID" ;;
  }

  dimension: amount_unbilled {
    type: number
    sql: ${TABLE}."AMOUNT_UNBILLED" ;;
  }

  dimension_group: assy_dept {
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
    sql: ${TABLE}."ASSY_DEPT" ;;
  }

  dimension: bill_pay_transaction {
    type: string
    sql: ${TABLE}."BILL_PAY_TRANSACTION" ;;
  }

  dimension: billaddress {
    type: string
    sql: ${TABLE}."BILLADDRESS" ;;
  }

  dimension: billing_account_id {
    type: number
    sql: ${TABLE}."BILLING_ACCOUNT_ID" ;;
  }

  dimension: billing_instructions {
    type: string
    sql: ${TABLE}."BILLING_INSTRUCTIONS" ;;
  }

  dimension: bulk_submission_id {
    type: number
    sql: ${TABLE}."BULK_SUBMISSION_ID" ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}."CARRIER" ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}."CLOSED" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: company_status_id {
    type: number
    sql: ${TABLE}."COMPANY_STATUS_ID" ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}."CONTACTS" ;;
  }

  dimension: contract_cost_amount {
    type: number
    sql: ${TABLE}."CONTRACT_COST_AMOUNT" ;;
  }

  dimension: contract_defer_expense_acct_id {
    type: number
    sql: ${TABLE}."CONTRACT_DEFER_EXPENSE_ACCT_ID" ;;
  }

  dimension: contract_expense_acct_id {
    type: number
    sql: ${TABLE}."CONTRACT_EXPENSE_ACCT_ID" ;;
  }

  dimension: controller_approval {
    type: string
    sql: ${TABLE}."CONTROLLER_APPROVAL" ;;
  }

  dimension_group: controller_approval {
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
    sql: ${TABLE}."CONTROLLER_APPROVAL_DATE" ;;
  }

  dimension: controller_id {
    type: number
    sql: ${TABLE}."CONTROLLER_ID" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."CREATE_DATE" ;;
  }

  dimension: created_by_id {
    type: number
    sql: ${TABLE}."CREATED_BY_ID" ;;
  }

  dimension: created_from_id {
    type: number
    sql: ${TABLE}."CREATED_FROM_ID" ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}."CURRENCY_ID" ;;
  }

  dimension: custom_form_id {
    type: number
    sql: ${TABLE}."CUSTOM_FORM_ID" ;;
  }

  dimension: customer_priority_id {
    type: number
    sql: ${TABLE}."CUSTOMER_PRIORITY_ID" ;;
  }

  dimension: d_transaction_key {
    type: number
    sql: ${TABLE}."D_TRANSACTION_KEY" ;;
  }

  dimension_group: date_bid_close {
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
    sql: ${TABLE}."DATE_BID_CLOSE" ;;
  }

  dimension_group: date_bid_open {
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
    sql: ${TABLE}."DATE_BID_OPEN" ;;
  }

  dimension_group: date_last_modified {
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
    sql: ${TABLE}."DATE_LAST_MODIFIED" ;;
  }

  dimension: delivery_instructions {
    type: string
    sql: ${TABLE}."DELIVERY_INSTRUCTIONS" ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}."DUE_DATE" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: email_0 {
    type: string
    sql: ${TABLE}."EMAIL_0" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."END_DATE" ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}."ENTITY_ID" ;;
  }

  dimension: entity_tax_reg_num {
    type: string
    sql: ${TABLE}."ENTITY_TAX_REG_NUM" ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}."EXCHANGE_RATE" ;;
  }

  dimension_group: expected_close {
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
    sql: ${TABLE}."EXPECTED_CLOSE" ;;
  }

  dimension: external_ref_number {
    type: string
    sql: ${TABLE}."EXTERNAL_REF_NUMBER" ;;
  }

  dimension: failed_inspection {
    type: string
    sql: ${TABLE}."FAILED_INSPECTION" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: finance_approved {
    type: string
    sql: ${TABLE}."FINANCE_APPROVED" ;;
  }

  dimension_group: finance_approved {
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
    sql: ${TABLE}."FINANCE_APPROVED_DATE" ;;
  }

  dimension: finance_declined {
    type: string
    sql: ${TABLE}."FINANCE_DECLINED" ;;
  }

  dimension: fob {
    type: string
    sql: ${TABLE}."FOB" ;;
  }

  dimension: forecast_type {
    type: string
    sql: ${TABLE}."FORECAST_TYPE" ;;
  }

  dimension: include_in_forecast {
    type: string
    sql: ${TABLE}."INCLUDE_IN_FORECAST" ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}."INCOTERM" ;;
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

  dimension: inspected_by_id {
    type: number
    sql: ${TABLE}."INSPECTED_BY_ID" ;;
  }

  dimension_group: inspection {
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
    sql: ${TABLE}."INSPECTION_DATE" ;;
  }

  dimension: inspection_test_1 {
    type: string
    sql: ${TABLE}."INSPECTION_TEST_1" ;;
  }

  dimension: inspection_test_2 {
    type: string
    sql: ${TABLE}."INSPECTION_TEST_2" ;;
  }

  dimension: intercompany_transaction_id {
    type: number
    sql: ${TABLE}."INTERCOMPANY_TRANSACTION_ID" ;;
  }

  dimension: invoice_on_hold {
    type: string
    sql: ${TABLE}."INVOICE_ON_HOLD" ;;
  }

  dimension: is_autocalculate_lag {
    type: string
    sql: ${TABLE}."IS_AUTOCALCULATE_LAG" ;;
  }

  dimension: is_compliant {
    type: string
    sql: ${TABLE}."IS_COMPLIANT" ;;
  }

  dimension: is_created_from_merge {
    type: string
    sql: ${TABLE}."IS_CREATED_FROM_MERGE" ;;
  }

  dimension: is_finance_charge {
    type: string
    sql: ${TABLE}."IS_FINANCE_CHARGE" ;;
  }

  dimension: is_firmed {
    type: string
    sql: ${TABLE}."IS_FIRMED" ;;
  }

  dimension: is_intercompany {
    type: string
    sql: ${TABLE}."IS_INTERCOMPANY" ;;
  }

  dimension: is_merged_into_arrangements {
    type: string
    sql: ${TABLE}."IS_MERGED_INTO_ARRANGEMENTS" ;;
  }

  dimension: is_non_posting {
    type: string
    sql: ${TABLE}."IS_NON_POSTING" ;;
  }

  dimension: is_payment_hold {
    type: string
    sql: ${TABLE}."IS_PAYMENT_HOLD" ;;
  }

  dimension: is_tax_reg_override {
    type: string
    sql: ${TABLE}."IS_TAX_REG_OVERRIDE" ;;
  }

  dimension: is_wip {
    type: string
    sql: ${TABLE}."IS_WIP" ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}."ITEM_ID" ;;
  }

  dimension: item_revision {
    type: number
    sql: ${TABLE}."ITEM_REVISION" ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}."JOB_ID" ;;
  }

  dimension: landed_cost_allocation_method {
    type: string
    sql: ${TABLE}."LANDED_COST_ALLOCATION_METHOD" ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}."LAST_MODIFIED_DATE" ;;
  }

  dimension: lead_source_id {
    type: number
    sql: ${TABLE}."LEAD_SOURCE_ID" ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}."LOCATION_ID" ;;
  }

  dimension_group: machine_shop {
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
    sql: ${TABLE}."MACHINE_SHOP" ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}."MEMO" ;;
  }

  dimension: memorized {
    type: string
    sql: ${TABLE}."MEMORIZED" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }

  dimension: needs_bill {
    type: string
    sql: ${TABLE}."NEEDS_BILL" ;;
  }

  dimension: needs_revenue_commitment {
    type: string
    sql: ${TABLE}."NEEDS_REVENUE_COMMITMENT" ;;
  }

  dimension: number_of_pricing_tiers {
    type: number
    sql: ${TABLE}."NUMBER_OF_PRICING_TIERS" ;;
  }

  dimension: opening_balance_transaction {
    type: string
    sql: ${TABLE}."OPENING_BALANCE_TRANSACTION" ;;
  }

  dimension: packing_list_instructions {
    type: string
    sql: ${TABLE}."PACKING_LIST_INSTRUCTIONS" ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}."PARTNER_ID" ;;
  }

  dimension: payment_terms_id {
    type: number
    sql: ${TABLE}."PAYMENT_TERMS_ID" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."PHONE_NUMBER" ;;
  }

  dimension: pn_ref_num {
    type: string
    sql: ${TABLE}."PN_REF_NUM" ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."PROBABILITY" ;;
  }

  dimension: product_label_instructions {
    type: string
    sql: ${TABLE}."PRODUCT_LABEL_INSTRUCTIONS" ;;
  }

  dimension: projected_total {
    type: number
    sql: ${TABLE}."PROJECTED_TOTAL" ;;
  }

  dimension_group: promise {
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
    sql: ${TABLE}."PROMISE_DATE" ;;
  }

  dimension_group: promise_date_2 {
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
    sql: ${TABLE}."PROMISE_DATE_2" ;;
  }

  dimension: promotion_code_id {
    type: number
    sql: ${TABLE}."PROMOTION_CODE_ID" ;;
  }

  dimension: promotion_code_instance_id {
    type: number
    sql: ${TABLE}."PROMOTION_CODE_INSTANCE_ID" ;;
  }

  dimension: purchase_order_instructions {
    type: string
    sql: ${TABLE}."PURCHASE_ORDER_INSTRUCTIONS" ;;
  }

  dimension: reason_for_return_id {
    type: number
    sql: ${TABLE}."REASON_FOR_RETURN_ID" ;;
  }

  dimension: related_tranid {
    type: string
    sql: ${TABLE}."RELATED_TRANID" ;;
  }

  dimension_group: renewal {
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
    sql: ${TABLE}."RENEWAL" ;;
  }

  dimension: requires_finance_approval {
    type: string
    sql: ${TABLE}."REQUIRES_FINANCE_APPROVAL" ;;
  }

  dimension: requires_sales_manager_approv {
    type: string
    sql: ${TABLE}."REQUIRES_SALES_MANAGER_APPROV" ;;
  }

  dimension: revenue_commitment_status {
    type: string
    sql: ${TABLE}."REVENUE_COMMITMENT_STATUS" ;;
  }

  dimension_group: revenue_committed {
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
    sql: ${TABLE}."REVENUE_COMMITTED" ;;
  }

  dimension: revenue_status {
    type: string
    sql: ${TABLE}."REVENUE_STATUS" ;;
  }

  dimension: reversing_transaction_id {
    type: number
    sql: ${TABLE}."REVERSING_TRANSACTION_ID" ;;
  }

  dimension_group: sales_effective {
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
    sql: ${TABLE}."SALES_EFFECTIVE_DATE" ;;
  }

  dimension: sales_manager_approved {
    type: string
    sql: ${TABLE}."SALES_MANAGER_APPROVED" ;;
  }

  dimension_group: sales_manager_approved {
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
    sql: ${TABLE}."SALES_MANAGER_APPROVED_DATE" ;;
  }

  dimension: sales_manager_declined {
    type: string
    sql: ${TABLE}."SALES_MANAGER_DECLINED" ;;
  }

  dimension: sales_rep_id {
    type: number
    sql: ${TABLE}."SALES_REP_ID" ;;
  }

  dimension: scheduling_method_id {
    type: string
    sql: ${TABLE}."SCHEDULING_METHOD_ID" ;;
  }

  dimension: senior_executive_approval {
    type: string
    sql: ${TABLE}."SENIOR_EXECUTIVE_APPROVAL" ;;
  }

  dimension_group: senior_executive_approval_dat {
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
    sql: ${TABLE}."SENIOR_EXECUTIVE_APPROVAL_DAT" ;;
  }

  dimension: senior_executive_approved {
    type: string
    sql: ${TABLE}."SENIOR_EXECUTIVE_APPROVED" ;;
  }

  dimension_group: senior_executive_approved_dat {
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
    sql: ${TABLE}."SENIOR_EXECUTIVE_APPROVED_DAT" ;;
  }

  dimension: senior_executive_declined {
    type: string
    sql: ${TABLE}."SENIOR_EXECUTIVE_DECLINED" ;;
  }

  dimension: senior_executive_id {
    type: number
    sql: ${TABLE}."SENIOR_EXECUTIVE_ID" ;;
  }

  dimension: seriallot_number {
    type: string
    sql: ${TABLE}."SERIALLOT_NUMBER" ;;
  }

  dimension: shipaddress {
    type: string
    sql: ${TABLE}."SHIPADDRESS" ;;
  }

  dimension_group: shipment_received {
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
    sql: ${TABLE}."SHIPMENT_RECEIVED" ;;
  }

  dimension: shipment_status_id {
    type: number
    sql: ${TABLE}."SHIPMENT_STATUS_ID" ;;
  }

  dimension_group: shipping_dept {
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
    sql: ${TABLE}."SHIPPING_DEPT" ;;
  }

  dimension: shipping_item_id {
    type: number
    sql: ${TABLE}."SHIPPING_ITEM_ID" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: tax_reg_id {
    type: number
    sql: ${TABLE}."TAX_REG_ID" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
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

  dimension: tranid {
    type: string
    sql: ${TABLE}."TRANID" ;;
  }

  dimension: trans_is_vsoe_bundle {
    type: string
    sql: ${TABLE}."TRANS_IS_VSOE_BUNDLE" ;;
  }

  dimension: transaction_extid {
    type: string
    sql: ${TABLE}."TRANSACTION_EXTID" ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }

  dimension: transaction_number {
    type: string
    sql: ${TABLE}."TRANSACTION_NUMBER" ;;
  }

  dimension: transaction_partner {
    type: string
    sql: ${TABLE}."TRANSACTION_PARTNER" ;;
  }

  dimension: transaction_source {
    type: string
    sql: ${TABLE}."TRANSACTION_SOURCE" ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}."TRANSACTION_TYPE" ;;
  }

  dimension: transaction_website {
    type: number
    sql: ${TABLE}."TRANSACTION_WEBSITE" ;;
  }

  dimension: transfer_location {
    type: number
    sql: ${TABLE}."TRANSFER_LOCATION" ;;
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

  dimension: use_item_cost_as_transfer_cost {
    type: string
    sql: ${TABLE}."USE_ITEM_COST_AS_TRANSFER_COST" ;;
  }

  dimension: vendor_lead_time_days {
    type: number
    sql: ${TABLE}."VENDOR_LEAD_TIME_DAYS" ;;
  }

  dimension: visible_in_customer_center {
    type: string
    sql: ${TABLE}."VISIBLE_IN_CUSTOMER_CENTER" ;;
  }

  dimension: weighted_total {
    type: number
    sql: ${TABLE}."WEIGHTED_TOTAL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
