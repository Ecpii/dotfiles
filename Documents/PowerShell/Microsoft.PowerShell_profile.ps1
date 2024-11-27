oh-my-posh init pwsh --config "C:\Users\epicw\.config\omp\catppuccin.omp.json" | Invoke-Expression
Set-PSReadlineOption -EditMode vi

function which([string]$cmd) {gcm -ErrorAction "SilentlyContinue" $cmd | ft Definition}
function refreshenv() {
	$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
}
function bigred() {
	cd "C:/dev/bigredhacks"
}

function bigredbackend() {
	cd "C:/dev/bigredhacks/backend"
	./.venv/Scripts/activate
}

function hw() {
	cd "C:/Users/epicw/Documents/uMich/eecs215/hw"
}

function n() {nvim}

