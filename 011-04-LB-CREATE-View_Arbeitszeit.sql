USE [FirmaUebung]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_Arbeitszeit]
AS
SELECT TOP (100) PERCENT 
	dbo.Arbeitszeit.Datum, 
	dbo.Kunden.Nachname AS KuNN, dbo.Kunden.Vorname AS KuVN, -- Daten aus Tabelle Kunden
	dbo.Projekt.Projekt, 
	dbo.Personal.Nachname AS MaNN, dbo.Personal.Vorname AS MaVN, 
    dbo.Abteilung.Abteilung, dbo.Position.Position, dbo.Beruf.Beruf, 
	dbo.Arbeitszeit.Zeit
FROM dbo.Arbeitszeit 
		INNER JOIN dbo.Projektzuordnung 
			ON dbo.Arbeitszeit.ProjektzuordnungID = dbo.Projektzuordnung.ID 
		INNER JOIN dbo.Personal 
			ON dbo.Projektzuordnung.PersonalID = dbo.Personal.PersonalID 
		INNER JOIN dbo.Abteilung 
			ON dbo.Personal.AbteilungsID = dbo.Abteilung.AbteilungsID 
		INNER JOIN dbo.Beruf 
			ON dbo.Personal.BerufID = dbo.Beruf.BerufID 
		INNER JOIN dbo.Position 
			ON dbo.Personal.PositionID = dbo.Position.PositionID 
		INNER JOIN dbo.Projekt 
			ON dbo.Projektzuordnung.ProjektID = dbo.Projekt.ProjektID 
		INNER JOIN dbo.Kunden 
			ON dbo.Projekt.KundenID = dbo.Kunden.KundenID
ORDER BY dbo.Arbeitszeit.Datum DESC, KuNN, Projekt, MaNN, MaVN
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[59] 4[14] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[52] 4[12] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 1
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Arbeitszeit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 159
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Projektzuordnung"
            Begin Extent = 
               Top = 6
               Left = 271
               Bottom = 148
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Personal"
            Begin Extent = 
               Top = 116
               Left = 527
               Bottom = 413
               Right = 694
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Abteilung"
            Begin Extent = 
               Top = 197
               Left = 830
               Bottom = 327
               Right = 1006
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Beruf"
            Begin Extent = 
               Top = 179
               Left = 46
               Bottom = 275
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Position"
            Begin Extent = 
               Top = 287
               Left = 88
               Bottom = 383
               Right = 255
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Projekt"
            Begin Extent = 
               Top = 16
               Left = 982
               Bottom = 146
               Right = 1150
            End
            Disp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Arbeitszeit'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'layFlags = 280
            TopColumn = 0
         End
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 16
               Left = 1283
               Bottom = 146
               Right = 1450
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Arbeitszeit'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Arbeitszeit'
GO


