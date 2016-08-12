CREATE TABLE [dbo].[t_2glas] (
  [id] [int] IDENTITY,
  [pat_id] [int] NULL,
  [proj_id] [int] NULL,
  [regDate] [date] NULL,
  [probe] [int] NULL,
  [leu] [int] NULL,
  [pcr_n_gonorrhoeae] [int] NULL,
  [pcr_chlamydia_trachomatis] [int] NULL,
  [pcr_m_genitalum] [int] NULL,
  [pcr_m_homminis] [int] NULL,
  [pcr_ureaplasm_urealytikum] [int] NULL,
  [pcr_rokaryonten] [int] NULL,
  [concentr_ml] [int] NULL,
  CONSTRAINT [PK_t_2glas_id] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'2 glass probe data', 'SCHEMA', N'dbo', 'TABLE', N't_2glas'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Probe number', 'SCHEMA', N'dbo', 'TABLE', N't_2glas', 'COLUMN', N'probe'
GO