CREATE TABLE [dbo].[regions] (
    [region_id]   INT          NOT NULL,
    [region_name] VARCHAR (25) NULL,
    CONSTRAINT [reg_id_pk] PRIMARY KEY CLUSTERED ([region_id] ASC)
);

