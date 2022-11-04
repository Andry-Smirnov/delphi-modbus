{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit DelphiModbusLazarus;

{$warn 5023 off : no warning about unused units}
interface

uses
  IdModBusClient, ModbusUtils, ModbusTypes, ModbusStrConsts, ModbusConsts, 
  IdModBusServer, ModbusReg, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('ModbusReg', @ModbusReg.Register);
end;

initialization
  RegisterPackage('DelphiModbusLazarus', @Register);
end.
