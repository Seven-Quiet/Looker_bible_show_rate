connection: "bigquery-bible"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: bible_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bible_default_datagroup

# explore: show_rate {}
