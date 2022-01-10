inherited fJenisBarang: TfJenisBarang
  Caption = ' Jenis Barang'
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    object nama: TLabeledEdit
      Left = 129
      Top = 26
      Width = 338
      Height = 23
      EditLabel.Width = 30
      EditLabel.Height = 15
      EditLabel.Caption = 'nama'
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object username: TLabeledEdit
      Left = 129
      Top = 53
      Width = 338
      Height = 23
      EditLabel.Width = 52
      EditLabel.Height = 15
      EditLabel.Caption = 'username'
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object Button2: TButton
      Left = 89
      Top = 130
      Width = 75
      Height = 25
      Action = Insert
      TabOrder = 3
    end
    object Button3: TButton
      Left = 170
      Top = 114
      Width = 75
      Height = 41
      Caption = 'Button3'
      TabOrder = 4
    end
    object password: TLabeledEdit
      Left = 129
      Top = 85
      Width = 338
      Height = 23
      EditLabel.Width = 50
      EditLabel.Height = 15
      EditLabel.Caption = 'password'
      LabelPosition = lpLeft
      TabOrder = 5
    end
  end
  inherited DBGrid1: TDBGrid
    PopupMenu = PopupMenu1
    OnDblClick = DBGrid1DblClick
  end
  inherited UniDataSource1: TUniDataSource
    Left = 552
    Top = 120
  end
  inherited UniStoredProc1: TUniStoredProc
    Left = 592
    Top = 120
  end
  inherited ActionList1: TActionList
    Left = 512
    Top = 120
    inherited Insert: TAction
      ShortCut = 16467
      OnExecute = InsertExecute
    end
    inherited Update: TAction
      OnExecute = UpdateExecute
    end
    inherited Delete: TAction
      OnExecute = DeleteExecute
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 472
    Top = 120
  end
end
