view: push {
  sql_table_name: `biblia-sagrada-consigo.Bible.push` ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: event {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: pv {
    type: number
    sql: ${TABLE}.pv ;;
  }
  dimension: uv {
    type: number
    sql: ${TABLE}.uv ;;
  }
  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [event_name]
  }

  measure: start_app {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "start_app"]
  }

  measure: client_evening_pushnotification_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_evening_pushnotification_open"]
  }

  measure: client_evening_pushnotification_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_evening_pushnotification_open"]
  }

  measure: client_evening_pushnotification_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_evening_pushnotification_receive"]
  }

  measure: client_evening_pushnotification_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_evening_pushnotification_receive"]
  }

  measure: client_moring_pushnotification_receive2_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_moring_pushnotification_receive2"]
  }

  measure: client_moring_pushnotification_receive2_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_moring_pushnotification_receive2"]
  }

  measure: client_moring_pushnotification_open2_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_moring_pushnotification_open2"]
  }

  measure: client_moring_pushnotification_open2_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_moring_pushnotification_open2"]
  }

  measure: client_notification_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_notification_open"]
  }

  measure: client_notification_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_notification_open"]
  }

  measure: client_notification_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_notification_receive"]
  }

  measure: client_notification_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_notification_receive"]
  }

  measure: client_notification_open_night_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_notification_open_night"]
  }

  measure: client_notification_open_night_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_notification_open_night"]
  }

  measure: client_notification_receive_night_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_notification_receive_night"]
  }

  measure: client_notification_receive_night_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_notification_receive_night"]
  }

  measure: quiz_Push_Receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Quiz_Push_Receive"]
  }

  measure: quiz_Push_Receiv_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Quiz_Push_Receive"]
  }

  measure: quiz_Push_Click_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Quiz_Push_Click"]
  }

  measure: quiz_Push_Click_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Quiz_Push_Click"]
  }

  measure: notification_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "notification_open"]
  }

  measure: notification_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "notification_open"]
  }

  measure: notification_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "notification_receive"]
  }

  measure: notification_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "notification_receive"]
  }

  measure: client_plan_pushnotification_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_plan_pushnotification_receive"]
  }

  measure: client_plan_pushnotification_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_plan_pushnotification_receive"]
  }

  measure: client_plan_pushnotification_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_plan_pushnotification_open"]
  }

  measure: client_plan_pushnotification_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_plan_pushnotification_open"]
  }

  measure: client_noonA_pushnotification_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonA_pushnotification_receive"]
  }

  measure: client_noonA_pushnotification_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonA_pushnotification_receive"]
  }

  measure: client_noonA_pushnotification_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonA_pushnotification_open"]
  }

  measure: client_noonA_pushnotification_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonA_pushnotification_open"]
  }

  measure: client_noonB_pushnotification_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonB_pushnotification_receive"]
  }

  measure: client_noonB_pushnotification_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonB_pushnotification_receive"]
  }

  measure: client_noonB_pushnotification_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonB_pushnotification_open"]
  }

  measure: client_noonB_pushnotification_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonB_pushnotification_open"]
  }

  measure: client_noonC_pushnotification_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonC_pushnotification_receive"]
  }

  measure: client_noonC_pushnotification_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonC_pushnotification_receive"]
  }

  measure: client_noonC_pushnotification_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonC_pushnotification_open"]
  }

  measure: client_noonC_pushnotification_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonC_pushnotification_open"]
  }

  measure: client_noonA_popup_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonA_popup_receive"]
  }

  measure: client_noonA_popup_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonA_popup_receive"]
  }

  measure: client_noonA_popup_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonA_popup_open"]
  }

  measure: client_noonA_popup_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonA_popup_open"]
  }

  measure: client_noonB_popup_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonB_popup_receive"]
  }

  measure: client_noonB_popup_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonB_popup_receive"]
  }

  measure: client_noonB_popup_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonB_popup_open"]
  }

  measure: client_noonB_popup_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonB_popup_open"]
  }

  measure: client_noonC_popup_receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonC_popup_receive"]
  }

  measure: client_noonC_popup_receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonC_popup_receive"]
  }

  measure: client_noonC_popup_open_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Client_noonC_popup_open"]
  }

  measure: client_noonC_popup_open_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Client_noonC_popup_open"]
  }

  measure: morning_Pushplus_Receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Morning_Pushplus_Receive"]
  }

  measure: morning_Pushplus_Receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Morning_Pushplus_Receive"]
  }

  measure: morning_Pushplus_Click_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Morning_Pushplus_Click"]
  }

  measure: morning_Pushplus_Click_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Morning_Pushplus_Click"]
  }

  measure: night_Pushplus_Receive_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Night_Pushplus_Receive"]
  }

  measure: night_Pushplus_Receive_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Night_Pushplus_Receive"]
  }

  measure: night_Pushplus_Click_uv {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "Night_Pushplus_Click"]
  }

  measure: night_Pushplus_Click_pv {
    type: sum
    sql: ${pv} ;;
    filters: [event_name: "Night_Pushplus_Click"]
  }

  # [点击率]
  measure: evening_push {
    type: number
    sql: if(${client_evening_pushnotification_receive_pv}=0, null, ${client_evening_pushnotification_open_pv} / ${client_evening_pushnotification_receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: morning_push {
    type: number
    sql: if(${client_moring_pushnotification_receive2_pv}=0, null, ${client_moring_pushnotification_open2_pv} / ${client_moring_pushnotification_receive2_pv}) ;;
    value_format: "0.00%"
  }

  measure: morning_pop_up {
    type: number
    sql: if(${client_notification_receive_pv}=0, null, ${client_notification_open_pv} / ${client_notification_receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: evening_pop_up {
    type: number
    sql: if( ${client_notification_receive_night_pv} =0, null, ${client_notification_open_night_pv} / ${client_notification_receive_night_pv}) ;;
    value_format: "0.00%"
  }

  measure: quzi_push {
    type: number
    sql: if(${quiz_Push_Receiv_pv}=0, null, ${quiz_Push_Click_pv} / ${quiz_Push_Receiv_pv}) ;;
    value_format: "0.00%"
  }

  measure: noon11_push {
    type: number
    sql: if(${client_noonA_pushnotification_receive_pv}=0, null, ${client_noonA_pushnotification_open_pv} / ${client_noonA_pushnotification_receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: noon14_push {
    type: number
    sql: if(${client_noonB_pushnotification_receive_pv}=0, null, ${client_noonB_pushnotification_open_pv} / ${client_noonB_pushnotification_receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: noon17_push {
    type: number
    sql: if(${client_noonC_pushnotification_receive_pv}=0, null, ${client_noonC_pushnotification_open_pv} / ${client_noonC_pushnotification_receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: noon11_pop_up {
    type: number
    sql: if(${client_noonA_popup_receive_pv}=0, null, ${client_noonA_popup_open_pv} / ${client_noonA_popup_receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: noon14_pop_up {
    type: number
    sql: if(${client_noonB_popup_receive_pv}=0, null, ${client_noonB_popup_open_pv} / ${client_noonB_popup_receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: noon17_pop_up {
    type: number
    sql: if(${client_noonC_popup_receive_pv}=0, null, ${client_noonC_popup_open_pv} / ${client_noonC_popup_receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: morning_push_plus {
    type: number
    sql: if(${morning_Pushplus_Receive_pv}=0, null, ${morning_Pushplus_Click_pv} / ${morning_Pushplus_Receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: evening_push_plus {
    type: number
    sql: if(${night_Pushplus_Receive_pv}=0, null, ${night_Pushplus_Click_pv} / ${night_Pushplus_Receive_pv}) ;;
    value_format: "0.00%"
  }

  measure: gui_push {
    type: number
    sql: if(${notification_receive_pv}=0, null, ${notification_open_pv} / ${notification_receive_pv}) ;;
    value_format: "0.00%"
  }
  # [点击率]


  # [覆盖率]
  measure: evening_push_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_evening_pushnotification_receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: morning_push_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_moring_pushnotification_receive2_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: evening_pop_up_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_notification_receive_night_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: morning_pop_up_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_notification_receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: quiz_push_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${quiz_Push_Receiv_pv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: noon11_push_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_noonA_pushnotification_receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: noon14_push_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_noonB_pushnotification_receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: noon17_push_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_noonC_pushnotification_receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: noon11_pop_up_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_noonA_popup_receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: noon14_pop_up_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_noonB_popup_receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: noon17_pop_up_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${client_noonC_popup_receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: morning_pushplus_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${morning_Pushplus_Receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }

  measure: evening_pushplus_cover {
    type: number
    sql: if(${notification_receive_uv}=0, null, ${night_Pushplus_Receive_uv} / ${notification_receive_uv}) ;;
    value_format: "0.00%"
  }
  # [覆盖率]


  # [打开占比]
  measure: evening_push_open {
    type: number
    sql: ${client_evening_pushnotification_open_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: morning_push_open {
    type: number
    sql: ${client_moring_pushnotification_open2_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: morning_pop_up_open {
    type: number
    sql:  ${client_notification_open_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: evening_pop_up_open {
    type: number
    sql: ${client_notification_open_night_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: quzi_push_open {
    type: number
    sql: ${quiz_Push_Click_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: noon11_push_open {
    type: number
    sql: ${client_noonA_pushnotification_open_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: noon14_push_open {
    type: number
    sql: ${client_noonB_pushnotification_open_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: noon17_push_open {
    type: number
    sql: ${client_noonC_pushnotification_open_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: noon11_pop_up_open {
    type: number
    sql:  ${client_noonA_popup_open_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: noon14_pop_up_open {
    type: number
    sql: ${client_noonB_popup_open_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: noon17_pop_up_open {
    type: number
    sql: ${client_noonC_popup_open_pv} / ${start_app};;
    value_format: "0.00%"
  }

  measure: morning_push_plus_open {
    type: number
    sql: ${morning_Pushplus_Click_pv} / ${start_app} ;;
    value_format: "0.00%"
  }

  measure: evening_push_plus_open {
    type: number
    sql: ${night_Pushplus_Click_pv} / ${start_app};;
    value_format: "0.00%"
  }

  measure: gui_push_open {
    type: number
    sql: ${notification_open_pv} / ${start_app} ;;
    value_format: "0.00%"
  }
  # [打开占比]
}
