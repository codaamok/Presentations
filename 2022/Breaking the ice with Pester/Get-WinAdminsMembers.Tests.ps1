BeforeAll {
    . .\Get-WinAdminsMembers.ps1
}

# Get-WinAdminsMembers intro test
Describe "Get-WinAdminsMembers" {
    It "Should return 5 members" {
        (Get-WinAdminsMembers).Count | Should -Be 6
    }
}

