<img style="float: right;" src="../../graphics/solutions-microsoft-logo-small.png">

## Azure Data Factory (ADF) 
# Lab 2 - Set up Data Lake Storage an ADF connection to it

Create a Storage Account for your Data Lake.  Go to portal.azure.com and click the Create Resource menu item from top left menu.

<img style="float: right;" src="../../graphics/createresource.png">

Then pick the Storage category and then click on Storage Account.  Fill in fields for the first screen similar to below.
Leave other screens as default for lab purposes.

<img style="float: right;" src="../../graphics/datalakecreate1.png">

Now go to your newly created storage account and click the Containers option.

<img style="float: right;" src="../../graphics/containers.png">

From here click the +Container icon at the top and give a lower case name, leave the public access level to "Private" and click OK.

Go to the Storage Account "blade" in Azure portal and clicke the Access keys menu item under the Settings section.
Just be familiar with this section in case you need the access keys later.

<img style="float: right;" src="../../graphics/storageaccesskeys.png">

Now go back to Data Factory, click the Author item and then click the bottom left Connections menu.
Create a new Linked Service for your data lake.

<img style="float: right;" src="../../graphics/datalakelinkedservice1.png">


<img style="float: right;" src="../../graphics/datalakelinkedservice2.png">


Click the ellipses next to Pipelines and create a new folder to keep things organized

<img style="float: right;" src="../../graphics/pipelinefolder.png">


Then click the ellipses next to Pipelines and pick the Copy Data option

<img style="float: right;" src="../../graphics/adfcopydata.png">

When working in a wizard like the Copy Wizard or creating pipelines from scratch make sure to give a good name to each
pipeline, linked service, data set and other componenets so it will be easier to work with later. 

<img style="float: right;" src="../../graphics/adfcopy2.png">

For your source pick the Database section filter at top and pick the SQL Server Connection you created earlier.

<img style="float: right;" src="../../graphics/adfsqlsource.png">


Pick your source table Person.Person and click Next.

Now pick your data lake destination you created earlie.

<img style="float: right;" src="../../graphics/adfcopydestination.png">


Pick the folder you created earlier in Data Lake storage using the browse button and give an appropriate file name and click next.

<img style="float: right;" src="../../graphics/adfcopydestinationfolder.png">

Click your desired file format settings and click next.

Click next, review settings and make any changes you desire and then click next again and then you should see a screen like this:

<img style="float: right;" src="../../graphics/adfcopyrun.png">

Now click the Monitor button to see your pipeline\job running.
You should see a screen similar to below.  If you don't see your job\pipeline check your filters on the top right.

<img style="float: right;" src="../../graphics/adfmonitor.png">

Optionally go to Azure Storage Explorer, sign into your Azure account and view the file(s) in your storage account.s

<img style="float: right;" src="../../graphics/azurestorageexp.png">



