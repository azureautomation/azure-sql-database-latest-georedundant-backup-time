Azure SQL Database: Latest Geo-Redundant backup time
====================================================

            

**Summary:**


The purpose of this script is to demonstrate how to view the time difference of your Azure SQL Databases' latest geo-redundant backups and the current time. The key scenario for this is for quickly tracking the last time a backup was made geo-redundant for
 a database. This helps to clarify the data which the database will have when using the Geo-Restore capability to recover a database. This script loops through all servers and databases in a subscription and lists the time difference between their latest geo-redundant
 backup and the current time. 


 


**Prerequisites:**


  *  Make sure you have installed Azure PowerShell. Learn how to install Azure PowerShell here:
[http://azure.microsoft.com/en-us/documentation/articles/install-configure-powershell/](http://azure.microsoft.com/en-us/documentation/articles/install-configure-powershell/)

  *  Make sure you have connected to your subscription. Azure AD is the recommended authentication method. To authenticate with Azure AD: 

  *  Type the following command in PowerShell: 'Add-AzureAccount' 
  *  In the window, type your email and password associated with the account



**

 

**




        
    
TechNet gallery is retiring! This script was migrated from TechNet script center to GitHub by Microsoft Azure Automation product group. All the Script Center fields like Rating, RatingCount and DownloadCount have been carried over to Github as-is for the migrated scripts only. Note : The Script Center fields will not be applicable for the new repositories created in Github & hence those fields will not show up for new Github repositories.
