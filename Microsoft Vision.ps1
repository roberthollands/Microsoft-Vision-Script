$endpoint = 'TENANT ADDRESS REMOVED. PLEASE PLACE YOUR ENDPOINT URL HERE'
$predictionKey = 'PASTE YOUR VISION KEY HERE'
$imageUrl = Read-Host 'PASTE IMAGE URL'
$headers = @{
  'Prediction-Key' = $predictionKey
  'Content-Type'   = 'application/json'
}
$body    = @{Url = $imageUrl} | ConvertTo-Json
$response = Invoke-RestMethod -Method Post -Uri $endpoint -Headers $headers -Body $body
$preds = $response.predictions | Sort-Object probability -Descending
$preds | Select-Object @{n='probability';e={[math]::Round($_.probability,4)}}, tagName
"Top tag: $($preds[0].tagName)  (probability: {0:P1})" -f $preds[0].probability
