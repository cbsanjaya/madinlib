object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Attendance System'
  ClientHeight = 388
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 40
    Width = 673
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
  object EditId: TEdit
    AlignWithMargins = True
    Left = 60
    Top = 99
    Width = 593
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
    ExplicitLeft = 280
    ExplicitTop = 80
    ExplicitWidth = 121
  end
end
