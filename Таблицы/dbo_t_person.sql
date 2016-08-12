CREATE TABLE [dbo].[t_person] (
  [id] [int] IDENTITY,
  [Firstname] [varchar](50) NULL,
  [Lastname] [varchar](50) NULL,
  [dateBirth] [date] NULL,
  [regDate] [date] NULL,
  [actAge] AS (datediff(year,[dateBirth],getdate())),
  [regAge] AS (datediff(year,[dateBirth],[regDate])),
  CONSTRAINT [PK_t_person_id] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'PatientDataTable', 'SCHEMA', N'dbo', 'TABLE', N't_person'
GO