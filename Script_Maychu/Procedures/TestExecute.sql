USE [ThoiTrang_CSDL]
GO

EXEC	@return_value = [dbo].[insert_product]
		@categoryId = N'category002',
		@saleId = NULL,
		@name = N'Áo siêu đẹp',
		@color = N'hường',
		@size = N'XXL',
		@unit = N'cái',
		@descriptionProduct = N'<p>Áo cực đẹp, phải mua ngay</p>',
		@quantity = 10,
		@creator = N'employee005',
		@note = N' '
GO
		
EXEC	@return_value = [dbo].[insert_supplier]
		@name = N'Mới',
		@addressSupplier = N'123 Hàm Tử, phường 10, quận 9',
		@phone = N'0838362527',
		@email = N'moi.fashion@moi.com',
		@creator = N'employee004',
		@note = N' '
GO

EXEC	@return_value = [dbo].[select_customer_by_conditions]
		@shopId = N'shop002',
		@vipId = N'vip002'
GO

EXEC	@return_value = [dbo].[select_product_by_conditions]
		@categoryId = N'category012',
		@saleId = NULL,
		@minPrice = 100000,
		@size = N'M',
		@minquantity = 20
GO

EXEC	@return_value = [dbo].[update_product]
		@productId = N'product019',
		@name = N'Cập nhật',
		@color = N'vàng khè',
		@size = N'M',
		@quantity = 12
GO

EXEC	@return_value = [dbo].[update_supplier]
		@supplierId = N'supplier004',
		@name = N'Cập nhật supplier',
		@phone = N'0838362520'
GO

EXEC	@return_value = [dbo].[update_employee]
		@shopId = N'shop001',
		@employeeId = N'employee014',
		@username = N'usernamecapnhat',
		@name = N'Cập nhật nha',
		@addressEmployee = N'Nhà mới cập nhật',
		@email = N'capnhat@gmail.com'
GO
