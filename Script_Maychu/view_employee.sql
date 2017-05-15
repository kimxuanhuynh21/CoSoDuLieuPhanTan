USE [ThoiTrang_CSDL]
GO

CREATE VIEW view_employee as
SELECT employee_private.employeeId,
		employee_private.username,
		employee_private.pass,
		employee_private.shopId,
		employee_private.roleId,
		employee_private.salaryId,
		employee_private.managerId,
		employee_private.dateStarted,
		employee_private.dateEnded,
		employee_private.creator,
		employee_private.retired,
		employee_private.retiredBy,
		employee_private.retiredReason,
		employee_private.dateCreated,
		employee_private.dateChanged,
		employee_private.note,
		employee_public.name,
		employee_public.phone,
		employee_public.avatar,
		employee_public.addressEmployee,
		employee_public.email
FROM [dbo].[employee] AS employee_private
LEFT JOIN (
SELECT
COALESCE(shop001_employee.employeeId, company_employee_public.employeeId) AS employeeId,
COALESCE(shop001_employee.name, company_employee_public.name) AS name,
COALESCE(shop001_employee.addressEmployee, company_employee_public.addressEmployee) AS addressEmployee,
COALESCE(shop001_employee.avatar, company_employee_public.avatar) AS avatar,
COALESCE(shop001_employee.phone, company_employee_public.phone) AS phone,
COALESCE(shop001_employee.email, company_employee_public.email) AS email
FROM [SRV_SHOP001].[ThoiTrang_CSDL].[dbo].[employee] AS shop001_employee
FULL OUTER JOIN [dbo].[employee_public] AS company_employee_public
ON shop001_employee.employeeId = company_employee_public.employeeId
WHERE shop001_employee.employeeId IS NULL
OR company_employee_public.employeeId IS NULL
) AS employee_public
ON employee_private.employeeId = employee_public.employeeId
GO