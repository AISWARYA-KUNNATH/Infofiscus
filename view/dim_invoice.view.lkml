view: dim_invoice {
  sql_table_name: "FINANCE"."DIM_INVOICE"
    ;;

  dimension: account_internalid {
    type: string
    sql: ${TABLE}."ACCOUNT_INTERNALID" ;;
  }

  dimension: althandlingcost {
    type: number
    sql: ${TABLE}."ALTHANDLINGCOST" ;;
  }

  dimension: altshippingcost {
    type: number
    sql: ${TABLE}."ALTSHIPPINGCOST" ;;
  }

  dimension: amountpaid {
    type: number
    value_format_name: id
    sql: ${TABLE}."AMOUNTPAID" ;;
  }

  dimension: amountremaining {
    type: number
    sql: ${TABLE}."AMOUNTREMAINING" ;;
  }

  dimension: approvalstatus_internalid {
    type: string
    sql: ${TABLE}."APPROVALSTATUS_INTERNALID" ;;
  }

  dimension: approvalstatus_name {
    type: string
    sql: ${TABLE}."APPROVALSTATUS_NAME" ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}."BALANCE" ;;
  }

  dimension: billaddresslist_internalid {
    type: string
    sql: ${TABLE}."BILLADDRESSLIST_INTERNALID" ;;
  }

  dimension: billaddresslist_name {
    type: string
    sql: ${TABLE}."BILLADDRESSLIST_NAME" ;;
  }

  dimension: billingaccount_internalid {
    type: string
    sql: ${TABLE}."BILLINGACCOUNT_INTERNALID" ;;
  }

  dimension: billingaddress_addr1 {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_ADDR1" ;;
  }

  dimension: billingaddress_addr2 {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_ADDR2" ;;
  }

  dimension: billingaddress_addr3 {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_ADDR3" ;;
  }

  dimension: billingaddress_addressee {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_ADDRESSEE" ;;
  }

  dimension: billingaddress_addrphone {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_ADDRPHONE" ;;
  }

  dimension: billingaddress_addrtext {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_ADDRTEXT" ;;
  }

  dimension: billingaddress_attention {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_ATTENTION" ;;
  }

  dimension: billingaddress_city {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_CITY" ;;
  }

  dimension: billingaddress_country {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_COUNTRY" ;;
  }

  dimension: billingaddress_internalid {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_INTERNALID" ;;
  }

  dimension: billingaddress_override {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_OVERRIDE" ;;
  }

  dimension: billingaddress_state {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_STATE" ;;
  }

  dimension: billingaddress_zip {
    type: string
    sql: ${TABLE}."BILLINGADDRESS_ZIP" ;;
  }

  dimension: billingschedule_internalid {
    type: string
    sql: ${TABLE}."BILLINGSCHEDULE_INTERNALID" ;;
  }

  dimension: class_internalid {
    type: string
    sql: ${TABLE}."CLASS_INTERNALID" ;;
  }

  dimension: contribpct {
    type: string
    sql: ${TABLE}."CONTRIBPCT" ;;
  }

  dimension: createdfrom_internalid {
    type: string
    sql: ${TABLE}."CREATEDFROM_INTERNALID" ;;
  }

  dimension: currency_internalid {
    type: string
    sql: ${TABLE}."CURRENCY_INTERNALID" ;;
  }

  dimension: currencyname {
    type: string
    sql: ${TABLE}."CURRENCYNAME" ;;
  }

  dimension: d_invoice_key {
    type: number
    sql: ${TABLE}."D_INVOICE_KEY" ;;
  }

  dimension_group: datecreated {
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
    sql: ${TABLE}."DATECREATED" ;;
  }

  dimension: deferredrevenue {
    type: number
    sql: ${TABLE}."DEFERREDREVENUE" ;;
  }

  dimension: department_internalid {
    type: string
    sql: ${TABLE}."DEPARTMENT_INTERNALID" ;;
  }

  dimension: discountamount {
    type: number
    sql: ${TABLE}."DISCOUNTAMOUNT" ;;
  }

  dimension_group: discountdate {
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
    sql: ${TABLE}."DISCOUNTDATE" ;;
  }

  dimension: discountitem_internalid {
    type: string
    sql: ${TABLE}."DISCOUNTITEM_INTERNALID" ;;
  }

  dimension: discountrate {
    type: string
    sql: ${TABLE}."DISCOUNTRATE" ;;
  }

  dimension: discounttotal {
    type: number
    sql: ${TABLE}."DISCOUNTTOTAL" ;;
  }

  dimension_group: duedate {
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
    sql: ${TABLE}."DUEDATE" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}."EMAIL_ADDRESS" ;;
  }

  dimension_group: enddate {
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
    sql: ${TABLE}."ENDDATE" ;;
  }

  dimension: entity_internalid {
    type: string
    sql: ${TABLE}."ENTITY_INTERNALID" ;;
  }

  dimension: estgrossprofit {
    type: number
    sql: ${TABLE}."ESTGROSSPROFIT" ;;
  }

  dimension: estgrossprofitpercent {
    type: number
    sql: ${TABLE}."ESTGROSSPROFITPERCENT" ;;
  }

  dimension: exchangerate {
    type: number
    sql: ${TABLE}."EXCHANGERATE" ;;
  }

  dimension: excludecommission {
    type: string
    sql: ${TABLE}."EXCLUDECOMMISSION" ;;
  }

  dimension: expcostdiscamount {
    type: number
    sql: ${TABLE}."EXPCOSTDISCAMOUNT" ;;
  }

  dimension: expcostdiscount_internalid {
    type: string
    sql: ${TABLE}."EXPCOSTDISCOUNT_INTERNALID" ;;
  }

  dimension: expcostdiscount_name {
    type: string
    sql: ${TABLE}."EXPCOSTDISCOUNT_NAME" ;;
  }

  dimension: expcostdiscprint {
    type: string
    sql: ${TABLE}."EXPCOSTDISCPRINT" ;;
  }

  dimension: expcostdiscrate {
    type: string
    sql: ${TABLE}."EXPCOSTDISCRATE" ;;
  }

  dimension: expcostdisctax1_amt {
    type: number
    sql: ${TABLE}."EXPCOSTDISCTAX1AMT" ;;
  }

  dimension: expcostdisctaxable {
    type: string
    sql: ${TABLE}."EXPCOSTDISCTAXABLE" ;;
  }

  dimension: expcosttaxcode_internalid {
    type: string
    sql: ${TABLE}."EXPCOSTTAXCODE_INTERNALID" ;;
  }

  dimension: expcosttaxcode_name {
    type: string
    sql: ${TABLE}."EXPCOSTTAXCODE_NAME" ;;
  }

  dimension: expcosttaxrate1 {
    type: number
    sql: ${TABLE}."EXPCOSTTAXRATE1" ;;
  }

  dimension: expcosttaxrate2 {
    type: number
    sql: ${TABLE}."EXPCOSTTAXRATE2" ;;
  }

  dimension: externalid {
    type: string
    sql: ${TABLE}."EXTERNALID" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: fax_address {
    type: string
    sql: ${TABLE}."FAX_ADDRESS" ;;
  }

  dimension: fob {
    type: string
    sql: ${TABLE}."FOB" ;;
  }

  dimension: fob_address {
    type: string
    sql: ${TABLE}."FOB_ADDRESS" ;;
  }

  dimension: giftcertapplied {
    type: number
    sql: ${TABLE}."GIFTCERTAPPLIED" ;;
  }

  dimension: handlingcost {
    type: number
    sql: ${TABLE}."HANDLINGCOST" ;;
  }

  dimension: handlingtax1_rate {
    type: number
    sql: ${TABLE}."HANDLINGTAX1RATE" ;;
  }

  dimension: handlingtax2_rate {
    type: string
    sql: ${TABLE}."HANDLINGTAX2RATE" ;;
  }

  dimension: handlingtaxcode_internalid {
    type: string
    sql: ${TABLE}."HANDLINGTAXCODE_INTERNALID" ;;
  }

  dimension: handlingtaxcode_name {
    type: string
    sql: ${TABLE}."HANDLINGTAXCODE_NAME" ;;
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

  dimension: internalid {
    type: string
    sql: ${TABLE}."INTERNALID" ;;
  }

  dimension: is_tax_able {
    type: string
    sql: ${TABLE}."IS_TAX_ABLE" ;;
  }

  dimension: istaxable {
    type: string
    sql: ${TABLE}."ISTAXABLE" ;;
  }

  dimension: itemcostdiscamount {
    type: number
    sql: ${TABLE}."ITEMCOSTDISCAMOUNT" ;;
  }

  dimension: itemcostdiscount_internalid {
    type: string
    sql: ${TABLE}."ITEMCOSTDISCOUNT_INTERNALID" ;;
  }

  dimension: itemcostdiscount_name {
    type: string
    sql: ${TABLE}."ITEMCOSTDISCOUNT_NAME" ;;
  }

  dimension: itemcostdiscprint {
    type: string
    sql: ${TABLE}."ITEMCOSTDISCPRINT" ;;
  }

  dimension: itemcostdiscrate {
    type: string
    sql: ${TABLE}."ITEMCOSTDISCRATE" ;;
  }

  dimension: itemcostdisctax1_amt {
    type: number
    sql: ${TABLE}."ITEMCOSTDISCTAX1AMT" ;;
  }

  dimension: itemcostdisctaxable {
    type: string
    sql: ${TABLE}."ITEMCOSTDISCTAXABLE" ;;
  }

  dimension: itemcosttaxcode_internalid {
    type: string
    sql: ${TABLE}."ITEMCOSTTAXCODE_INTERNALID" ;;
  }

  dimension: itemcosttaxcode_name {
    type: string
    sql: ${TABLE}."ITEMCOSTTAXCODE_NAME" ;;
  }

  dimension: itemcosttaxrate1 {
    type: number
    sql: ${TABLE}."ITEMCOSTTAXRATE1" ;;
  }

  dimension: itemcosttaxrate2 {
    type: number
    sql: ${TABLE}."ITEMCOSTTAXRATE2" ;;
  }

  dimension: job_internalid {
    type: string
    sql: ${TABLE}."JOB_INTERNALID" ;;
  }

  dimension_group: lastmodifieddate {
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
    sql: ${TABLE}."LASTMODIFIEDDATE" ;;
  }

  dimension: leadsource_internalid {
    type: string
    sql: ${TABLE}."LEADSOURCE_INTERNALID" ;;
  }

  dimension: linkedtrackingnumbers {
    type: string
    sql: ${TABLE}."LINKEDTRACKINGNUMBERS" ;;
  }

  dimension: location_internalid {
    type: string
    sql: ${TABLE}."LOCATION_INTERNALID" ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}."MEMO" ;;
  }

  dimension: memo_address {
    type: string
    sql: ${TABLE}."MEMO_ADDRESS" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }

  dimension: messages {
    type: string
    sql: ${TABLE}."MESSAGES" ;;
  }

  dimension: messagesel_internalid {
    type: string
    sql: ${TABLE}."MESSAGESEL_INTERNALID" ;;
  }

  dimension: nextapprover_internalid {
    type: string
    sql: ${TABLE}."NEXTAPPROVER_INTERNALID" ;;
  }

  dimension: nextapprover_name {
    type: string
    sql: ${TABLE}."NEXTAPPROVER_NAME" ;;
  }

  dimension: oncredithold {
    type: string
    sql: ${TABLE}."ONCREDITHOLD" ;;
  }

  dimension: opportunity_internalid {
    type: string
    sql: ${TABLE}."OPPORTUNITY_INTERNALID" ;;
  }

  dimension: otherrefnum {
    type: string
    sql: ${TABLE}."OTHERREFNUM" ;;
  }

  dimension: partner_internalid {
    type: string
    sql: ${TABLE}."PARTNER_INTERNALID" ;;
  }

  dimension: postingperiod_internalid {
    type: string
    sql: ${TABLE}."POSTINGPERIOD_INTERNALID" ;;
  }

  dimension: promocode_internalid {
    type: string
    sql: ${TABLE}."PROMOCODE_INTERNALID" ;;
  }

  dimension: promocode_name {
    type: string
    sql: ${TABLE}."PROMOCODE_NAME" ;;
  }

  dimension: recognizedrevenue {
    type: number
    sql: ${TABLE}."RECOGNIZEDREVENUE" ;;
  }

  dimension: recurringbill {
    type: string
    sql: ${TABLE}."RECURRINGBILL" ;;
  }

  dimension: revenuestatus {
    type: string
    sql: ${TABLE}."REVENUESTATUS" ;;
  }

  dimension_group: revrecenddate {
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
    sql: ${TABLE}."REVRECENDDATE" ;;
  }

  dimension: revreconrevcommitment {
    type: string
    sql: ${TABLE}."REVRECONREVCOMMITMENT" ;;
  }

  dimension: revrecschedule_internalid {
    type: string
    sql: ${TABLE}."REVRECSCHEDULE_INTERNALID" ;;
  }

  dimension_group: revrecstartdate {
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
    sql: ${TABLE}."REVRECSTARTDATE" ;;
  }

  dimension_group: saleseffectivedate {
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
    sql: ${TABLE}."SALESEFFECTIVEDATE" ;;
  }

  dimension: salesgroup_internalid {
    type: string
    sql: ${TABLE}."SALESGROUP_INTERNALID" ;;
  }

  dimension: salesgroup_name {
    type: string
    sql: ${TABLE}."SALESGROUP_NAME" ;;
  }

  dimension: salesrep_internalid {
    type: string
    sql: ${TABLE}."SALESREP_INTERNALID" ;;
  }

  dimension: shipaddresslist_internalid {
    type: string
    sql: ${TABLE}."SHIPADDRESSLIST_INTERNALID" ;;
  }

  dimension: shipaddresslist_name {
    type: string
    sql: ${TABLE}."SHIPADDRESSLIST_NAME" ;;
  }

  dimension_group: shipdate {
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
    sql: ${TABLE}."SHIPDATE" ;;
  }

  dimension: shipisresidential {
    type: string
    sql: ${TABLE}."SHIPISRESIDENTIAL" ;;
  }

  dimension: shipmethod_internalid {
    type: string
    sql: ${TABLE}."SHIPMETHOD_INTERNALID" ;;
  }

  dimension: shipmethod_name {
    type: string
    sql: ${TABLE}."SHIPMETHOD_NAME" ;;
  }

  dimension: shippingaddress_addr1 {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_ADDR1" ;;
  }

  dimension: shippingaddress_addr2 {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_ADDR2" ;;
  }

  dimension: shippingaddress_addr3 {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_ADDR3" ;;
  }

  dimension: shippingaddress_addressee {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_ADDRESSEE" ;;
  }

  dimension: shippingaddress_addrphone {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_ADDRPHONE" ;;
  }

  dimension: shippingaddress_addrtext {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_ADDRTEXT" ;;
  }

  dimension: shippingaddress_attention {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_ATTENTION" ;;
  }

  dimension: shippingaddress_city {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_CITY" ;;
  }

  dimension: shippingaddress_country {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_COUNTRY" ;;
  }

  dimension: shippingaddress_internalid {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_INTERNALID" ;;
  }

  dimension: shippingaddress_override {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_OVERRIDE" ;;
  }

  dimension: shippingaddress_state {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_STATE" ;;
  }

  dimension: shippingaddress_zip {
    type: string
    sql: ${TABLE}."SHIPPINGADDRESS_ZIP" ;;
  }

  dimension: shippingcost {
    type: number
    sql: ${TABLE}."SHIPPINGCOST" ;;
  }

  dimension: shippingtax1_rate {
    type: number
    sql: ${TABLE}."SHIPPINGTAX1RATE" ;;
  }

  dimension: shippingtax2_rate {
    type: string
    sql: ${TABLE}."SHIPPINGTAX2RATE" ;;
  }

  dimension: shippingtaxcode_internalid {
    type: string
    sql: ${TABLE}."SHIPPINGTAXCODE_INTERNALID" ;;
  }

  dimension: shippingtaxcode_name {
    type: string
    sql: ${TABLE}."SHIPPINGTAXCODE_NAME" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension_group: startdate {
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
    sql: ${TABLE}."STARTDATE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: status_type {
    type: string
    sql: ${TABLE}."STATUS_TYPE" ;;
  }

  dimension: subsidiary_internalid {
    type: string
    sql: ${TABLE}."SUBSIDIARY_INTERNALID" ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}."SUBTOTAL" ;;
  }

  dimension: syncpartnerteams {
    type: string
    sql: ${TABLE}."SYNCPARTNERTEAMS" ;;
  }

  dimension: syncsalesteams {
    type: string
    sql: ${TABLE}."SYNCSALESTEAMS" ;;
  }

  dimension: tax2_total {
    type: number
    sql: ${TABLE}."TAX2TOTAL" ;;
  }

  dimension: taxitem_internalid {
    type: string
    sql: ${TABLE}."TAXITEM_INTERNALID" ;;
  }

  dimension: taxrate {
    type: number
    sql: ${TABLE}."TAXRATE" ;;
  }

  dimension: taxtotal {
    type: number
    sql: ${TABLE}."TAXTOTAL" ;;
  }

  dimension: terms_internalid {
    type: string
    sql: ${TABLE}."TERMS_INTERNALID" ;;
  }

  dimension: timediscamount {
    type: number
    sql: ${TABLE}."TIMEDISCAMOUNT" ;;
  }

  dimension: timediscount_internalid {
    type: string
    sql: ${TABLE}."TIMEDISCOUNT_INTERNALID" ;;
  }

  dimension: timediscount_name {
    type: string
    sql: ${TABLE}."TIMEDISCOUNT_NAME" ;;
  }

  dimension: timediscprint {
    type: string
    sql: ${TABLE}."TIMEDISCPRINT" ;;
  }

  dimension: timediscrate {
    type: string
    sql: ${TABLE}."TIMEDISCRATE" ;;
  }

  dimension: timedisctax1_amt {
    type: number
    sql: ${TABLE}."TIMEDISCTAX1AMT" ;;
  }

  dimension: timedisctaxable {
    type: string
    sql: ${TABLE}."TIMEDISCTAXABLE" ;;
  }

  dimension: timetaxcode_internalid {
    type: string
    sql: ${TABLE}."TIMETAXCODE_INTERNALID" ;;
  }

  dimension: timetaxcode_name {
    type: string
    sql: ${TABLE}."TIMETAXCODE_NAME" ;;
  }

  dimension: timetaxrate1 {
    type: number
    sql: ${TABLE}."TIMETAXRATE1" ;;
  }

  dimension: timetaxrate2 {
    type: number
    sql: ${TABLE}."TIMETAXRATE2" ;;
  }

  dimension: tobeemailed {
    type: string
    sql: ${TABLE}."TOBEEMAILED" ;;
  }

  dimension: tobefaxed {
    type: string
    sql: ${TABLE}."TOBEFAXED" ;;
  }

  dimension: tobeprinted {
    type: string
    sql: ${TABLE}."TOBEPRINTED" ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}."TOTAL" ;;
  }

  dimension: totalcostestimate {
    type: number
    sql: ${TABLE}."TOTALCOSTESTIMATE" ;;
  }

  dimension: trackingnumbers {
    type: string
    sql: ${TABLE}."TRACKINGNUMBERS" ;;
  }

  dimension_group: tran {
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
    sql: ${TABLE}."TRAN_DATE" ;;
  }

  dimension: tran_id {
    type: string
    sql: ${TABLE}."TRAN_ID" ;;
  }

  dimension: trandate {
    type: string
    sql: ${TABLE}."TRANDATE" ;;
  }

  dimension: tranid {
    type: string
    sql: ${TABLE}."TRANID" ;;
  }

  dimension: tranisvsoebundle {
    type: string
    sql: ${TABLE}."TRANISVSOEBUNDLE" ;;
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

  dimension: vatregnum {
    type: string
    sql: ${TABLE}."VATREGNUM" ;;
  }

  dimension: vsoeautocalc {
    type: string
    sql: ${TABLE}."VSOEAUTOCALC" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      itemcosttaxcode_name,
      currencyname,
      approvalstatus_name,
      timetaxcode_name,
      shipaddresslist_name,
      expcosttaxcode_name,
      handlingtaxcode_name,
      timediscount_name,
      billaddresslist_name,
      itemcostdiscount_name,
      nextapprover_name,
      expcostdiscount_name,
      shipmethod_name,
      salesgroup_name,
      promocode_name,
      shippingtaxcode_name
    ]
  }
}
