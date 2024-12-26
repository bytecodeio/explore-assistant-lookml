project_name: "explore_assistant"

# This is the Looker Connection to a dataset that has the explore_assistant schema.
# Through this connection, the 'explore_assistant' schema with examples, refniement_examples and assistant_sample should all exist.
constant: LOOKER_BIGQUERY_CONNECTION_NAME {
  value: "explore-assistant-test"
  export: override_required
}

# BQML_REMOTE_CONNECTION_MODEL_ID is the ID of a remote connection to Vertex in BigQuery
# Only necessary for the BigQuery Backend install type.
# Can be left as an empty string for Cloud Function backend installs.
constant: BQML_REMOTE_CONNECTION_MODEL_ID {
  value: "combined_genai_demo"
  export: override_required
}

application: demo_combined_genai_ea {
  label: "Combined GenAI EA"
  file: "explore_assistant.js"
  # url: "https://localhost:8080/explore_assistant.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query","update_user_attribute","create_user_attribute","all_user_attributes"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: ["https://explore-assistant-api-114227247293.us-central1.run.app"]
  }
}
