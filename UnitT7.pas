unit UnitT7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  tBigRus = string[33];
  tSmallRus = string[33];
  TMainForm = class(TForm)
    MainEdit: TEdit;
    MainButton: TButton;
    MainLabel: TLabel;
    InputLabel: TLabel;
    InputEdit: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure MainEditKeyPress(Sender: TObject; var Key: Char);
    procedure MainButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  BigRus: tBigRus = ('јЅ¬√ƒ≈®∆«»… ЋћЌќѕ–—“”‘’÷„ЎўЏџ№Ёёя'); {большие русские} 
  SmallRus: tSmallRus = ('абвгдеЄжзийклмнопрстуфхцчшщъыьэю€'); {маленькие русские}

var
  MainForm: TMainForm;
  Str: string[255];
  n: integer;

implementation

{$R *.dfm}

procedure TMainForm.FormActivate(Sender: TObject);
  begin
    ShowMessage('¬ведите последовательность в строку и нажмите "¬ыполнить"');
  end; {FormActivate}

procedure TMainForm.MainEditKeyPress(Sender: TObject; var Key: Char);
  var
    i: integer;
    Rus: boolean;
  begin
    {ќграничение нажати€ клавиш}
    i:=1;
    Rus:=false;
    while not Rus and (i<=33) do
      if (Key=BigRus[i]) or (Key=' ') or (Key=SmallRus[i])
        then Rus:=true
        else inc(i);
    if not Rus
      then Key:=#0;
  end; {KeyPress}

procedure TMainForm.MainButtonClick(Sender: TObject);
  var
    i,j,k: integer;
    p,q: string;
  begin
    Str:=' '+MainEdit.Text+' ';
    n:=length(Str);
    MainLabel.Visible:=True;
    InputEdit.Text:=MainEdit.Text;
    InputLabel.Visible:=True;
    InputEdit.Visible:=True;
    {«амена больших букв малыми дл€ независимости от регистра}
    for i:=2 to n-1 do
      begin
        j:=Pos(Str[i],BigRus);
        if j>0
          then Str[i]:=SmallRus[j];
      end; {for i}
    {”даление повторных вхождений}
    i:=1;
    while i<n do
      begin
        while (i<n) and (Str[i]=' ') do
          inc(i);
        j:=i;
        while (i<n) and (Str[i]<>' ') do
          inc(i);
        q:=Copy(Str,j-1,i-j+2);
        repeat
          p:=Copy(Str,i,n-i+1);
          k:=Pos(q,p);
          if k>0
            then Delete(Str,i+k,i-j)
        until k=0;
      end; {while i}
    {”даление искусственных пробелов}
    Delete(Str,1,1);
    Delete(Str,n,1);
    MainEdit.Text:=Str;
    MainButton.Enabled:=False;
    MainEdit.Enabled:=False;
    InputEdit.Enabled:=False;
  end; {ButtonClick}
end.



