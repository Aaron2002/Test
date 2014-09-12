type TDynamicInteger = array of Integer;   // 動的配列

procedure Test1(aDynamic: array of Integer);  // オープン配列
procedure Test2(aDynamic: TDynamic);  // 動的配列

function GetDynamicArray(const aDynamicArray: TDynamicInteger): TDynamicInteger;
var a: Integer;
    d: TDynamicInteger;
begin
  SetLength(d, High(aDynamicArray) + 1);
  for a := Low(aDynamicArray) to High(aDynamicArray) do d[a] := aDynamicArray[a];
  GetDynamicArray := d;
end;
