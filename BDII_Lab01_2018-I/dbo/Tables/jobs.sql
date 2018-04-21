CREATE TABLE [dbo].[jobs] (
    [job_id]     VARCHAR (10) NOT NULL,
    [job_title]  VARCHAR (35) NULL,
    [min_salary] INT          NULL,
    [max_salary] INT          NULL,
    CONSTRAINT [job_id_pk] PRIMARY KEY CLUSTERED ([job_id] ASC)
);

