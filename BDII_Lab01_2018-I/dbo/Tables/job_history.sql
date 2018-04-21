CREATE TABLE [dbo].[job_history] (
    [employee_id]   INT          NOT NULL,
    [start_date]    DATE         NOT NULL,
    [end_date]      DATE         NULL,
    [job_id]        VARCHAR (10) NULL,
    [department_id] INT          NULL,
    CONSTRAINT [jhist_emp_id_st_date_pk] PRIMARY KEY CLUSTERED ([employee_id] ASC, [start_date] ASC),
    CONSTRAINT [jhist_date_interval] CHECK ([end_date]>[start_date]),
    CONSTRAINT [jhist_dept_fk] FOREIGN KEY ([department_id]) REFERENCES [dbo].[departments] ([department_id]),
    CONSTRAINT [jhist_emp_fk] FOREIGN KEY ([employee_id]) REFERENCES [dbo].[employees] ([employee_id]),
    CONSTRAINT [jhist_job_fk] FOREIGN KEY ([job_id]) REFERENCES [dbo].[jobs] ([job_id])
);

