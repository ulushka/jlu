SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[dbo.v_2glas_probe ] 
AS  SELECT tg.id, tg.pat_id, tg.proj_id, tg.regDate, tg.probe, tg.leu, tg.pcr_n_gonorrhoeae, tg.pcr_chlamydia_trachomatis, tg.pcr_m_genitalum, tg.pcr_m_homminis, tg.pcr_ureaplasm_urealytikum, tg.pcr_rokaryonten, tg.concentr_ml,
  CAST((SELECT name_microb + ',' FROM dbo.t_2glas_other_microb WHERE twoglass_id=tg.id FOR XML PATH('')) AS VARCHAR(MAX)) AS other_microbs FROM dbo.t_2glas tg
GO