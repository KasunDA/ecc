erl -heart -env HEART_COMMAND "syslog.bat" +P 500000 -env ERL_MAX_ETS_TABLES 20000 -env GETTEXT_DIR .\additionmod\erlang-gettext\priv -pa .\additionmod\erlang-gettext\ebin -pa %cd%\core\utils\GsmOperateUtils -pa .\additionmod\erlang-gettext\include -pa .\additionmod\erlsoap\ebin -pa .\additionmod\erlsom-1.2.1\ebin -pa .\iconv -pa .\core\ebin -pa .\plugin\ebin -pa .\modules\df_snmp\ebin -pa .\modules\nmap_scan\ebin -pa .\modules\df_snmp\ebin -pa .\modules\snmp\ebin -pa modules\esdl-1.0.1\ebin -pa .\modules\erlcmdb\ebin -pa .\ssh\ebin -pa .\nitrogen\ebin -pa modules/nnm/ebin  .\nitrogen\include  -pa .\rest\ebin -pa .\rest\deps -pa .\store\ebin -pa .\sec\ebin -sname debug -setcookie 3ren -boot start_sasl -eval "application:start(quickstart_mochiweb),application:start(svecc),application:start(crypto),application:start(gettext),gettext:recreate_db(),extension_sup:start(),application:start(ssh),application:start(test),application:start(esyslog)."