CREATE TABLE [dbo].[departments] (
    [department_id]   INT          NOT NULL,
    [department_name] VARCHAR (30) NULL,
    [manager_id]      INT          NULL,
    [location_id]     INT          NULL,
    CONSTRAINT [dept_id_pk] PRIMARY KEY CLUSTERED ([department_id] ASC),
    CONSTRAINT [dept_loc_fk] FOREIGN KEY ([location_id]) REFERENCES [dbo].[locations] ([location_id])
);

