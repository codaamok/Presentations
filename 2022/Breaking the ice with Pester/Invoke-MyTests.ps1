# Call script file containing tests and produce exception if test fails
# Show configuration and error handling

try {
    Invoke-Pester -Path '.\example.Tests.ps1'
}
catch {
    "Caught"
}
