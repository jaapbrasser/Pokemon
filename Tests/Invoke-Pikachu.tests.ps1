Describe -Name 'Invoke-Pikachu Function' {
    It -Name 'Function should load' -Test {
        . /home/runner/work/Pokemon/Pokemon/Invoke-Pikachu.ps1
        ($null = Get-Item function:Invoke-Pikachu) | Should -Not -BeNullOrEmpty
    }
}