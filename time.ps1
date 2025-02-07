param (
    [Parameter(Mandatory=$false)]
    [int]$t = 30  # Default time is 30 minutes
)

# Load the System.Windows.Forms assembly for SendKeys
Add-Type -AssemblyName System.Windows.Forms

# Trap for handling Ctrl+C or interruptions
trap {
    [Console]::CursorVisible = $true
    exit
}

# Validate time
if ($t -le 0) {
    Write-Host "Time must be > 0." -ForegroundColor Red
    exit 1
}

# Track time
$startTime = Get-Date
$endTime = $startTime.AddMinutes($t)
Write-Host "Starting. Time`: $t minutes." -ForegroundColor Green

# Loop
while ((Get-Date) -lt $endTime) {
    # Calculate time
    $currentTime = Get-Date
    $timeRemaining = New-TimeSpan -Start $currentTime -End $endTime
    $hoursRemaining = $timeRemaining.Hours
    $minutesRemaining = $timeRemaining.Minutes
    $secondsRemaining = $timeRemaining.Seconds
    [Console]::CursorVisible = $false

    # Display remaining time
    Write-Host "Time Left: $($hoursRemaining.ToString('D2'))`:$($minutesRemaining.ToString('D2'))`:$($secondsRemaining.ToString('D2'))" -ForegroundColor Yellow

    # Simulate Scroll Lock key press without COM object
    [System.Windows.Forms.SendKeys]::SendWait('{SCROLLLOCK}'*2)

    # Sleep for a random duration between 5 and 60 seconds
    Start-Sleep -Seconds (5..60 | Get-Random)
    Clear-Host
}

# Final output
[Console]::CursorVisible = $true
Write-Host "All Done - Ran for $t minutes" -ForegroundColor Cyan
