# Readme

This block shortens the installation of the [looker-explore-assistant](https://github.com/bytecodeio/looker-explore-assistant/tree/marketplace_deploy) by prepackaging the application and automating the backend-setup.

## Installation

A. Environment Set-up
1. Looker - Obtain a Looker Project ID either by using an existing Looker Project or by [creating a blank project](https://cloud.google.com/looker/docs/create-projects#creating_a_blank_project)
2. GCP - Obtain a GCP Project ID by either using an existing project or by [creating a new blank project](https://cloud.google.com/resource-manager/docs/creating-managing-projects)
 
    i. Ensure that the project is added to a [billing account](https://cloud.google.com/billing/docs/how-to/modify-project)

    ii. Ensure you have enabled the following [APIs  & Services](https://cloud.google.com/endpoints/docs/openapi/enable-api): Cloud Resource Manager API & Identity and Access Management (IAM) API
   
4. BigQuery - Navigate to the [BigQuery](https://console.cloud.google.com/bigquery) section and ensure that you are still in the same GCP Project ID to understand the current state (is it empty or has resources)

B. There are four steps to successful install this block
  1. Backend Setup -  setup the GCP backend for communicating with the Vertex API
      1. Please open the following link to begin configuring the backend functions. This will open in Google Cloud Shell.
[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://ssh.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/bytecodeio/looker-explore-assistant&cloudshell_workspace=./&cloudshell_tutorial=explore-assistant-backend/cloudshell_README.md&shellonly=true&cloudshell_git_branch=marketplace_deploy)

      1. After installing the backend, save the cloud function URL and cloud config key.
         
          1. You can retrieve the cloud config key by navigating to the Secret Manager for your Google Cloud Project.
         
          1. You can retrieve the cloud function URL by navigating to the Cloud Run for your Google Cloud Project.
         
          1. Note: Both need to be entered into the application when it is first loaded. The application will create user attributes which store that information securly.
         
  2. Looker Connection - follow step 2 in this [guide](https://github.com/bytecodeio/looker-explore-assistant/tree/marketplace_deploy?tab=readme-ov-file#setup)
     
      i. Note: If a new Looker connection is needed, or needs to change, please update the connection name in the manifest file.
  3. Example generation - follow step 3 in this [guide](https://github.com/bytecodeio/looker-explore-assistant/tree/marketplace_deploy?tab=readme-ov-file#setup)
  4. Frontend Setup - follow step 4 in this [guide](https://github.com/bytecodeio/looker-explore-assistant/tree/marketplace_deploy?tab=readme-ov-file#setup)
