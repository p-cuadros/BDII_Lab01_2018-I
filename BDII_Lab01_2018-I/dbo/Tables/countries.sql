CREATE TABLE [dbo].[countries] (
    [country_id]   CHAR (2)     NOT NULL,
    [country_name] VARCHAR (40) NULL,
    [region_id]    INT          NULL,
    CONSTRAINT [country_c_id_pk] PRIMARY KEY CLUSTERED ([country_id] ASC),
    CONSTRAINT [countr_reg_fk] FOREIGN KEY ([region_id]) REFERENCES [dbo].[regions] ([region_id])
);

