unit Test;

interface

type
  TDynamicInteger = array of Integer;   // 動的に変更

implementation

function GetDynamicArray(const aDynamicArray: array of Integer): TDynamicInteger;
var
  a: Integer;
  d: TDynamicInteger;
begin
  SetLength(d, High(aDynamicArray) + 1);
  for a := 0 to High(aDynamicArray) do d[a] := aDynamicArray[a];
  GetDynamicArray := d;
end;

procedure Test1(aDynamic: array of Integer);
begin
end;

end.
