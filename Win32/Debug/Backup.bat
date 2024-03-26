@echo off
set "backup_dir=C:\Sistema\Backup"
set "backup_file=%backup_dir%\%date:~6,4%%date:~3,2%%date:~0,2%.SQL"
"C:\Program Files\PostgreSQL\15\bin\pg_dump.exe" -U postgres -d SoluctionsInc -f "%backup_file%"
