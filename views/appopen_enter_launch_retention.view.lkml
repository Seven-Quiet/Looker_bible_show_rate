view: appopen_enter_launch_retention {
  sql_table_name: `bible-warehouse.ads_looker.ads_bible_looker_appopen_enter_launch_retention_pdi` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }
  dimension: dx {
    type: string
    sql: ${TABLE}.day_n_retention ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: languages {
    type: string
    sql: ${TABLE}.languages ;;
  }
  dimension: packets {
    type: string
    sql: ${TABLE}.packets ;;
  }
  dimension: pv {
    type: number
    sql: ${TABLE}.pv ;;
  }
  dimension: uv {
    type: number
    sql: ${TABLE}.uv ;;
  }
  measure: count {
    type: count
    drill_fields: [event_name]
  }

  # 计算留存
  measure: d0_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d0"]
  }

  measure: d1_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d1"]
  }

  measure: d2_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d2"]
  }

  measure: d3_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d3"]
  }

  measure: d4_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d4"]
  }

  measure: d5_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d5"]
  }

  measure: d6_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d6"]
  }

  measure: d7_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d7"]
  }

  measure: d14_uv_sum {
    type: sum
    sql: ${uv} ;;
    filters: [event_name: "appopen_enter_launch", dx: "d14"]
  }

  measure: d1_retention {
    type: number
    sql: if(${d1_uv_sum} / ${d0_uv_sum}=0, null, ${d1_uv_sum} / ${d0_uv_sum}) ;;
    value_format: "0.00%"
  }

  measure: d2_retention {
    type: number
    sql: if(${d2_uv_sum} / ${d0_uv_sum}=0, null, ${d2_uv_sum} / ${d0_uv_sum}) ;;
    value_format: "0.00%"
  }

  measure: d3_retention {
    type: number
    sql: if(${d3_uv_sum} / ${d0_uv_sum}=0, null, ${d3_uv_sum} / ${d0_uv_sum}) ;;
    value_format: "0.00%"
  }

  measure: d4_retention {
    type: number
    sql: if(${d4_uv_sum} / ${d0_uv_sum}=0, null, ${d4_uv_sum} / ${d0_uv_sum}) ;;
    value_format: "0.00%"
  }

  measure: d5_retention {
    type: number
    sql: if(${d5_uv_sum} / ${d0_uv_sum}=0, null, ${d5_uv_sum} / ${d0_uv_sum}) ;;
    value_format: "0.00%"
  }

  measure: d6_retention {
    type: number
    sql: if(${d6_uv_sum} / ${d0_uv_sum}=0, null, ${d6_uv_sum} / ${d0_uv_sum}) ;;
    value_format: "0.00%"
  }

  measure: d7_retention {
    type: number
    sql: if(${d7_uv_sum} / ${d0_uv_sum}=0, null, ${d7_uv_sum} / ${d0_uv_sum}) ;;
    value_format: "0.00%"
  }

  measure: d14_retention {
    type: number
    sql: if(${d14_uv_sum} / ${d0_uv_sum}=0, null, ${d14_uv_sum} / ${d0_uv_sum}) ;;
    value_format: "0.00%"
  }
}
