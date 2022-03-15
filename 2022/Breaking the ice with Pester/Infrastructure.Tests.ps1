# Measure ping response time
Describe "Internet connectivity" {
    It "Should have an ideal response time" {
        (Test-Connection '192.168.0.1' -Count 1 -TimeoutSeconds 1).Latency | Should -BeLessThan 50
    }
}
