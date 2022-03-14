function Get-WinAdminsMembers {
    1..5 | ForEach-Object {
        [PSCustomObject]@{
            name = '#user{0}' -f $_
            id = $_
        }
    }
}

# Get-WinAdminsMembers intro test
Describe "Get-WinAdminsMembers" {
    It "Should return 5 members" {
        Get-WinAdminsMembers | Should -HaveCount 5
    }
}

# Measure ping response time
Describe "Internet connectivity" {
    It "Should have an ideal response time" {
        (Test-Connection '192.168.0.1' -Count 1 -TimeoutSeconds 1).Latency | Should -BeLessThan 50
    }
}

# Call script file containing tests and produce exception if test fails
# Show configuration and error handling
try {
    Invoke-Pester -Path ".\example.Tests.ps1"
}
catch {
    "Caught"
}
