#####################
##    Utilities    ##
#####################

$packages = @(
	# Visual C++ Runtimes (referred to as vcredists for short)
	# https://learn.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist
	"Microsoft.VCRedist.2015+.x64"
	"LibreWolf.LibreWolf"
	"M2Team.NanaZip"
	"Microsoft.WindowsTerminal"
)

foreach ($a in $packages) {
	& winget install -e --id $a --accept-package-agreements --accept-source-agreements --disable-interactivity --force -h
}
