use [ThoiTrang_CSDL]
go

Create Trigger dbo.FK_storageproduct ON [dbo].[storage]
After Insert, Update
As
Begin
   If NOT Exists(select productId from [Company].[ThoiTrang_CSDL].[dbo].[product] where productId in (Select productId from inserted)) AND Exists(Select productId from inserted)
   BEGIN
    rollback
    RAISERROR ('Foreign Key not exit', 16, 1);
   END

END
go

Create Trigger dbo.FK_storageshop ON [dbo].[storage]
After Insert, Update
As
Begin
   If NOT Exists(select shopId from [Company].[ThoiTrang_CSDL].[dbo].[shop] where shopId in (Select shopId from inserted)) AND Exists(Select shopId from inserted)
   BEGIN
    rollback
    RAISERROR ('Foreign Key not exit', 16, 1);
   END

END
go

Create Trigger dbo.FK_orderCuscustomer ON [dbo].[orderCus]
After Insert, Update
As
Begin
   If NOT Exists(select customerId from [Company].[ThoiTrang_CSDL].[dbo].[customer] where customerId in (Select customerId from inserted)) AND Exists(Select customerId from inserted)
   BEGIN
    rollback
    RAISERROR ('Foreign Key not exit', 16, 1);
   END

END
go

Create Trigger dbo.FK_orderDetailproduct ON [dbo].[orderDetail]
After Insert, Update
As
Begin
   If NOT Exists(select productId from [Company].[ThoiTrang_CSDL].[dbo].[product] where productId in (Select productId from inserted)) AND Exists(Select productId from inserted)
   BEGIN
    rollback
    RAISERROR ('Foreign Key not exit', 16, 1);
   END

END
go