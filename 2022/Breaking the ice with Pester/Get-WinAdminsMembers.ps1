function Get-WinAdminsMembers {
    1..5 | ForEach-Object {
        [PSCustomObject]@{
            name = 'user#000{0}' -f $_
            id = $_
        }
    }
}