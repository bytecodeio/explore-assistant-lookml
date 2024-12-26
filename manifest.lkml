project_name: "combined_genai_demo"

constant: LOOKER_BIGQUERY_CONNECTION_NAME {
  value: "explore-assistant-test"
  export: override_required
}

constant: BQML_REMOTE_CONNECTION_MODEL_ID {
  value: "combined_genai_demo"
  export: override_required
}
# This is the ID of the remote connection setup in BigQuery

constant: BQML_REMOTE_CONNECTION_ID {
  value: "remote_connection_id" # replace these defaults
  export: override_required
}

application: demo_combined_genai_ea {
  label: "Combined GenAI EA"
  # file: "ea.js"
  url: "https://localhost:8080/explore_assistant.js"
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



application: demo_combined_genai_ds {
  label: "Demo Combined GenAI DS"
  file: "ds.js"
  # url: "https://localhost:8080/ds.js"
  mount_points: {
    dashboard_vis: no
    dashboard_tile: no
    standalone: yes
  }

  entitlements: {
    local_storage: yes
    use_form_submit: yes
    use_iframes: yes
    use_embeds: yes
    core_api_methods: ["run_inline_query","all_lookml_models","dashboard","dashboard_dashboard_elements"]
    global_user_attributes: ["genai_client_secret"]
    external_api_urls: [
      "https://restful-service-730192175971.us-central1.run.app","http://localhost:5000","http://localhost:3000","https://*.googleapis.com","https://slack.com/api/*","https://slack.com/*","https://*/foo.js"
    ]
    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth",
      "https://www.googleapis.com/auth/chat.spaces",
      "https://www.googleapis.com/auth/drive.metadata.readonly",
      "https://www.googleapis.com/auth/spreadsheets.readonly",
      "https://www.googleapis.com/auth/userinfo.profile",
      "https://www.googleapis.com/auth/chat.spaces.readonly",
      "https://www.googleapis.com/auth/chat.bot",
      "https://www.googleapis.com/auth/chat.messages",
      "https://www.googleapis.com/auth/chat.messages.create",
      "https://slack.com/oauth/v2/authorize"
    ]
  }
}
