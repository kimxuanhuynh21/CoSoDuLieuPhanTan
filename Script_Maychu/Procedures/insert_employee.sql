USE [ThoiTrang_CSDL]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:23. Là nhân viên quản trị, tôi muốn thêm nhân viên mới
-- Location: Company
-- =============================================
CREATE PROCEDURE insert_employee
       @shopId nvarchar(7)
      ,@roleId nvarchar(7)
      ,@username varchar(100)
      ,@pass varchar(100)
      ,@name nvarchar(200)
      ,@addressEmployee nvarchar(200)
      ,@avatar varchar(200)
      ,@phone varchar(100)
      ,@salaryId nvarchar(9)
      ,@email varchar(100)
      ,@managerId nvarchar(11)
      ,@dateStarted datetime
      ,@dateEnded datetime
      ,@creator nvarchar(11)
      ,@note nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	INSERT INTO [ThoiTrang_CSDL].[dbo].[employee]
		(
		[shopId]
		,[roleId]
		,[username]
		,[pass]
		,[salaryId]
		,[managerId]
		,[dateStarted]
		,[dateEnded]
		,[creator]
		,[dateCreated]
		,[dateChanged]
		,[note]
		)
	VALUES
		(
		@shopId
		,@roleId 
		,@username 
		,@pass 
		,@salaryId 
		,@managerId 
		,@dateStarted 
		,@dateEnded 
		,@creator
		,GETDATE()
		,GETDATE() 
		,@note 
		)
	IF(@shopId = 'shop001')
	BEGIN
		INSERT INTO [SRV_SHOP001].[ThoiTrang_CSDL].[dbo].[employee]
			(
			[name]
			,[addressEmployee]
			,[avatar]
			,[phone]
			,[email]
			)
		VALUES
			(
			@name
			,@addressEmployee 
			,@avatar 
			,@phone 
			,@email
			)
	END
	ELSE IF(@shopId = 'shop002')
	BEGIN
		INSERT INTO [SRV_SHOP002].[ThoiTrang_CSDL].[dbo].[employee]
			(
			[name]
			,[addressEmployee]
			,[avatar]
			,[phone]
			,[email]
			)
		VALUES
			(
			@name
			,@addressEmployee 
			,@avatar 
			,@phone 
			,@email
			)
	END
	ELSE IF(@shopId = 'shop003')
	BEGIN
		INSERT INTO [ThoiTrang_CSDL].[dbo].[employee_public]
			(
			[name]
			,[addressEmployee]
			,[avatar]
			,[phone]
			,[email]
			)
		VALUES
			(@name
			,@addressEmployee 
			,@avatar 
			,@phone 
			,@email
			)
	END
	
END
GO
