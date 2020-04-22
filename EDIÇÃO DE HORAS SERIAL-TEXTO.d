//ambos editam hora serial para hora texto  hh:mm:ss são apenas formas diferentes de fazer

plan_ TOTAL HODAS HH:MM:SS = 
var calculohora = (SUM(dt_hr_fim)-SUM(dt_hr_inicio))
var th = TRUNC(calculohora*24;0)
return
 th & ":" & RIGHT("00"& MINUTE(calculohora);2) & ":" & RIGHT("00"& SECOND(calculohora);2)
  
/////////////////////////-------------------------------------------

MEDIA 2 DURACAO HH:MM:SS = 
VAR HT = (_Medidas[MEDIA 2 DURACAO HORAS IN_OUT SERIAL])
VAR HR = FORMAT(TRUNC (HT);"0,0")
VAR MM = FORMAT(TRUNC((HT-HR)*60);"00")
VAR SS = FORMAT(ROUND((((HT-HR)*60) - MM)*60;0);"00")
RETURN
HR & ":" & MM & ":" & SS

