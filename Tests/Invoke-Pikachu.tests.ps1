Describe -Name 'Invoke-Pikachu Function' {
    It -Name 'Function should load' -Test {
        . ../Invoke-Pikachu.ps1
        Get-Item function:Invoke-PIkachu | Should -Not -BeNullOrEmpty
    }
}