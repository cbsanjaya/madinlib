object dm: Tdm
  OldCreateOrder = False
  Height = 377
  Width = 449
  object Conn: TMyConnection
    Left = 72
    Top = 24
  end
  object QSearch: TMyQuery
    Connection = Conn
    Constraints = <>
    Left = 120
    Top = 24
  end
  object QExecute: TMyQuery
    Connection = Conn
    Constraints = <>
    Left = 168
    Top = 24
  end
end
