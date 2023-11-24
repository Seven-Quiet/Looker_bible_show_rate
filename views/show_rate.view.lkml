view: show_rate {
  sql_table_name: `biblia-sagrada-consigo.Bible.show_rate` ;;

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
    timeframes: [raw, date, week, month, quarter, year]
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

  measure: appopen_enter_ad_show_total_bible {
    type: count
    filters: [project: "Bible Android", event_name: "appopen_enter_ad_show_total"]
  }

  measure: appopen_enter_launch_bible {
    type: count
    filters: [project: "Bible Android", event_name: "appopen_enter_launch"]
  }

  measure: appopen_show_rate_bible {
    type: number
    sql: ${appopen_enter_ad_show_total_bible} / ${appopen_enter_launch_bible} ;;
    value_format: "0.00%"
  }

  measure: pray_ad_show_bible {
    type: count
    filters: [project: "Bible Android", event_name: "pray_ad_show"]
  }

  measure: pray_ad_prepare_show_bible {
    type: count
    filters: [project: "Bible Android", event_name: "pray_ad_prepare_show"]
  }

  measure: pray_show_rate_bible {
    type: number
    sql: ${pray_ad_show_bible} / ${pray_ad_prepare_show_bible} ;;
    value_format: "0.00%"
  }


}
