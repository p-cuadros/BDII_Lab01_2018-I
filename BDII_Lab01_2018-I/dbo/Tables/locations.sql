CREATE TABLE [dbo].[locations] (
    [location_id]    INT          NOT NULL,
    [street_address] VARCHAR (40) NULL,
    [postal_code]    VARCHAR (12) NULL,
    [city]           VARCHAR (30) NULL,
    [state_province] VARCHAR (25) NULL,
    [country_id]     CHAR (2)     NULL,
    CONSTRAINT [loc_id_pk] PRIMARY KEY CLUSTERED ([location_id] ASC),
    CONSTRAINT [loc_c_id_fk] FOREIGN KEY ([country_id]) REFERENCES [dbo].[countries] ([country_id])
);

