unit uFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  IdAttachment,IdAttachmentFile, DB, DBGrids, StrUtils, iniFiles, DateUtils,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.Buttons;



  procedure WriteConfig( cTitle, cValue : string ) ;
  Function  ReadConfig ( cTitle, cValue : string ) : string ;
  function dsp_date( dDateTime : TDatetime ) : string ;
  Function ReadText(Var cTxt : string ) : string ;

  procedure ShowDBGrid( var n : integer ;
                             cFieldName : string   ;
                             nWidth : integer ;
                             taAlignment : TAlignment  ;
                             cTitleCaption : string ;
                             dbg : TDBGrid ) ;
  Function  ReadStation ( cTitle, cValue : string ) : string ;


implementation


Function ReadConfig( cTitle, cValue : string ) : string ;
var
  cDir, iniFilename : string;
  iniConfig : TIniFile;
begin
  cDir := IncludeTrailingPathDelimiter( ExtractFilePath( Application.ExeName ) );
  iniFilename := cDir + 'MConfig.ini' ;

  iniConfig := TIniFile.Create( iniFilename );
  result := iniConfig.ReadString('PART_CONFIG', cTitle, cValue);
  iniConfig.Free;
end;

Function ReadStation( cTitle, cValue : string ) : string ;
var
  cDir, iniFilename : string;
  iniConfig : TIniFile;
begin
  cDir := IncludeTrailingPathDelimiter( ExtractFilePath( Application.ExeName ) );
  iniFilename := cDir + 'PConfig.ini' ;

  iniConfig := TIniFile.Create( iniFilename );
  result := iniConfig.ReadString('ST-Name', cTitle, cValue);
  iniConfig.Free;
end;

procedure WriteConfig( cTitle, cValue : string ) ;
var
  iniConfig : TIniFile;
  cDir, iniFilename : string;
begin
  cDir := IncludeTrailingPathDelimiter( ExtractFilePath( Application.ExeName ) );
  iniFilename := cDir + 'MConfig.ini' ;

  iniConfig := TIniFile.Create( iniFilename );
  iniConfig.WriteString('PART_CONFIG',cTitle,cValue);
  iniConfig.Free;
end;

procedure ShowDBGrid( var n : integer ;
                             cFieldName : string   ;
                             nWidth : integer ;
                             taAlignment : TAlignment ;
                             cTitleCaption : string ;
                             dbg : TDBGrid ) ;
begin
  dbg.Columns.Add ;
  dbg.Columns[n].FieldName := cFieldName ;
  dbg.Columns[n].Width     := nWidth ;
  dbg.Columns[n].Alignment := taAlignment ;
  dbg.Columns[n].Title.Caption   := cTitleCaption ;
  dbg.Columns[n].Title.Alignment := taCenter ;
  n := n + 1 ;
end;

function dsp_date( dDateTime : TDatetime ) : string  ;
begin
  if YearOf(dDateTime) = 1899 then
    result := ''
  else
  begin
    result := FormatDateTime('DD/MM/YYYY HH:MM:SS', dDateTime) ;
  end;
end;

Function ReadText(Var cTxt : string ) : string ;
var
  cResult : string ;
  nPos : integer ;
begin
  cResult := '' ;
  if (Copy(cTxt,1,1) = '"') then begin
    nPos := Pos('",',cTxt) ;
    if (nPos <= 0) then begin
      if (RightStr(cTxt,1) = '"') then begin
        cTxt := Copy(cTxt,2,Length(cTxt)-2) ;
      end;

      cResult := cTxt ;
      cTxt := '' ;
    end else begin
      cResult := Copy(cTxt,2,nPos-2  ) ;
      cResult := StringReplace(cResult, '""', '"',
                          [rfReplaceAll, rfIgnoreCase]);
      cTxt := Copy(cTxt, nPos+2 ,length(cTxt)) ;
    end;

  end
  else
  begin
    if (pos(',',cTxt) <= 0) then begin
      cResult := cTxt ;
      cTxt := '' ;
    end else begin
      cResult := Copy(cTxt,1,pos(',',cTxt)-1) ;
      cTxt := Copy(cTxt,pos(',',cTxt)+1,length(cTxt)) ;
    end;
  end;

  result := cResult ;

end;


end.
