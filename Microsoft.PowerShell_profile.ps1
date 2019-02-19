# To create a profile if it doesn't exist:
# if (!(Test-Path -Path $PROFILE ))
#{ New-Item -Type File -Path $PROFILE -Force }


$title = Read-Host -Prompt "Window Title?"
$host.ui.RawUI.WindowTitle = $title

function global:Go-User {
    Set-Location "C:\Users\austin.christensen"
}

function global:Go-Desktop {
    Set-Location "C:\Users\austin.christensen\Desktop"
}

function global:Go-Repo {
    Set-Location "C:\Users\austin.christensen\Desktop\Stratus%20DevOps"
}

function global:open {
    param([string]$src)
    code $src
}

function global:Get-profile {
    open $profile
}

function global:Terraform-Workspace($a, $b, $c) {
    tf workspace $a $b $c
}

function global:Terraform-Workspace-List {
    tf workspace list
}

function global:Terraform-Workspace-Select($a) {
    tf workspace select $a
}

function global:Terraform-Workspace-New($a) {
    tf workspace new $a
}

function global:Terraform-Workspace-Delete($a) {
    tf workspace delete $a
}

Set-Alias tf terraform
Set-Alias -Name tfw -Value Terraform-Workspace
Set-Alias -Name tfwl -Value Terraform-Workspace-List
Set-Alias -Name tfws -Value Terraform-Workspace-Select
Set-Alias -Name tfwn -Value Terraform-Workspace-New
Set-Alias -Name tfwd -Value Terraform-Workspace-Delete
Clear-Host
