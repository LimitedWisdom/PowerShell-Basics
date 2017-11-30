# Setup the default location
set-location c:\

# Change the prompt appropriately :)
function Prompt {
	"p$ " + $pwd + ">"
}

# Clean up the Console
$console = $host.UI.RawUI
$console.ForegroundColor = "green"

# Name the window based on authority
function Test-Administrator {
	$user = [Security.Principal.WindowsIdentity]::GetCurrent();
	(New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if (Test-Administrator = True) {
	$console.WindowTitle = "{{{{{     Glamdring     }}}}}"
} else {
	$console.WindowTitle = "SWITCH TO ADMIN, MAN!"
}

# Wrap it up
Clear-Host
