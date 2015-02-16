object frmMain: TfrmMain
  Left = 222
  Top = 116
  Width = 545
  Height = 500
  BorderWidth = 8
  Caption = 'Modbus/TCP Slave Demo (Port 502)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000910A20C4000000000000000000000000910A20C400000000000000
    00000FF888918A2FC4888888887000000000FF8888910A28C488888887800000
    000FF8888891FA28C48888887880000000FF88888891FA28C488888788800000
    0FF8888887918A28C488887888800000FF8888887F918A28C48887888880000F
    F8888887FF918A28C4887888888000000000000000910A20C4008888888000F7
    7777778F77917A27C4708888888000F77777778F77917A27C4708888888000F7
    9117777FFFFFFFFFFFF08888888000F79917777F7001002004708888888000F7
    9997777F7011022044708888888000F77777777F7711722744708888888000F7
    9117777F7711722744708888888000F79917777F7007007007708888888000F7
    9997777F7077077077708888888000F77777777FFFFFFFFFFFF08888880000F7
    777777777777777777708888800000F77777778F8888888888808888000000F7
    7777778F8888888888808880000000F77777778F8888888888808800000000F7
    7777778F8888888888808000000000FFFFFFFF8FFFFFFFFFFFF0000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000700000000000000000000000000000
    070700000000000000000000000077777000777777777777777777777777FFFC
    93FFFF800000FF000000FE000000FC000000F8000000F0000000E0000000C000
    0000800000008000000080000000800000008000000080000000800000008000
    000080000000800000008000000180000003800000078000000F8000001F8000
    003F8000007F800000FFFDFFFFFFF8FFFFFFF07FFFFF0200000007000000}
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlInput: TPanel
    Left = 413
    Top = 0
    Width = 108
    Height = 450
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 56
      Height = 13
      Caption = 'First register'
    end
    object Label2: TLabel
      Left = 8
      Top = 96
      Width = 57
      Height = 13
      Caption = 'Last register'
    end
    object btnStart: TBitBtn
      Left = 8
      Top = 0
      Width = 100
      Height = 26
      Caption = '&Start'
      TabOrder = 0
      OnClick = btnStartClick
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666660000006666680000008666660000006668002222220086660000006680
        2222222222086600000066022222222222206600000068022222222222208600
        000060222FFFF22FF222060000006022F222F2F22F22060000006022F222F2F2
        2F22060000006022F22FF2F22F22060000006022F222222FF222060000006022
        F222F22222220600000068022FFF222222208600000066022222222222206600
        0000668022222222220866000000666800222222008666000000666668000000
        866666000000666666666666666666000000}
    end
    object edtFirstReg: TEdit
      Left = 8
      Top = 64
      Width = 100
      Height = 21
      TabOrder = 1
      Text = '1'
    end
    object edtLastReg: TEdit
      Left = 8
      Top = 112
      Width = 100
      Height = 21
      TabOrder = 2
      Text = '200'
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 450
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 0
      Top = 336
      Width = 413
      Height = 8
      Cursor = crVSplit
      Align = alBottom
    end
    object sgdRegisters: TStringGrid
      Left = 0
      Top = 0
      Width = 413
      Height = 336
      Align = alClient
      ColCount = 4
      DefaultRowHeight = 18
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
      OnSetEditText = sgdRegistersSetEditText
      ColWidths = (
        64
        116
        86
        64)
    end
    object mmoErrorLog: TMemo
      Left = 0
      Top = 344
      Width = 413
      Height = 106
      Align = alBottom
      TabOrder = 1
    end
  end
  object msrPLC: TIdModBusServer
    Bindings = <>
    CommandHandlers = <>
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    OnReadHoldingRegisters = msrPLCReadHoldingRegisters
    OnWriteRegisters = msrPLCWriteRegisters
    Left = 456
    Top = 208
  end
  object Timer1: TTimer
    Interval = 500
    Left = 441
    Top = 274
  end
end