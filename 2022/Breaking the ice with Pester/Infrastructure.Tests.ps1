# Measure ping response time
Describe "Internet connectivity" {
    It "Should have an ideal response time <_>" -TestCases '192.168.0.1', '8.8.8.8' {
        (Test-Connection $_ -Count 1 -TimeoutSeconds 1).Latency | Should -BeLessThan 50
    }
}
