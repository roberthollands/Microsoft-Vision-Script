# Microsoft-Vision-Script
PowerShell tool for sending an image URL to an Azure Custom Vision prediction endpoint and printing the predicted tags sorted by confidence, with a highlighted top prediction.
Paste an image URL when prompted, and the script will:
  -Send the image to your Custom Vision prediction endpoint using your Prediction Key
  -Retrieve the model’s prediction results
  -List all predicted tags sorted by probability
  -Highlight the top tag with its confidence score as a percentage
