CREATE TABLE [dbo].[t_projects] (
  [id] [int] IDENTITY,
  [name] [varchar](255) NULL,
  [supervision] [varchar](150) NULL,
  [dateReg] [datetime] NULL DEFAULT (getdate()),
  [comments] [varchar](500) NULL,
  CONSTRAINT [PK_t_projects_id] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Information about projects', 'SCHEMA', N'dbo', 'TABLE', N't_projects'
GO