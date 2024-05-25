view: crush_ios_query_data {
  sql_table_name: `biblia-sagrada-consigo.ETL.crush_ios_query_data` ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: d0_pv {
    type: number
    sql: ${TABLE}.D0_pv ;;
  }
  dimension: d0_uv {
    type: number
    sql: ${TABLE}.D0_uv ;;
  }
  dimension: d14_pv {
    type: number
    sql: ${TABLE}.D14_pv ;;
  }
  dimension: d14_uv {
    type: number
    sql: ${TABLE}.D14_uv ;;
  }
  dimension: d1_pv {
    type: number
    sql: ${TABLE}.D1_pv ;;
  }
  dimension: d1_uv {
    type: number
    sql: ${TABLE}.D1_uv ;;
  }
  dimension: d2_pv {
    type: number
    sql: ${TABLE}.D2_pv ;;
  }
  dimension: d2_uv {
    type: number
    sql: ${TABLE}.D2_uv ;;
  }
  dimension: d30_pv {
    type: number
    sql: ${TABLE}.D30_pv ;;
  }
  dimension: d30_uv {
    type: number
    sql: ${TABLE}.D30_uv ;;
  }
  dimension: d3_pv {
    type: number
    sql: ${TABLE}.D3_pv ;;
  }
  dimension: d3_uv {
    type: number
    sql: ${TABLE}.D3_uv ;;
  }
  dimension: d4_pv {
    type: number
    sql: ${TABLE}.D4_pv ;;
  }
  dimension: d4_uv {
    type: number
    sql: ${TABLE}.D4_uv ;;
  }
  dimension: d5_pv {
    type: number
    sql: ${TABLE}.D5_pv ;;
  }
  dimension: d5_uv {
    type: number
    sql: ${TABLE}.D5_uv ;;
  }
  dimension: d6_pv {
    type: number
    sql: ${TABLE}.D6_pv ;;
  }
  dimension: d6_uv {
    type: number
    sql: ${TABLE}.D6_uv ;;
  }
  dimension: d7_pv {
    type: number
    sql: ${TABLE}.D7_pv ;;
  }
  dimension: d7_uv {
    type: number
    sql: ${TABLE}.D7_uv ;;
  }
  dimension_group: dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dt ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: languages {
    type: string
    sql: ${TABLE}.languages ;;
  }
  measure: count {
    type: count
    drill_fields: [event_name]
  }
}
