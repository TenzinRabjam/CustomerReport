SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 10/1/2018
-- Description:	Deleting certain # of records in 
--				SalesLog table.
-- =============================================
ALTER PROCEDURE deleteSpecifiedNumberOfRecords 
	@numOfRows int

AS
BEGIN

	Delete from MafiaWorks.DBO.SalesLog where id < @numOfRows

END
GO
