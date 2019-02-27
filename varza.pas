program varza;
  var n, i, j : integer;
      v, m : array[1..100] of integer;
      r, l : real;
procedure skaitymas;
  var pr : text;
  begin
    assign(pr, 'duom1.txt');
    reset(pr);
    ReadLn(pr, n);
      for i := 1 to n do
        begin
          Read(pr, m[i]);
            for j := 1 to m[i] do
              begin
                Read(pr, v[j]);
              end;
        end;
    close(pr);
  end;
function skaiciavimas : real;
  begin
    r := 0;
      for i := 1 to n do
        begin
          for j := 1 to m[i] do
            begin
              l := 1 /  v[j];
              r := r + (1 / l);
            end;
        end;
  end;
procedure rasymas;
  var rz : text;
  begin
    assign(rz, 'rez1.txt');
    rewrite(rz);
    WriteLn(rz, l : 2 :2);
    close(rz);
  end;
begin
  skaitymas;
  skaiciavimas;
  rasymas;
end.
