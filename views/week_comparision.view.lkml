view: week_comparision {
  sql_table_name: `biblia-sagrada-consigo.Bible.week_comparison_bible_android` ;;

  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }

  dimension_group: base {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.base_date ;;
  }
  dimension_group: compare {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.compare_date ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.week ;;
  }
  dimension: week_day {
    type: string
    sql: ${TABLE}.week_day ;;
  }

  measure: start_app_uv {
    type: sum
    sql: ${TABLE}.start_app_uv ;;
  }

  measure: start_app_uv_comparision {
    type: sum
    sql: ${TABLE}.start_app_uv_comparision ;;
    value_format: "0.00%"
  }

  measure: start_app_avg {
    type: sum
    sql: ${TABLE}.start_app_avg ;;
    value_format: "0.000"
  }

  measure: start_app_avg_comparision {
    type: sum
    sql: ${TABLE}.start_app_avg_comparision ;;
    value_format: "0.00%"
  }

  measure: fcm_m_get_avg {
    type: sum
    sql: ${TABLE}.FCM_m_get_avg ;;
    value_format: "0.000"
  }
  measure: fcm_m_get_avg_comparision {
    type: sum
    sql: ${TABLE}.FCM_m_get_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: fcm_m_get_uv {
    type: sum
    sql: ${TABLE}.FCM_m_get_uv ;;
  }
  measure: fcm_m_get_uv_comparision {
    type: sum
    sql: ${TABLE}.FCM_m_get_uv_comparision ;;
    value_format: "0.00%"
  }
  measure: fcm_n_get_avg {
    type: sum
    sql: ${TABLE}.FCM_n_get_avg ;;
    value_format: "0.000"
  }
  measure: fcm_n_get_avg_comparision {
    type: sum
    sql: ${TABLE}.FCM_n_get_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: fcm_n_get_uv {
    type: sum
    sql: ${TABLE}.FCM_n_get_uv ;;
  }
  measure: fcm_n_get_uv_comparision {
    type: sum
    sql: ${TABLE}.FCM_n_get_uv_comparision ;;
    value_format: "0.00%"
  }

  measure: appopen_enter_ad_show_total_avg {
    type: sum
    sql: ${TABLE}.appopen_enter_ad_show_total_avg ;;
    value_format: "0.000"
  }
  measure: appopen_enter_ad_show_total_avg_comparision {
    type: sum
    sql: ${TABLE}.appopen_enter_ad_show_total_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: appopen_enter_ad_show_total_uv {
    type: sum
    sql: ${TABLE}.appopen_enter_ad_show_total_uv ;;
  }
  measure:appopen_enter_ad_show_total_uv_comparision {
    type: sum
    sql: ${TABLE}.appopen_enter_ad_show_total_uv_comparision ;;
    value_format: "0.00%"
  }
  measure: appopen_enter_launch_avg {
    type: sum
    sql: ${TABLE}.appopen_enter_launch_avg ;;
    value_format: "0.000"
  }
  measure: appopen_enter_launch_avg_comparision {
    type: sum
    sql: ${TABLE}.appopen_enter_launch_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: appopen_enter_launch_uv {
    type: sum
    sql: ${TABLE}.appopen_enter_launch_uv ;;
  }
  measure: appopen_enter_launch_uv_comparision {
    type: sum
    sql: ${TABLE}.appopen_enter_launch_uv_comparision ;;
    value_format: "0.00%"
  }
  measure: appopen_enter_ad_show_rate {
    type: sum
    sql: ${TABLE}.appopen_enter_ad_show_rate ;;
    value_format: "0.00%"
  }
  measure: appopen_enter_ad_show_rate_comparision {
    type: sum
    sql: ${TABLE}.appopen_enter_ad_show_rate_comparision ;;
    value_format: "0.00%"
  }


  measure: pray_ad_prepare_show_avg {
    type: sum
    sql: ${TABLE}.pray_ad_prepare_show_avg ;;
    value_format: "0.000"
  }
  measure: pray_ad_prepare_show_avg_comparision {
    type: sum
    sql: ${TABLE}.pray_ad_prepare_show_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: pray_ad_prepare_show_uv {
    type: sum
    sql: ${TABLE}.pray_ad_prepare_show_uv ;;
  }
  measure: pray_ad_prepare_show_uv_comparision {
    type: sum
    sql: ${TABLE}.pray_ad_prepare_show_uv_comparision ;;
    value_format: "0.00%"
  }
  measure: pray_ad_show_avg {
    type: sum
    sql: ${TABLE}.pray_ad_show_avg ;;
    value_format: "0.000"
  }
  measure: pray_ad_show_avg_comparision {
    type: sum
    sql: ${TABLE}.pray_ad_show_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: pray_ad_show_rate {
    type: sum
    sql: ${TABLE}.pray_ad_show_rate ;;
    value_format: "0.00%"
  }
  measure: pray_ad_show_rate_comparision {
    type: sum
    sql: ${TABLE}.pray_ad_show_rate_comparision ;;
    value_format: "0.00%"
  }
  measure: pray_ad_show_uv {
    type: sum
    sql: ${TABLE}.pray_ad_show_uv ;;
  }
  measure: pray_ad_show_uv_comparision {
    type: sum
    sql: ${TABLE}.pray_ad_show_uv_comparision ;;
    value_format: "0.00%"
  }

  measure: quiz_ad_prepare_avg {
    type: sum
    sql: ${TABLE}.quiz_ad_prepare_avg ;;
    value_format: "0.000"
  }
  measure: quiz_ad_prepare_avg_comparision {
    type: sum
    sql: ${TABLE}.quiz_ad_prepare_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: quiz_ad_prepare_uv {
    type: sum
    sql: ${TABLE}.quiz_ad_prepare_uv ;;
    }
  measure: quiz_ad_prepare_uv_comparision {
    type: sum
    sql: ${TABLE}.quiz_ad_prepare_uv_comparision ;;
    value_format: "0.00%"
  }
  measure: quiz_ad_show_rate {
    type: sum
    sql: ${TABLE}.Quiz_ad_show_rate ;;
    value_format: "0.00%"
  }
  measure: quiz_ad_show_rate_comparision {
    type: sum
    sql: ${TABLE}.Quiz_ad_show_rate_comparision ;;
    value_format: "0.00%"
  }
  measure: quiz_ad_show_total_avg {
    type: sum
    sql: ${TABLE}.Quiz_ad_show_total_avg ;;
    value_format: "0.000"
  }
  measure: quiz_ad_show_total_avg_comparision {
    type: sum
    sql: ${TABLE}.Quiz_ad_show_total_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: quiz_ad_show_total_uv {
    type: sum
    sql: ${TABLE}.Quiz_ad_show_total_uv ;;
  }
  measure: quiz_ad_show_total_uv_comparision {
    type: sum
    sql: ${TABLE}.Quiz_ad_show_total_uv_comparision ;;
    value_format: "0.00%"
  }


  measure: readmark_ad_prepare_show_avg {
    type: sum
    sql: ${TABLE}.readmark_ad_prepare_show_avg ;;
    value_format: "0.000"
  }
  measure: readmark_ad_prepare_show_avg_comparision {
    type: sum
    sql: ${TABLE}.readmark_ad_prepare_show_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: readmark_ad_prepare_show_uv {
    type: sum
    sql: ${TABLE}.readmark_ad_prepare_show_uv ;;
  }
  measure: readmark_ad_prepare_show_uv_comparision {
    type: sum
    sql: ${TABLE}.readmark_ad_prepare_show_uv_comparision ;;
    value_format: "0.00%"
  }
  measure: readmark_ad_show_avg {
    type: sum
    sql: ${TABLE}.readmark_ad_show_avg ;;
    value_format: "0.000"
  }
  measure: readmark_ad_show_avg_comparision {
    type: sum
    sql: ${TABLE}.readmark_ad_show_avg_comparision ;;
    value_format: "0.00%"
  }
  measure: readmark_ad_show_rate {
    type: sum
    sql: ${TABLE}.readmark_ad_show_rate ;;
    value_format: "0.00%"
  }
  measure: readmark_ad_show_rate_comparision {
    type: sum
    sql: ${TABLE}.readmark_ad_show_rate_comparision ;;
    value_format: "0.00%"
  }
  measure: readmark_ad_show_uv {
    type: sum
    sql: ${TABLE}.readmark_ad_show_uv ;;
  }
  measure: readmark_ad_show_uv_comparision {
    type: sum
    sql: ${TABLE}.readmark_ad_show_uv_comparision ;;
    value_format: "0.00%"
  }


  # measure: count {
  #   type: count
  # }
}
