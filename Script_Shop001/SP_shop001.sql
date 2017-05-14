-- 3 --Là nhân viên bán hàng, tôi muốn tạo hóa đơn bán hàng
IF OBJECT_ID('CreateOrder') IS NOT NULL
DROP PROC CreateOrder
GO
CREATE PROC CreateOrder
	@productId varchar(255),
	@quantityProductId varchar(255),
	@customerId varchar(200),
	@creator varchar(200)
AS
BEGIN
DECLARE @lensOfProduct int
DECLARE @substringProduct varchar(200)	
DECLARE @lenOfQuantityProduct int
DECLARE @substringQuantityProduct varchar(200)	
DECLARE @numberPriceProduct int
DECLARE @countSpaceProductId int
DECLARE @countSpacequantityProductId int
DECLARE @quantityInTableProduct int
DECLARE @quantityInTableStorage int
DECLARE @discount int
DECLARE @discountVIP int
DECLARE @discountSale int	
DECLARE @orderId varchar(200)
DECLARE @shopId varchar(200)

SET @shopId = (SELECT shopId FROM Company.ThoiTrang_CSDL.dbo.employee WHERE employeeId = @creator)
							
IF(@shopId = 'shop001')
BEGIN
SET @lensOfProduct = LEN(@productId)
SET @lenOfQuantityProduct = LEN(@quantityProductId)
SET @countSpaceProductId =  DATALENGTH (@productId) - DATALENGTH(REPLACE(@productId,' ',''))
SET @countSpacequantityProductId = DATALENGTH (@quantityProductId) - DATALENGTH(REPLACE(@quantityProductId,' ',''))
SET @discountVIP = (SELECT discount FROM Company.ThoiTrang_CSDL.dbo.customer c, Company.ThoiTrang_CSDL.dbo.promotion p WHERE 
c.vipId = p.vipId and c.customerId = @customerId)

--insert orederCus
INSERT INTO orderCus(customerId, creator) VALUES(@customerId, @creator)

--get new orderId
SET @orderId = (SELECT TOP 1 orderId FROM orderCus ORDER BY orderId DESC)

IF ( @countSpaceProductId = @countSpacequantityProductId )
BEGIN
WHILE( @lensOfProduct > 0)
	BEGIN
		IF (charindex(' ', @productId) > 0)
		BEGIN
			SET @substringProduct = LEFT(@productId, charindex(' ', @productId) - 1)
			SET @productId = SUBSTRING(@productId, LEN(@substringProduct) + 2,LEN(@productId) - LEN(@substringProduct)-1)
			SET @substringQuantityProduct = LEFT(@quantityProductId, charindex(' ', @quantityProductId) - 1)
			SET @quantityProductId = SUBSTRING(@quantityProductId, LEN(@substringQuantityProduct) + 2,LEN(@quantityProductId)
			- LEN(@substringQuantityProduct)-1)

		END
		ELSE IF (charindex(' ', @productId) <= 0)
		BEGIN
			SET @substringProduct = RIGHT(@productId, LEN(@productId))
			SET @productId = '';
			SET @substringQuantityProduct = RIGHT(@quantityProductId, LEN(@quantityProductId))
			SET @quantityProductId = '';
		END
		
		-- check quantity 
		SET @quantityInTableProduct = (SELECT quantity FROM Company.ThoiTrang_CSDL.dbo.product WHERE productId = @substringProduct)

		SET @quantityInTableStorage = (SELECT quantity FROM storage WHERE productId = @substringProduct AND shopId = @shopId)
		IF (@quantityInTableProduct < @substringQuantityProduct AND @quantityInTableStorage < @substringQuantityProduct)
		BEGIN 
			PRINT 'Quantity of product ' + @substringProduct + ' is '+ CAST(@quantityInTableProduct AS varchar(100))
			 + ', not enough for you to buy'
		END

		ELSE
		BEGIN
		-- discount
		
		SET @discountSale = (SELECT discount FROM Company.ThoiTrang_CSDL.dbo.product p, Company.ThoiTrang_CSDL.dbo.sale s 
			WHERE p.saleId = s.saleId AND p.productId = @substringProduct)
		IF (@discountVIP >= @discountSale)
		BEGIN
			SET @discount = @discountVIP
		END
		ELSE IF (@discountVIP < @discountSale)
		BEGIN
			SET @discount = @discountSale
		END
		ELSE 
		BEGIN
			SET @discount = @discountVIP
		END
	
		--numberPrice
		SET @numberPriceProduct = (SELECT TOP 1 numberPrice FROM Company.ThoiTrang_CSDL.dbo.productPrice WHERE productId = @substringProduct 
		ORDER BY numberPrice DESC)

		
		-- insert into orderDetail
		INSERT INTO orderDetail(orderId, productId, numberPrice, quantity, discount, creator)
		VALUES(@orderId, @substringProduct, @numberPriceProduct, CAST(@substringQuantityProduct AS INT), @discount, @creator)

		--update quantity in product
		UPDATE Company.ThoiTrang_CSDL.dbo.product SET quantity = quantity - CAST(@substringQuantityProduct AS INT) WHERE productId = @substringProduct

		--update quantity in storage
		UPDATE storage SET quantity = quantity - CAST(@substringQuantityProduct AS INT) WHERE productId = @substringProduct
		AND shopId = @shopId


		END
		SET @lensOfProduct = LEN(@productId)
		SET @lenOfQuantityProduct = LEN(@quantityProductId)
		
	END
END
ELSE 
	BEGIN
		PRINT 'ProductId & Quantity do not match'
	END

IF NOT EXISTS( SELECT * FROM orderDetail WHERE orderId = @orderId)
	BEGIN
		DELETE FROM orderCus WHERE orderId = @orderId
	END
ELSE IF EXISTS( SELECT * FROM orderDetail WHERE orderId = @orderId)
	BEGIN 
		SELECT TOP 1 * FROM orderCus ORDER BY orderId DESC
		SELECT * FROM orderDetail WHERE orderId = @orderId
	END

END 
ELSE 
BEGIN
	PRINT 'You do not have permission to create Order, only in shop001'
END
END

EXEC CreateOrder 'product001 product002', '2 3', 'customer001', 'employee001'

-----  Lấy số tiền thu từ hóa đơn vào của 1 shop ----

IF OBJECT_ID('getProfitByMonth_shop001') IS NOT NULL
DROP PROC getProfitByMonth_shop001
GO
CREATE PROC getProfitByMonth_shop001
	@shopId varchar(255),
	@year int,
	@month int
AS
BEGIN
IF(@shopId = 'shop001')
BEGIN
DECLARE @orderCusId varchar(100)
DECLARE @productId varchar(100)
DECLARE @price float
DECLARE @totalPrice float
DECLARE @quantity int
DECLARE @discount float
SET @totalPrice = 0

DECLARE @cur_orderCus CURSOR
		SET @cur_orderCus = CURSOR FOR SELECT orderId FROM orderCus WHERE YEAR(dateCreated) = @year 
		AND MONTH (dateCreated) = @month AND creator IN (SELECT employeeId FROM Company.ThoiTrang_CSDL.dbo.employee WHERE shopId = @shopId)
		OPEN @cur_orderCus
		WHILE ( 0 = 0)
		BEGIN
			FETCH NEXT FROM @cur_orderCus INTO @orderCusId
			IF @@FETCH_STATUS <> 0 BREAK
					DECLARE @cur_orderDetail CURSOR
					SET @cur_orderDetail = CURSOR FOR SELECT productId FROM orderDetail WHERE orderId = @orderCusId
					OPEN @cur_orderDetail
					WHILE ( 0 = 0 )
					BEGIN
						FETCH NEXT FROM @cur_orderDetail INTO @productId
						
						IF @@FETCH_STATUS <> 0 BREAK

						SET @price = (SELECT price FROM Company.ThoiTrang_CSDL.dbo.productPrice WHERE productId = @productId AND numberPrice in
						(SELECT numberPrice FROM orderDetail WHERE orderId = @orderCusId AND productId = @productId))

						SET @discount = (SELECT discount FROM orderDetail WHERE 
						orderId = @orderCusId AND productId = @productId)

						SET @quantity = (SELECT quantity FROM orderDetail WHERE 
						orderId = @orderCusId AND productId = @productId)

						SET @price = @price*(1 - @discount/100)*@quantity 
						
						SET @totalPrice = @totalPrice + @price
							
					END			
		END
	SELECT @totalPrice AS toalPrice
	CLOSE @cur_orderDetail
	DEALLOCATE @cur_orderDetail
	CLOSE @cur_orderCus
	DEALLOCATE @cur_orderCus
END
ELSE
BEGIN
	PRINT 'You have only permission to get profit from shop001'
END
END


EXEC getProfitByMonth_shop001 'shop001', 2017, 3



-------

--4. Là khách hàng, tôi muốn xem danh sách sản phẩm ở từng chi nhánh và tìm theo nhiều điều kiện	
IF OBJECT_ID('searchProduct') IS NOT NULL
DROP PROC searchProduct
GO
CREATE PROC searchProduct
	@keyword varchar(200),
	@categoryId varchar(200),
	@shopId varchar(200)
AS
BEGIN
		SELECT 
		CASE WHEN p.saleId IS NULL THEN 'NULL'
		WHEN EXISTS(SELECT * FROM Company.ThoiTrang_CSDL.dbo.sale WHERE saleId = p.saleId) THEN 
		(SELECT saleId FROM Company.ThoiTrang_CSDL.dbo.sale WHERE saleId = p.saleId)
		END AS saleId,

		CASE WHEN p.saleId IS NULL THEN 'NULL'
		WHEN EXISTS(SELECT * FROM Company.ThoiTrang_CSDL.dbo.sale WHERE saleId = p.saleId) THEN 
		(SELECT name FROM Company.ThoiTrang_CSDL.dbo.sale WHERE saleId = p.saleId)
		END AS saleName,

		CASE WHEN p.saleId IS NULL THEN 'NULL'
		WHEN EXISTS(SELECT * FROM Company.ThoiTrang_CSDL.dbo.sale WHERE saleId = p.saleId) THEN 
		(SELECT CAST(discount AS varchar(100)) FROM Company.ThoiTrang_CSDL.dbo.sale WHERE saleId = p.saleId)
		END AS discount,
		st.shopId, p.productId, p.categoryId, p.name, p.color, st.quantity
	FROM storage st, Company.ThoiTrang_CSDL.dbo.product p, Company.ThoiTrang_CSDL.dbo.productImage prI, Company.ThoiTrang_CSDL.dbo.sale s
	WHERE st.shopId = @shopId AND st.productId = p.productId AND 
	prI.productId = p.productId AND categoryId = @categoryId AND p.name LIKE '%'+@keyword+'%'
	GROUP BY p.productId, st.shopId, p.categoryId, p.name, p.color, st.quantity, p.saleId


END

EXEC searchProduct 'B', 'category014', 'shop001'

 

	





        		
