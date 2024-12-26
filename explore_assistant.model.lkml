connection: "@{LOOKER_BIGQUERY_CONNECTION_NAME}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

##### Explore Assistant #####

### Example, Refinement & Sample Fetching
explore: explore_assistant_examples {
  join: explore_assistant_refinement_examples {
    type: left_outer
    relationship: one_to_one
    sql_on: ${explore_id} = ${explore_assistant_refinement_examples.explore_id} ;;
  }
  join: explore_assistant_samples {
    type: left_outer
    relationship: one_to_one
    sql_on: ${explore_id} = ${explore_assistant_samples.explore_id} ;;
  }
}


### BQML Model Access
explore: explore_assistant {}

##### END #####
