type TDynamicInteger = array of Integer;

procedure Test1(aDynamic: array of Integer);
procedure Test2(aDynamic: TDynamic);

function GetDynamicArray(const aDynamicArray: array of Integer): TDynamicInteger;
var a: Integer;
    d: TDynamicInteger;
begin
  SetLength(d, High(aDynamicArray) + 1);
  for a := Low(aDynamicArray) to High(aDynamicArray) do d[a] := aDynamicArray[a];
  GetDynamicArray := d;
end;
