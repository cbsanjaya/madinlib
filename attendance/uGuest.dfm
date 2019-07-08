object FormGuest: TFormGuest
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pengunjung Baru'
  ClientHeight = 398
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object EditId: TLabeledEdit
    Left = 8
    Top = 24
    Width = 241
    Height = 21
    EditLabel.Width = 71
    EditLabel.Height = 13
    EditLabel.Caption = 'ID Pengunjung'
    Enabled = False
    TabOrder = 0
  end
  object EditName: TLabeledEdit
    Left = 8
    Top = 67
    Width = 329
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 13
    EditLabel.Caption = 'Nama Pengunjung'
    TabOrder = 1
  end
  object GroupGender: TRadioGroup
    Left = 8
    Top = 94
    Width = 225
    Height = 49
    Caption = 'Gender'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Pria'
      'Wanita')
    TabOrder = 2
  end
  object EditAddress1: TLabeledEdit
    Left = 8
    Top = 171
    Width = 329
    Height = 21
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = 'Alamat Utama'
    TabOrder = 3
  end
  object EditAddress2: TLabeledEdit
    Left = 8
    Top = 211
    Width = 329
    Height = 21
    EditLabel.Width = 81
    EditLabel.Height = 13
    EditLabel.Caption = 'Alamat Alternatif'
    TabOrder = 4
  end
  object EditEmail: TLabeledEdit
    Left = 8
    Top = 256
    Width = 329
    Height = 21
    EditLabel.Width = 60
    EditLabel.Height = 13
    EditLabel.Caption = 'Alamat Email'
    TabOrder = 5
  end
  object EditTelephone: TLabeledEdit
    Left = 8
    Top = 299
    Width = 329
    Height = 21
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'Nomer Telepone'
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 0
    Top = 362
    Width = 357
    Height = 36
    Align = alBottom
    TabOrder = 7
    object ButtonSave: TButton
      Left = 192
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = ButtonSaveClick
    end
    object ButtonClose: TButton
      Left = 273
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Keluar'
      ModalResult = 8
      TabOrder = 1
    end
  end
end
