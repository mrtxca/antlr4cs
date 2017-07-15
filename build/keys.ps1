# Note: these values may only change during major release

If ($AntlrVersion.Contains('-')) {

	# Use the development keys
	$Keys = @{
		'net20' = 'e9931a4108ef2354'
		'net30' = 'e9931a4108ef2354'
		'net35-cf' = 'e9931a4108ef2354'
		'net35-client' = 'e9931a4108ef2354'
		'net40-client' = 'e9931a4108ef2354'
		'net45' = 'e9931a4108ef2354'
		'portable40-net40+sl5+win8+wp8+wpa81' = 'e9931a4108ef2354'
		'netstandard1.1' = 'e9931a4108ef2354'
	}

} Else {

	# Use the final release keys
	$Keys = @{
		'net20' = '09abb75b9ed49849'
		'net30' = '09abb75b9ed49849'
		'net35-cf' = '09abb75b9ed49849'
		'net35-client' = '09abb75b9ed49849'
		'net40-client' = '09abb75b9ed49849'
		'net45' = '09abb75b9ed49849'
		'portable40-net40+sl5+win8+wp8+wpa81' = '09abb75b9ed49849'
		'netstandard1.1' = '09abb75b9ed49849'
	}

}

function Resolve-FullPath() {
	param([string]$Path)
	[System.IO.Path]::GetFullPath((Join-Path (pwd) $Path))
}
