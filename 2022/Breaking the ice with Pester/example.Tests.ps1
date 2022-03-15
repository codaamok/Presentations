Describe "My computer" {
    It "OS version should be 10.0.22000" {
        (Get-CimInstance "Win32_OperatingSystem").Version | Should -Not -Be "10.0.220001"
    }
}