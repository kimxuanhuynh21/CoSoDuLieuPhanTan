USE [ThoiTrang_CSDL]
GO

CREATE VIEW view_employee as
SELECT employee_private.employeeId as employeeId,
		employee_private.username as username,
		employee_private.pass as pass,
		employee_private.shopId as shopId,
		employee_private.roleId as roleId,
		employee_private.salaryId as salaryId,
		employee_private.managerId as managerId,
		employee_private.dateStarted as dateStarted,
		employee_private.dateEnded as dateEnded,
		employee_private.creator as creator,
		employee_private.retired as retired,
		employee_private.retiredBy as retiredBy,
		employee_private.retiredReason as retiredReason,
		employee_private.dateCreated as dateCreated,
		employee_private.dateChanged as dateChanged,
		employee_private.note as note,
		employee_public.name as name,
		employee_public.phone as phone,
		employee_public.avatar as avatar,
		employee_public.addressEmployee as addressEmployee,
		employee_public.email as email
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