unit MemDogCat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn: TButton;
    mem: TMemo;
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnClick(Sender: TObject);
var
s,s1:string;
i,p,r,c,d:integer;
begin
s:=mem.Text;
for i := 0 to mem.Lines.count-1 do
begin
s1:=' '+mem.Lines[i]+' ';
p:=pos(' dog ',s1);
if p>0 then
d:=i;
r:=pos(' cat ',s1);
if r>0 then
c:=i;
end;
mem.Lines.exchange(c,d);
end;

end.
