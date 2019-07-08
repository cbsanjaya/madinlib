object FormMotive: TFormMotive
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Alasan Berkunjung'
  ClientHeight = 369
  ClientWidth = 515
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListMotive: TListBox
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 495
    Height = 349
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 33
    Items.Strings = (
      'adsfa'
      'sdgsdfg'
      'sdfgsfd'
      'dfghg'
      'fghdg')
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 5
  end
end
