type TDynamicInteger = array of Integer;

function GetDynamicArray(const aDynamicArray: array of Integer): TDynamicInteger;
var a: Integer;
    d: TDynamicInteger;
begin
  SetLength(d, High(aDynamicArray) + 1);
  for a := 0 to High(aDynamicArray) do d[a] := aDynamicArray[a];
  GetDynamicArray := d;
end;
