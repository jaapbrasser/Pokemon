Describe -Name 'Invoke-Pikachu Function' {
    It -Name 'Function should load' -Test {
        . ../Invoke-Pikachu.ps1
        ($null = Get-Item function:Invoke-Pikachu) | Should -Not -BeNullOrEmpty
    }
}