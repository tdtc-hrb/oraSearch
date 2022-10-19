unit Usearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  Tfrm_select = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Memo1: TMemo;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_select: Tfrm_select;

implementation

{$R *.dfm}

procedure Tfrm_select.BitBtn1Click(Sender: TObject);
var
  i:integer;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(Memo1.Lines.Text);
  ADOQuery1.Open;
  if ADOQuery1.RecordCount<>0 then
  begin
    for i:=0 to DBGrid1.Columns.Count-1 do
    begin
      DBGrid1.Columns[i].Width:=80;
    end;
  end;
end;

procedure Tfrm_select.FormShow(Sender: TObject);
begin
  frm_select.Caption:='ORA数据查询器';
end;

procedure Tfrm_select.BitBtn2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure Tfrm_select.BitBtn3Click(Sender: TObject);
begin
  try
    ADOConnection1.Close;
    ADOConnection1.Open;
    ShowMessage('连接数据库成功！');
  except
    ShowMessage('连接数据库失败！');
    Exit;
  end;
end;

procedure Tfrm_select.BitBtn4Click(Sender: TObject);
begin
  if Memo1.Text<>'' then
  begin
    SaveDialog1.Execute;
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    Application.MessageBox('保存成功','SQL语句',MB_OK);
  end
  else
  begin
    exit;
  end;
end;

end.
