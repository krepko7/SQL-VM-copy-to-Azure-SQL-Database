<img style="float: right;" src="../../graphics/solutions-microsoft-logo-small.png">

## Azure Data Factory (ADF) 
# Lab 3 - Challenge - Append the date to output file name

Using what you have learned so far change your pipeline so that the outpuf file name contains the file name with
a date or date time at the end of it.  Example: employee_20191120.csv

Go ahead and Bing\Google it or look at Microsoft documentation https://docs.microsoft.com/en-us/.  If you want hints scroll down.

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

<img style="float: right;" src="../../graphics/clipyhint1.png">

Go to the Copy Data Activity in your pipeline and pick the Sink options.

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

<img style="float: right;" src="../../graphics/clipyhint2.png">

Edit the dataset and add a filename parameter in the parameter section and give it a default file name.

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

<img style="float: right;" src="../../graphics/clipyhint3.png">

Go to the connection and add dynamic content to your file name.

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

<img style="float: right;" src="../../graphics/clipyhint4.png">

Here is part of the code needed:
@concat(dataset().fileName, formatdatetime(utcnow(), 'yyyy'),...

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

<img style="float: right;" src="../../graphics/clipyhint5.png">

Here is the entire dynamic code to add to your file name:

@concat(dataset().fileName, formatdatetime(utcnow(), 'yyyy'),
formatdatetime(utcnow(), 'mm'),
formatdatetime(utcnow(), 'dd'),
'.csv'
)

