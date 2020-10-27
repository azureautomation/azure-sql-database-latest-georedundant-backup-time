<#  
.SYNOPSIS 
    List the last geo-redundant backup time of all databases in a subscription
 
.DESCRIPTION 
    This script walks through the process of viewing the last geo-redundant backup for all databases on a subscription.

.EXAMPLE 
    .\GetAzureSQLDatabaseLastGeoRedundantBackupTime
 
.Notes 
    Author: Eli Fisher 
    Last Updated:2/23/2015 
#>

Write-Host "Getting the time difference of all live databases' latest available geo-redundant backup and the current time." 
#Get all servers in the current subscription
Get-AzureSQLDatabaseServer | %{

	#Store the current server for the database
	$ServerName = $_.ServerName
	#Get all databases on the current server.
	Get-AzureSqlDatabase -ServerName $ServerName | %{

		if ($_.Name -ne 'master') {
			#Get the live database's backup information.        
			Get-AzureSqlRecoverableDatabase -ServerName $ServerName -DatabaseName $_.Name | %{       
				#Get the time difference of the last geo-redundant backup for the database and the current time.
				$TimeSpan = New-TimeSpan -Start $_.LastAvailableBackupDate -End (Get-Date)
				#List the time difference for the database.
				'Server Name: ' + $ServerName + "`n" + 'Database Name: ' + $_.Name + "`n" + 'Lastest Geo-Redundant Backup: ' + $TimeSpan.Days + ' Days, ' + $TimeSpan.Hours + ' Hours, and ' + $TimeSpan.Minutes + ' Minutes' + "`n"
			}
		}
	}
}