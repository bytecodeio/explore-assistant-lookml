# Readme

Please open the following link to begin configuring the backend functions. This will open in Google Cloud Shell.

[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://ssh.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/bytecodeio/looker-explore-assistant&cloudshell_tutorial=./explore-assistant-backend/cloudshell_README.md&shellonly=true&cloudshell_git_branch=marketplace_deploy)

After installing the backend, save the cloud function URL and cloud config key. You can retrieve the cloud config key by navigating to the Secret Manager for your Google Cloud Project. You can retrieve the cloud function URL by navigating to the Cloud Run for your Google Cloud Project. Both need to be entered into the application when it is first loaded. The application will create user attributes which store that information securly.

If a new Looker connection is needed, or needs to change, please update the connection name in the manifest file.
