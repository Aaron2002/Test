﻿unit Test;

interface

type TDynamicInteger = array of Integer;   // “®“I”z—ñ

implementation

function GetDynamicArray(const aDynamicArray: array of Integer): TDynamicInteger;
var a: Integer;
    d: TDynamicInteger;
begin
  SetLength(d, High(aDynamicArray) + 1);
  for a := 0 to High(aDynamicArray) do d[a] := aDynamicArray[a];
  GetDynamicArray := d;
end;

procedure Test1(aDynamic: array of Integer);
begin
end;

procedure Test2(aDynamic: TDynamic);
begin
end;

end.
