view: trusted_dashboards {
  sql_table_name: `explore-assistant-test.explore_assistant.trusted_dashboards` ;;

  dimension: explore_id {
    type: string
    description: "Explore id of the explore to pull examples for in a format of -\u003e lookml_model:lookml_explore"
    sql: ${TABLE}.explore_id ;;
  }
  dimension: lookml {
    type: string
    description: "LookML dashboard copy for authoritative dashboards based on the given explore_id"
    sql: ${TABLE}.lookml ;;
  }
  measure: count {
    type: count
  }
}
