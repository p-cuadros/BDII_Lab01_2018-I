CREATE TABLE [dbo].[employees] (
    [employee_id]    INT            NOT NULL,
    [first_name]     VARCHAR (20)   NULL,
    [last_name]      VARCHAR (25)   NULL,
    [email]          VARCHAR (25)   NULL,
    [phone_number]   VARCHAR (20)   NULL,
    [hire_date]      DATE           NULL,
    [job_id]         VARCHAR (10)   NULL,
    [salary]         DECIMAL (8, 2) NULL,
    [commission_pct] DECIMAL (2, 2) NULL,
    [manager_id]     INT            NULL,
    [department_id]  INT            NULL,
    CONSTRAINT [emp_emp_id_pk] PRIMARY KEY CLUSTERED ([employee_id] ASC),
    CONSTRAINT [emp_salary_min] CHECK ([salary]>(0)),
    CONSTRAINT [emp_dept_fk] FOREIGN KEY ([department_id]) REFERENCES [dbo].[departments] ([department_id]),
    CONSTRAINT [emp_job_fk] FOREIGN KEY ([job_id]) REFERENCES [dbo].[jobs] ([job_id]),
    CONSTRAINT [emp_manager_fk] FOREIGN KEY ([manager_id]) REFERENCES [dbo].[employees] ([employee_id]),
    CONSTRAINT [emp_email_uk] UNIQUE NONCLUSTERED ([email] ASC)
);

