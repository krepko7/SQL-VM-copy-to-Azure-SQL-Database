<img style="float: right;" src="../../graphics/solutions-microsoft-logo-small.png">

## Azure Data Factory (ADF) 
# Lab 1 - Set up Azure Data Factory and create a new linked service connection

Create a new Data Factory.  Go to portal.azure.com and click the Create Resource menu item from top left menu.

<img style="float: right;" src="../../graphics/createresource.png">

Type "Data Factory" in the search box and click the create button.

<img style="float: right;" src="../../graphics/DataFactory.png">

Fill in the fields similar to below.

<img style="float: right;" src="../../graphics/createadf.png">

Remember when creating new resources in Azure to check the notifications bell icon at the top of the Azure Portal. It will tell you when reources are ready and allow you to quickly access them. 

<img style="float: right;" src="../../graphics/notificationbell.png">

Once your data factory is set up open it in Azure. Click the Author and Monitor button.

<img style="float: right;" src="../../graphics/adfauthor.png">

Here is a screen shot of the initial ADF splash page. Click the Author pencil on left.

<img style="float: right;" src="../../graphics/adfsplash.png">

Click the Connections menu item at the bottom left and then click New.

<img style="float: right;" src="../../graphics/adfconnections.png">

Pick the Database category and then pick SQL Server.

<img style="float: right;" src="../../graphics/adflinkedservicesql.png">

The name of your linked service is important since you will end up with many of these and will want to know what linked service points to what data source.
You will later create data sets based on these linked services. 
Leave the Connect Via integration runtime (IR) drop down as "autoresolveintegrationruntime".  See more about IR's at https://docs.microsoft.com/en-us/azure/data-factory/create-azure-integration-runtime

Make sure to test the connection before you proceed.

<img style="float: right;" src="../../graphics/adfsqllinkedservice.png">

