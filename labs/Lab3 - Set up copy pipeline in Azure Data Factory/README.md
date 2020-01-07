<img style="float: right;" src="../../graphics/solutions-microsoft-logo-small.png">

## Copy data from SQL VM to SQL Paas
# Lab 3 - Incremental Table Copy - Set up SQL table

Go back to Data Factory, click the Author item and then click the bottom left Connections menu.
Create a new Linked Service for your Azure SQL DB you created earlier. Use the Azure SQL DB admin ID and password 
you used in the earlier lab when you set up the Azure SQL DB.

Click the create button.

<img style="float: right;" src="../../graphics/azuresqlconnection1.png">

Now in Azure Data Factory click the ellipses next to Pipelines and create a new folder to keep things organized.
Call the folder anything you like.  Example "Data Factory Lab".

<img style="float: right;" src="../../graphics/pipelinefolder.png">

Click the plus icon to the right of the "Filter resources by name" input box and pick the Copy Data option.

<img style="float: right;" src="../../graphics/adfcopydata.png">

When working in a wizard like the Copy Wizard or creating pipelines from scratch make sure to give a good name to each
pipeline, linked service, data set and other componenets so it will be easier to work with later. 

<img style="float: right;" src="../../graphics/adfcopy2.png">

For your source pick the Database section filter at top and pick the SQL Server Connection you created earlier.

<img style="float: right;" src="../../graphics/adfsqlsource.png">

Pick your source table Person.Person and click Next.



Now click the Monitor button to see your pipeline\job running.
You should see a screen similar to below.  If you don't see your job\pipeline check your filters on the top right.

<img style="float: right;" src="../../graphics/adfmonitor.png">

