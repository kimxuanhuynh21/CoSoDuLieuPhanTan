SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:	21.	Là nhân viên quản trị, tôi muốn hiển thị sản phẩm theo điều kiện
-- Location: Company
-- =============================================
CREATE PROCEDURE select_product_by_conditions
	@categoryId nvarchar(11) = NULL
	,@saleId nvarchar(7) = NULL
	,@maxPrice float = NULL
	,@minPrice float = NULL
	,@name nvarchar(200) = NULL
	,@color nvarchar(100) = NULL
	,@size nvarchar(100) = NULL
	,@maxquantity int = NULL
	,@minquantity int = NULL
	,@creator nvarchar(11) = NULL
	,@unit nvarchar(100) = NULL 
	,@descriptionProduct nvarchar(255) = NULL  
	,@voided tinyint = NULL   
	,@voidedBy nvarchar(11) = NULL  
AS
BEGIN
	SELECT *
	FROM [ThoiTrang_CSDL].[dbo].[product]
	WHERE
		(@categoryId IS NULL OR (categoryId = @categoryId))
	AND (@saleId IS NULL OR (saleId = @saleId))
	AND (@name IS NULL OR (name  LIKE '%'+@name+'%'))
	AND (@color IS NULL OR (color LIKE '%'+@color+'%'))
	AND (@size IS NULL OR (size = @size))
	AND (@maxquantity IS NULL OR (quantity <= @maxquantity))
	AND (@minquantity IS NULL OR (quantity >= @minquantity))
	AND (@creator IS NULL OR (creator LIKE '%'+@creator+'%'))
	AND (@unit IS NULL OR (unit LIKE '%'+@unit+'%'))
	AND (@descriptionProduct IS NULL OR (descriptionProduct LIKE '%'+@descriptionProduct+'%'))
	AND (@voided IS NULL OR (voided = @voided))
	AND (@voidedBy IS NULL OR (voidedBy LIKE '%'+@voidedBy+'%'))
	AND (@maxPrice IS NULL OR (productId in
		(
			SELECT tblPrice.productId
			FROM [ThoiTrang_CSDL].[dbo].[productPrice] as tblPrice
			INNER JOIN
			(
				SELECT productId, MAX(numberPrice) as maxNumberPrice
				FROM [ThoiTrang_CSDL].[dbo].[productPrice]
				GROUP BY productId
			) as tblNumberPrice 
			ON tblPrice.productId = tblNumberPrice.productId
			AND tblPrice.numberPrice = tblNumberPrice.maxNumberPrice
			WHERE price <= @maxPrice)
		)
	)
	AND (@minPrice IS NULL OR (productId in
		(
			SELECT tblPrice.productId
			FROM [ThoiTrang_CSDL].[dbo].[productPrice] as tblPrice
			INNER JOIN
			(
				SELECT productId, MAX(numberPrice) as minNumberPrice
				FROM [ThoiTrang_CSDL].[dbo].[productPrice]
				GROUP BY productId
			) as tblNumberPrice 
			ON tblPrice.productId = tblNumberPrice.productId
			AND tblPrice.numberPrice = tblNumberPrice.minNumberPrice
			WHERE price >= @minPrice)
		)
	)
END
GO
