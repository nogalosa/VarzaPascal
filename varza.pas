program varza;
  var n, i, j : integer;
      v : array[1..100] of array[1..100] of integer;
      ns : array[1..100] of integer;
      r, l : real;
procedure skaitymas;
  var pr : text;
  begin
    assign(pr, 'duom1.txt');
    reset(pr);
    ReadLn(pr, n);
      for i := 1 to n do
        begin
          Read(pr, ns[i]);
            for j := 1 to ns[i] do
              begin
                Read(pr, v[i][j]);
              end;
        end;
    close(pr);
  end;
function skaiciavimas : real;
  begin
    r := 0;
      for i := 1 to n do
        begin
          l := 0;
          for j := 1 to ns[i] do
            begin
              l := l + 1 /  v[i][j];
            end;
          r := r + 1 / l;
        end;
  end;
procedure rasymas;
  var rz : text;
  begin
    assign(rz, 'rez1.txt');
    rewrite(rz);
    WriteLn(rz, r : 2 :2);
    close(rz);
  end;
begin
  skaitymas;
  skaiciavimas;
  rasymas;
end.
