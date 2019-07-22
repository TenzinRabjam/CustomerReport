SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 10/1/2018
-- Description:	Creating certain # of records in 
--				SalesLog table.
-- =============================================
CREATE PROCEDURE createSpecifiedNumberOfRecords 
	@numOfRows int

AS
BEGIN
	DECLARE @i int = 0

	WHILE @i < @numOfRows
	BEGIN
		SET @i = @i + 1
		INSERT INTO MafiaWorks.DBO.SalesLog VALUES('BANANA', 'BABA ROAD', 
		12345, 'MARS.DIMA', '192.168.0.1')
	END
END

GO
