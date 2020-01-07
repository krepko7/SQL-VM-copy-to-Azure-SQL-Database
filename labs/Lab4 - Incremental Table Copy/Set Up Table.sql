-- Azure Data Factory Lab SQL for incremental table load
-- Tables used as part of the entire lab include:
-- HumanResources.Employee   has a hierarchy ID so need to column.ToString() convert it
-- Person.person
-- Production.WorkOrder
-- Pre-req is to load the retail database

use retail
go

-------------------------------------------------------------------------------------
-- Take an existing table without modified date column and add it with default value
-------------------------------------------------------------------------------------

alter table production.workorder2 add [ModifiedDate] [datetime] NULL CONSTRAINT [dfModifiedDate] DEFAULT GETDATE()

-------------------------------------------------------------------------------------
-- Create the trigger to populate the modified date
-------------------------------------------------------------------------------------

-- DROP TRIGGER [Production].[trg_UpdateWorkOrder2ModifiedDate]


CREATE TRIGGER trg_UpdateWorkOrder2ModifiedDate
ON production.workorder2
AFTER UPDATE
AS
    UPDATE production.workorder2
    SET ModifiedDate = GETDATE()
    WHERE WorkOrderID IN (SELECT DISTINCT WorkOrderID FROM Inserted)

-------------------------------------------------------------------------------------
-- Test the trigger for insert
-------------------------------------------------------------------------------------

insert into production.workorder2 ([WorkOrderID],[ProductID],[OrderQty],[StockedQty],[ScrappedQty],[StartDate],[EndDate],[DueDate],	[ScrapReasonID])
select 	7777772,[ProductID],[OrderQty],[StockedQty],[ScrappedQty],[StartDate],[EndDate],[DueDate],[ScrapReasonID]
  from production.WorkOrder where workorderid = 1

 select * from production.workorder2 where workorderid = 7777772

-------------------------------------------------------------------------------------
-- Test the trigger for update
-------------------------------------------------------------------------------------

 update production.WorkOrder2 set OrderQty = 7 where workorderid = 7777772

 select * from production.workorder2 where workorderid = 7777772







 -------------------------------------------------------------------------------------
-- Reference SQL.  No need to run the below.
-- SQL to update a table with modified date in case you want to test incremental load
--------------------------------------------------------------------------------------
-- update Person.Person 
--    set modifieddate = dateadd(MI, 3, modifieddate);

-----------------------------------------------------------------
-- Set up Production.WorkOrder without modified date then add it 
-- No need to create the table, it should be part of the db restore
-----------------------------------------------------------------

-- drop table production.workorder2

--CREATE TABLE [Production].[WorkOrder2](
--	[WorkOrderID] [int] NOT NULL,
--	[ProductID] [int]  NULL,
--	[OrderQty] [int]  NULL,
--	[StockedQty] int null,
--	[ScrappedQty] [smallint] NULL,
--	[StartDate] [datetime] NULL,
--	[EndDate] [datetime] NULL,
--	[DueDate] [datetime] NULL,
--	[ScrapReasonID] [smallint] NULL
-- CONSTRAINT [PK_WorkOrder2_WorkOrderID] PRIMARY KEY CLUSTERED 
--(
--	[WorkOrderID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO

--insert into production.workorder2 ([WorkOrderID],
--	[ProductID],
--	[OrderQty],
--	[StockedQty],
--	[ScrappedQty],
--	[StartDate],
--	[EndDate],
--	[DueDate],
--	[ScrapReasonID])
--select 
--	[WorkOrderID],
--	[ProductID],
--	[OrderQty],
--	[StockedQty],
--	[ScrappedQty],
--	[StartDate],
--	[EndDate],
--	[DueDate],
--	[ScrapReasonID]
--  from production.WorkOrder


