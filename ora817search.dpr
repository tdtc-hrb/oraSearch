program ora817search;

uses
  Forms,
  Usearch in 'Usearch.pas' {frm_select};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '��ѯ������';
  Application.CreateForm(Tfrm_select, frm_select);
  Application.Run;
end.
