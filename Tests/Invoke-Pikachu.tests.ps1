Describe -Name 'Invoke-Pikachu Function' {
    It -Name 'Function should load' -Test {
        $functioncontent = [io.file]::readalltext('/home/runner/work/Pokemon/Pokemon/Invoke-Pikachu.ps1') -replace 'Invoke-Pikachu$'
        $ExecutionContext.InvokeCommand.InvokeScript($functioncontent, $false, [Management.Automation.Runspaces.PipelineResultTypes]::None, $null, $null)
        ($null = Get-Item function:Invoke-Pikachu) | Should -Not -BeNullOrEmpty
    }
}