view: show_rate_2 {
  sql_table_name: `biblia-sagrada-consigo.Bible.show_rate` ;;

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }
  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: event {
    type: time
    timeframes: [raw, date, week, month, quarter, year, day_of_week]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }
  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }
  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [event_name]
  }

  measure: start_app_uv {
    type: count_distinct
    sql: ${TABLE}.user_pseudo_id ;;
    filters: [event_name: "start_app"]
  }

  measure: start_app_pv {
    type: count
    filters: [event_name: "start_app"]
  }

  measure: start_app_pv_avg {
    type: number
    sql: ${start_app_pv}/${start_app_uv} ;;
    value_format: "0.00"
  }

  measure: appopen_enter_ad_show_total_uv {
    type: count_distinct
    sql: ${TABLE}.user_pseudo_id ;;
    filters: [event_name: "appopen_enter_ad_show_total"]
  }

  measure: appopen_enter_ad_show_total_pv {
    type: count
    filters: [event_name: "appopen_enter_ad_show_total"]
  }

  measure: appopen_enter_ad_show_total_pv_avg {
    type: number
    sql: ${appopen_enter_ad_show_total_pv}/${start_app_uv} ;;
    value_format: "0.00"
  }

  measure: appopen_enter_launch_uv {
    type: count_distinct
    sql: ${TABLE}.user_pseudo_id ;;
    filters: [event_name: "appopen_enter_launch"]
  }

  measure: appopen_enter_launch_pv {
    type: count
    filters: [event_name: "appopen_enter_launch"]
  }

  measure: appopen_enter_launch_pv_avg {
    type: number
    sql: ${appopen_enter_launch_pv}/${start_app_uv} ;;
    value_format: "0.00"
  }
}

#   # Android
#   # aaa
#   measure: appopen_enter_ad_show_total_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "appopen_enter_ad_show_total"]
#   }

#   measure: appopen_enter_launch_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "appopen_enter_launch"]
#   }

#   measure: appopen_show_rate_android_bible {
#     type: number
#     sql: if(${appopen_enter_launch_android_bible}=0,null,${appopen_enter_ad_show_total_android_bible} / ${appopen_enter_launch_android_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_ad_show_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "pray_ad_show"]
#   }

#   measure: pray_ad_prepare_show_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "pray_ad_prepare_show"]
#   }

#   measure: pray_show_rate_android_bible {
#     type: number
#     sql: if(${pray_ad_prepare_show_android_bible}=0,null,${pray_ad_show_android_bible} / ${pray_ad_prepare_show_android_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_ad_show_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "Quiz_AD_show_1,Quiz_AD_show_2,Quiz_AD_show_3,Quiz_AD_show_4"]
#   }

#   measure: quiz_ad_prepare_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "quiz_ad_prepare"]
#   }

#   measure: quiz_show_rate_android_bible {
#     type: number
#     sql: if(${quiz_ad_prepare_android_bible}=0,null,${quiz_ad_show_android_bible} / ${quiz_ad_prepare_android_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_ad_show_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "readmark_ad_show"]
#   }

#   measure: readmark_ad_prepare_show_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "readmark_ad_prepare_show"]
#   }

#   measure: readmark_show_rate_android_bible {
#     type: number
#     sql: if(${readmark_ad_prepare_show_android_bible}=0,null,${readmark_ad_show_android_bible} / ${readmark_ad_prepare_show_android_bible}) ;;
#     value_format: "0.00%"
#   }


#   #UK


#   measure: appopen_enter_ad_show_total_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "appopen_enter_ad_show_total"]
#   }

#   measure: appopen_enter_launch_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "appopen_enter_launch"]
#   }

#   measure: appopen_show_rate_UK_bible {
#     type: number
#     sql: if(${appopen_enter_launch_UK_bible}=0,null,${appopen_enter_ad_show_total_UK_bible} / ${appopen_enter_launch_UK_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_ad_show_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "pray_ad_show"]
#   }

#   measure: pray_ad_prepare_show_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "pray_ad_prepare_show"]
#   }

#   measure: pray_show_rate_UK_bible {
#     type: number
#     sql: if(${pray_ad_prepare_show_UK_bible}=0,null,${pray_ad_show_UK_bible} / ${pray_ad_prepare_show_UK_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_ad_show_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "quiz_UK_ad_inter_show"]
#   }

#   measure: quiz_ad_prepare_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "quiz_UK_ad_inter_prepare"]
#   }

#   measure: quiz_show_rate_UK_bible {
#     type: number
#     sql: if(${quiz_ad_prepare_UK_bible}=0,null,${quiz_ad_show_UK_bible} / ${quiz_ad_prepare_UK_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_ad_show_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "readmark_ad_show"]
#   }

#   measure: readmark_ad_prepare_show_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "readmark_ad_prepare_show"]
#   }

#   measure: readmark_show_rate_UK_bible {
#     type: number
#     sql: if(${readmark_ad_show_UK_bible}=0,null,${readmark_ad_show_UK_bible} / ${readmark_ad_prepare_show_UK_bible}) ;;
#     value_format: "0.00%"
#   }


#   # IOS

#   measure: appopen_enter_ad_show_total_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "appopen_enter_ad_show_total"]
#   }

#   measure: appopen_enter_launch_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "appopen_enter_launch"]
#   }

#   measure: appopen_show_rate_IOS_bible {
#     type: number
#     sql: if(${appopen_enter_launch_IOS_bible}=0,null,${appopen_enter_ad_show_total_IOS_bible} / ${appopen_enter_launch_IOS_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_ad_show_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "pray_ad_ios_show"]
#   }

#   measure: pray_ad_prepare_show_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "pray_ad_ios_prepare"]
#   }

#   measure: pray_show_rate_IOS_bible {
#     type: number
#     sql: if(${pray_ad_prepare_show_IOS_bible}=0,null,${pray_ad_show_IOS_bible} / ${pray_ad_prepare_show_IOS_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_ad_show_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "quiz_ad_ios_show"]
#   }

#   measure: quiz_ad_prepare_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "quiz_ad_ios_prepare"]
#   }

#   measure: quiz_show_rate_IOS_bible {
#     type: number
#     sql: if(${quiz_ad_prepare_IOS_bible}=0,null,${quiz_ad_show_IOS_bible} / ${quiz_ad_prepare_IOS_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_ad_show_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "read_ad_ios_show"]
#   }

#   measure: readmark_ad_prepare_show_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "read_ad_ios_prepare"]
#   }

#   measure: readmark_show_rate_IOS_bible {
#     type: number
#     sql: if(${readmark_ad_prepare_show_IOS_bible}=0,null,${readmark_ad_show_IOS_bible} / ${readmark_ad_prepare_show_IOS_bible}) ;;
#     value_format: "0.00%"
#   }


#   # Bible For Women
#   measure: appopen_enter_ad_show_total_bfw {
#     type: count
#     filters: [project: "Bible For Women", event_name: "appopen_enter_ad_show_total"]
#   }

#   measure: appopen_enter_launch_bfw {
#     type: count
#     filters: [project: "Bible For Women", event_name: "appopen_enter_launch"]
#   }

#   measure: appopen_show_rate_bfw {
#     type: number
#     sql: if(${appopen_enter_launch_bfw}=0,null,${appopen_enter_ad_show_total_bfw} / ${appopen_enter_launch_bfw}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_ad_show_bfw {
#     type: count
#     filters: [project: "Bible For Women", event_name: "pray_ad_show"]
#   }

#   measure: pray_ad_prepare_show_bfw {
#     type: count
#     filters: [project: "Bible For Women", event_name: "pray_ad_prepare_show"]
#   }

#   measure: pray_show_rate_bfw {
#     type: number
#     sql: if(${pray_ad_prepare_show_bfw}=0,null,${pray_ad_show_bfw} / ${pray_ad_prepare_show_bfw}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_ad_show_bfw {
#     type: count
#     filters: [project: "Bible For Women", event_name: "Quiz_AD_show_1,Quiz_AD_show_2,Quiz_AD_show_3,Quiz_AD_show_4"]
#   }

#   measure: quiz_ad_prepare_bfw {
#     type: count
#     filters: [project: "Bible For Women", event_name: "quiz_ad_prepare"]
#   }

#   measure: quiz_show_rate_bfw {
#     type: number
#     sql: if(${quiz_ad_prepare_bfw}=0,null,${quiz_ad_show_bfw} / ${quiz_ad_prepare_bfw}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_ad_show_bfw {
#     type: count
#     filters: [project: "Bible For Women", event_name: "readmark_ad_show"]
#   }

#   measure: readmark_ad_prepare_show_bfw {
#     type: count
#     filters: [project: "Bible For Women", event_name: "readmark_ad_prepare_show"]
#   }

#   measure: readmark_show_rate_bfw {
#     type: number
#     sql: if(${readmark_ad_prepare_show_bfw}=0,null,${readmark_ad_show_bfw} / ${readmark_ad_prepare_show_bfw}) ;;
#     value_format: "0.00%"
#   }

#   # BFWi
#   measure: appopen_enter_ad_show_total_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS", event_name: "appopen_enter_ad_show_total"]
#   }

#   measure: appopen_enter_launch_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS", event_name: "appopen_enter_launch"]
#   }

#   measure: appopen_show_rate_BFWi {
#     type: number
#     sql: if(${appopen_enter_launch_BFWi}=0,null,${appopen_enter_ad_show_total_BFWi} / ${appopen_enter_launch_BFWi}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_ad_show_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS", event_name: "pray_ad_ios_show"]
#   }

#   measure: pray_ad_prepare_show_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS", event_name: "pray_ad_ios_prepare"]
#   }

#   measure: pray_show_rate_BFWi {
#     type: number
#     sql: if(${pray_ad_prepare_show_BFWi}=0,null,${pray_ad_show_BFWi} / ${pray_ad_prepare_show_BFWi}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_ad_show_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS", event_name: "quiz_ad_ios_show"]
#   }

#   measure: quiz_ad_prepare_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS", event_name: "quiz_ad_ios_prepare"]
#   }

#   measure: quiz_show_rate_BFWi {
#     type: number
#     sql: if(${quiz_ad_prepare_BFWi}=0,null,${quiz_ad_show_BFWi} / ${quiz_ad_prepare_BFWi}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_ad_show_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS", event_name: "read_ad_ios_show"]
#   }

#   measure: readmark_ad_prepare_show_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS", event_name: "read_ad_ios_prepare"]
#   }

#   measure: readmark_show_rate_BFWi {
#     type: number
#     sql: if(${readmark_ad_prepare_show_BFWi}=0,null,${readmark_ad_show_BFWi} / ${readmark_ad_prepare_show_BFWi}) ;;
#     value_format: "0.00%"
#   }

#   # Oremus


#   measure: appopen_enter_ad_show_total_Oremus {
#     type: count
#     filters: [project: "Oremus", event_name: "appopen_enter_ad_show_total"]
#   }

#   measure: appopen_enter_launch_Oremus {
#     type: count
#     filters: [project: "Oremus", event_name: "appopen_enter_launch"]
#   }

#   measure: appopen_show_rate_Oremus {
#     type: number
#     sql: if(${appopen_enter_launch_Oremus}=0,null,${appopen_enter_ad_show_total_Oremus} / ${appopen_enter_launch_Oremus}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_ad_show_Oremus {
#     type: count
#     filters: [project: "Oremus", event_name: "pray_ad_show"]
#   }

#   measure: pray_ad_prepare_show_Oremus {
#     type: count
#     filters: [project: "Oremus", event_name: "pray_ad_prepare_show"]
#   }

#   measure: pray_show_rate_Oremus {
#     type: number
#     sql: if(${pray_ad_prepare_show_Oremus}=0,null,${pray_ad_show_Oremus} / ${pray_ad_prepare_show_Oremus}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_ad_show_Oremus {
#     type: count
#     filters: [project: "Oremus ", event_name: "quiz_ad_show"]
#   }

#   measure: quiz_ad_prepare_Oremus  {
#     type: count
#     filters: [project: "Oremus ", event_name: "quiz_ad_prepare"]
#   }

#   measure: quiz_show_rate_Oremus {
#     type: number
#     sql: if(${quiz_ad_prepare_Oremus}=0,null,${quiz_ad_show_Oremus} / ${quiz_ad_prepare_Oremus}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_ad_show_Oremus {
#     type: count
#     filters: [project: "Oremus", event_name: "readmark_ad_show"]
#   }

#   measure: readmark_ad_prepare_show_Oremus {
#     type: count
#     filters: [project: "Oremus", event_name: "readmark_ad_prepare_show"]
#   }

#   measure: readmark_show_rate_Oremus {
#     type: number
#     sql: if(${readmark_ad_show_Oremus}=0,null,${readmark_ad_show_Oremus} / ${readmark_ad_prepare_show_Oremus}) ;;
#     value_format: "0.00%"
#   }


#   # ad_impression_revenue



#   measure: ad_impression_revenue_android_bible {
#     type: count
#     filters: [project: "Bible Android", event_name: "ad_impression_revenue", ad_type: "interstitial"]
#   }

#   measure: ad_impression_revenue_UK_bible {
#     type: count
#     filters: [project: "Bible UK", event_name: "ad_impression_revenue", ad_type: "interstitial"]
#   }

#   measure: ad_impression_revenue_IOS_bible {
#     type: count
#     filters: [project: "Bible IOS", event_name: "ad_impression_revenue", ad_type: "inter"]
#   }

#   measure: ad_impression_revenue_BFW {
#     type: count
#     filters: [project: "Bible For Women", event_name: "ad_impression_revenue", ad_type: "interstitial"]
#   }

#   measure: ad_impression_revenue_BFWi {
#     type: count
#     filters: [project: "Bible For Women IOS ", event_name: "ad_impression_revenue", ad_type: "interstitial"]
#   }

#   measure: ad_impression_revenue_Oremus {
#     type: count
#     filters: [project: "Oremus", event_name: "ad_impression_revenue", ad_type: "interstitial"]
#   }



#   # Android   pv/pv


#   measure: appopen_pv_rate_android_bible {
#     type: number
#     sql: if(${ad_impression_revenue_android_bible}=0,null,${appopen_enter_ad_show_total_android_bible} / ${ad_impression_revenue_android_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_pv_rate_android_bible {
#     type: number
#     sql: if(${ad_impression_revenue_android_bible}=0,null,${pray_ad_show_android_bible} / ${ad_impression_revenue_android_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_pv_rate_android_bible {
#     type: number
#     sql: if(${ad_impression_revenue_android_bible}=0,null,${quiz_ad_show_android_bible} / ${ad_impression_revenue_android_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_pv_rate_android_bible {
#     type: number
#     sql: if(${ad_impression_revenue_android_bible}=0,null,${readmark_ad_show_android_bible} / ${ad_impression_revenue_android_bible}) ;;
#     value_format: "0.00%"
#   }


#   # UK   pv/pv

#   measure: appopen_pv_rate_UK_bible {
#     type: number
#     sql: if(${ad_impression_revenue_UK_bible}=0,null,${appopen_enter_ad_show_total_UK_bible} / ${ad_impression_revenue_UK_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_pv_rate_UK_bible {
#     type: number
#     sql: if(${ad_impression_revenue_UK_bible}=0,null,${pray_ad_show_UK_bible} / ${ad_impression_revenue_UK_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_pv_rate_UK_bible {
#     type: number
#     sql: if( ${ad_impression_revenue_UK_bible}=0,null,${quiz_ad_show_UK_bible} / ${ad_impression_revenue_UK_bible}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_pv_rate_UK_bible {
#     type: number
#     sql: if( ${ad_impression_revenue_UK_bible}=0,null,${readmark_ad_show_UK_bible} / ${ad_impression_revenue_UK_bible}) ;;
#     value_format: "0.00%"
#   }



#   # IOS  pv/pv

#   measure: appopen_pv_rate_IOS_bible {
#     type: number
#     sql: if(${ad_impression_revenue_IOS_bible}=0,null,${appopen_enter_ad_show_total_IOS_bible} / ${ad_impression_revenue_IOS_bible}) ;;
#     value_format: "0.00%"
#   }
#   measure: pray_pv_rate_IOS_bible {
#     type: number
#     sql: if(${ad_impression_revenue_IOS_bible}=0,null,${pray_ad_show_IOS_bible} / ${ad_impression_revenue_IOS_bible}) ;;
#     value_format: "0.00%"
#   }
#   measure: quiz_pv_rate_IOS_bible {
#     type: number
#     sql: if(${ad_impression_revenue_IOS_bible}=0,null,${quiz_ad_show_IOS_bible} / ${ad_impression_revenue_IOS_bible}) ;;
#     value_format: "0.00%"
#   }
#   measure: readmark_pv_rate_IOS_bible {
#     type: number
#     sql: if(${ad_impression_revenue_IOS_bible}=0,null,${readmark_ad_show_IOS_bible} / ${ad_impression_revenue_IOS_bible}) ;;
#     value_format: "0.00%"
#   }


#   # BFW  pv/pv

#   measure: appopen_pv_rate_bfw {
#     type: number
#     sql: if(${ad_impression_revenue_BFW}=0,null,${appopen_enter_ad_show_total_bfw} / ${ad_impression_revenue_BFW}) ;;
#     value_format: "0.00%"
#   }
#   measure: pray_pv_rate_bfw {
#     type: number
#     sql: if(${ad_impression_revenue_BFW}=0,null,${pray_ad_show_bfw} / ${ad_impression_revenue_BFW}) ;;
#     value_format: "0.00%"
#   }
#   measure: quiz_pv_rate_bfw {
#     type: number
#     sql: if(${ad_impression_revenue_BFW}=0,null,${quiz_ad_show_bfw} / ${ad_impression_revenue_BFW}) ;;
#     value_format: "0.00%"
#   }
#   measure: readmark_pv_rate_bfw {
#     type: number
#     sql: if(${ad_impression_revenue_BFW}=0,null,${readmark_ad_show_bfw} / ${ad_impression_revenue_BFW}) ;;
#     value_format: "0.00%"
#   }


#   # BFWi pv/pv

#   measure: appopen_pv_rate_BFWi {
#     type: number
#     sql: if(${ad_impression_revenue_BFWi}=0,null,${appopen_enter_ad_show_total_BFWi} / ${ad_impression_revenue_BFWi}) ;;
#     value_format: "0.00%"
#   }
#   measure: pray_pv_rate_BFWi {
#     type: number
#     sql: if(${ad_impression_revenue_BFWi}=0,null,${pray_ad_show_BFWi} / ${ad_impression_revenue_BFWi}) ;;
#     value_format: "0.00%"
#   }
#   measure: quiz_pv_rate_BFWi {
#     type: number
#     sql: if(${ad_impression_revenue_BFWi}=0,null,${quiz_ad_show_BFWi} / ${ad_impression_revenue_BFWi}) ;;
#     value_format: "0.00%"
#   }
#   measure: readmark_pv_rate_BFWi {
#     type: number
#     sql: if(${ad_impression_revenue_BFWi}=0,null,${readmark_ad_show_BFWi} / ${ad_impression_revenue_BFWi}) ;;
#     value_format: "0.00%"
#   }


#   # Oremus pv/pv

#   measure: appopen_pv_rate_Oremus {
#     type: number
#     sql: if(${ad_impression_revenue_Oremus}=0,null,${appopen_enter_ad_show_total_Oremus} / ${ad_impression_revenue_Oremus}) ;;
#     value_format: "0.00%"
#   }

#   measure: pray_pv_rate_Oremus {
#     type: number
#     sql: if(${ad_impression_revenue_Oremus}=0,null,${pray_ad_show_Oremus} / ${ad_impression_revenue_Oremus}) ;;
#     value_format: "0.00%"
#   }

#   measure: quiz_pv_rate_Oremus {
#     type: number
#     sql: if(${ad_impression_revenue_Oremus}=0,null,${quiz_ad_show_Oremus} / ${ad_impression_revenue_Oremus}) ;;
#     value_format: "0.00%"
#   }

#   measure: readmark_pv_rate_Oremus {
#     type: number
#     sql: if(${ad_impression_revenue_Oremus}=0,null,${readmark_ad_show_Oremus} / ${ad_impression_revenue_Oremus}) ;;
#     value_format: "0.00%"
#   }
# }
