object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Attendance System'
  ClientHeight = 388
  ClientWidth = 584
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 40
    Width = 544
    Height = 46
    Margins.Left = 20
    Margins.Top = 40
    Margins.Right = 20
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Scan atau Ketik ID Anda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 707
  end
  object LabelName: TLabel
    AlignWithMargins = True
    Left = 70
    Top = 190
    Width = 444
    Height = 25
    Margins.Left = 70
    Margins.Right = 70
    Align = alTop
    Alignment = taCenter
    Caption = 'Nama Anda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 121
  end
  object LabelAddress1: TLabel
    AlignWithMargins = True
    Left = 80
    Top = 221
    Width = 424
    Height = 23
    Margins.Left = 80
    Margins.Right = 80
    Align = alTop
    Alignment = taCenter
    Caption = 'Alamat 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
    ExplicitWidth = 73
  end
  object LabelAddress2: TLabel
    AlignWithMargins = True
    Left = 80
    Top = 250
    Width = 424
    Height = 23
    Margins.Left = 80
    Margins.Right = 80
    Align = alTop
    Alignment = taCenter
    Caption = 'Alamat 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
    ExplicitWidth = 73
  end
  object LabelId: TLabel
    AlignWithMargins = True
    Left = 70
    Top = 159
    Width = 444
    Height = 25
    Margins.Left = 70
    Margins.Right = 70
    Align = alTop
    Alignment = taCenter
    Caption = 'ID Anda'
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 85
  end
  object LabelMotive: TLabel
    AlignWithMargins = True
    Left = 50
    Top = 335
    Width = 484
    Height = 33
    Margins.Left = 50
    Margins.Right = 50
    Margins.Bottom = 20
    Align = alBottom
    Alignment = taCenter
    Caption = 'ALASAN BERKUNJUNG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
    ExplicitWidth = 306
  end
  object EditId: TEdit
    AlignWithMargins = True
    Left = 60
    Top = 99
    Width = 464
    Height = 47
    Margins.Left = 60
    Margins.Top = 10
    Margins.Right = 60
    Margins.Bottom = 10
    Align = alTop
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = EditIdKeyDown
  end
end
