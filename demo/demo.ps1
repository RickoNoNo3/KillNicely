param($killPid)
if ($null -ne $killPid) {
    $dllPath = Resolve-Path "KillNicely.dll"
    [void][reflection.assembly]::LoadFile($dllPath)
    [KillNicely.Killer]::StopProgram($killPid)
}
