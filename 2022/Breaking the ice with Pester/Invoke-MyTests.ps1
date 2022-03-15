# Call script file containing tests and produce exception if test fails
# Show configuration and error handling

$Config = New-PesterConfiguration
$Config.Run.Path = '.\example.Tests.ps1'
$Config.Run.Throw = $true
$Config.Output.Verbosity = 'Detailed'
$Config.TestResult.Enabled = $true

try {
    Invoke-Pester -Configuration $Config
}
catch {
    "Caught"
}
