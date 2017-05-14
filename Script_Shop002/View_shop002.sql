--28. Là người bán hàng ở các chi nhánh, tôi muốn xem các chương trình khuyến mãi đang có


CREATE VIEW [current sale] AS
SELECT * FROM Company.ThoiTrang_CSDL.dbo.sale
WHERE YEAR(fromTime) = YEAR(GETDATE()) AND MONTH(fromTime) = MONTH(GETDATE())
