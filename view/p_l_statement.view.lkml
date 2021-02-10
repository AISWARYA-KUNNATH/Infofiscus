view: p_l_statement {
  derived_table: {
    sql: select FGL.key_id, FGL.hier_num,FGL.hier_name, FGL.HIER1_Name,FGL.HIER2_NAME,FGL.HIER3_NAME,FGL.HIER4_NAME, FGL.hier5_name,
      FGL.ACCOUNTCATEGORIES_KEY ,FGL.account_number ,FGL.net_amount,
      substring((CAST(FGL.GL_TRANSACTION_DATE_KEY as varchar)),0,4) as Fiscal_Year,substring((CAST(FGL.GL_TRANSACTION_DATE_KEY as varchar)),5,2) as Fiscal_Period,
      FGL.GL_TRANSACTION_DATE_KEY, NULL as Begin_Balance
      from
      (select H.key_id, H.hier_num,H.hier_name, H.HIER1_Name,H.HIER2_NAME,H.HIER3_NAME,H.HIER4_NAME, H.hier5_name,F.ACCOUNTCATEGORIES_KEY ,F.account_number,
      F.net_amount, F.GL_TRANSACTION_DATE_KEY
      from "FINANCE_DATAMART"."FINANCE"."FACT_GLJOURNALS" as F left join "FINANCE_DATAMART"."FINANCE"."DIM_HIERARCHY" as H
      on H.HIER_NUM=F.ACCOUNT_NUMBER
      where F.GL_TRANSACTION_DATE_KEY >=20150101 and F.GL_TRANSACTION_DATE_KEY <=20171231
      and H.KEY_ID='P&L_Hierarchy'
      and h.HIER_KEY!=0
      ) as FGL
      UNION all
      select BB.key_id, BB.hier_num,BB.hier_name, BB.HIER1_Name,BB.HIER2_NAME,BB.HIER3_NAME,BB.HIER4_NAME, BB.hier5_name, null as BB_ACCOUNTCATEGORIES_KEY ,
      BB.account_number ,BB.Begin_Balance, BB.Fiscal_Year, NULL as BB_Fiscal_Period, NULL as BB_GL_TRANSACTION_DATE_KEY,BB.Begin_Balance from
      (
      select H.key_id, H.hier_num,H.hier_name, H.HIER1_Name,H.HIER2_NAME,H.HIER3_NAME,H.HIER4_NAME, H.hier5_name, FC.account_number ,FC.Begin_Balance, FC.Fiscal_Year
      from
      (
      select F.account_number ,F.Begin_Balance, F.Fiscal_Year from
      (select sum(A.net_amount) as Begin_Balance,A.ACCOUNT_NUMBER, A.Fiscal_Year from
      (select net_amount,ACCOUNT_NUMBER,ACCOUNTCATEGORIES_KEY,date_part(year,dateadd(year, 2,to_date(to_char(GL_TRANSACTION_DATE_KEY)))) as Fiscal_Year
      from "FINANCE_DATAMART"."FINANCE"."FACT_GLJOURNALS"
      where GL_TRANSACTION_DATE_KEY <=20151231
      ) as A
      group by A.ACCOUNT_NUMBER , Fiscal_Year
      ) as F inner join "FINANCE_DATAMART"."FINANCE"."DIM_COA" as C
      ON C.NATURAL_ACCOUNT_CODE= F.ACCOUNT_NUMBER
      where ACCT_INDEX like 'B%' and NATURAL_ACCOUNT_CODE!='0'
      ) as FC left join "FINANCE_DATAMART"."FINANCE"."DIM_HIERARCHY" as H
      on H.HIER_NUM=FC.ACCOUNT_NUMBER
      and H.KEY_ID='P&L_Hierarchy'
      and h.HIER_KEY!=0
      ) as BB
      order by HIER1_NAME,HIER2_NAME,HIER3_NAME,HIER4_NAME,hier5_name
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: key_id {
    type: string
    sql: ${TABLE}."KEY_ID" ;;
  }

  dimension: hier_num {
    type: string
    sql: ${TABLE}."HIER_NUM" ;;
  }

  dimension: hier_name {
    type: string
    sql: ${TABLE}."HIER_NAME" ;;
    drill_fields: [net_amount]
  }

  dimension: hier1_name {
    type: string
    sql: ${TABLE}."HIER1_NAME" ;;
  }

  dimension: hier2_name {
    type: string
    sql: ${TABLE}."HIER2_NAME" ;;
    drill_fields: [hier_name]
  }

  dimension: hier3_name {
    type: string
    sql: ${TABLE}."HIER3_NAME" ;;
    #drill_fields: [user_details*]
    #drill_fields: [hier2_name,hier_name,net_amount]
    drill_fields: [hier2_name]
  }

  dimension: hier4_name {
    type: string
    sql: ${TABLE}."HIER4_NAME" ;;
  }

  dimension: hier5_name {
    type: string
    sql: ${TABLE}."HIER5_NAME" ;;
  }

  dimension: accountcategories_key {
    type: number
    sql: ${TABLE}."ACCOUNTCATEGORIES_KEY" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}."NET_AMOUNT" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FISCAL_YEAR" ;;
  }

  dimension: fiscal_period {
    type: string
    sql: ${TABLE}."FISCAL_PERIOD" ;;
  }

  dimension: gl_transaction_date_key {
    type: number
    sql: ${TABLE}."GL_TRANSACTION_DATE_KEY" ;;
  }
  #dimension: drill {
   # sql: ${hier3_name} ;;
    #drill_fields: [hier2_name, hier_name]
 # }

  dimension: begin_balance {
    type: number
    sql: ${TABLE}."BEGIN_BALANCE" ;;
  }

  set: detail {
    fields: [
      key_id,
      hier_num,
      hier_name,
      hier1_name,
      hier2_name,
      hier3_name,
      hier4_name,
      hier5_name,
      accountcategories_key,
      account_number,
      net_amount,
      fiscal_year,
      fiscal_period,
      gl_transaction_date_key,
      begin_balance
    ]
  }
  measure: NetAmount{
    type: sum
    sql: ${net_amount} ;;
    #drill_fields: [user_details*]

  }
 #set: user_details {
#   fields: [hier2_name,hier_name,net_amount]
 }
