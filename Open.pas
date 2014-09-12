type TDynamicInteger = array of Integer;   // ���I�z��

procedure Test1(aDynamic: array of Integer);  // �I�[�v���z��
procedure Test2(aDynamic: TDynamic);  // ���I�z��

function GetDynamicArray(const aDynamicArray: TDynamicInteger): TDynamicInteger;
var a: Integer;
    d: TDynamicInteger;
begin
  SetLength(d, High(aDynamicArray) + 1);
  for a := Low(aDynamicArray) to High(aDynamicArray) do d[a] := aDynamicArray[a];
  GetDynamicArray := d;
end;
