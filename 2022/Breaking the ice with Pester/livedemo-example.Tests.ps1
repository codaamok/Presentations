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

# Pester configuration for terminating error
$Config = New-PesterConfiguration
$Config.Run.Path = '.\example.Tests.ps1'
$Config.Run.Throw = $true
try {
    Invoke-Pester -Configuration $Config
}
catch {
    "Caught"
}

