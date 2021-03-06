; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "SiteViewECC"
!define PRODUCT_VERSION 9.1
!define PRODUCT_FILEVERSION 9.1.2011.0627
!define PRODUCT_TYPE "升级包"
!define PRODUCT_PUBLISHER "dragonflow, Inc."
!define PRODUCT_WEB_SITE "http://www.siteview.com"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON logo.ico

# Included files 包含的文件
!include Sections.nsh
!include MUI2.nsh
!include StrFunc.nsh
!include TextReplace.nsh
${StrRep}

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
;!insertmacro MUI_PAGE_LICENSE "c:\path\to\licence\YourSoftwareLicence.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
;!define MUI_FINISHPAGE_RUN "$INSTDIR\AppMainExe.exe"
!insertmacro MUI_PAGE_FINISH

; Language files
!insertmacro MUI_LANGUAGE "SimpChinese"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION} ${PRODUCT_TYPE}"
OutFile "${PRODUCT_NAME}_${PRODUCT_FILEVERSION}_update.exe"
InstallDir "C:\${PRODUCT_NAME}\${PRODUCT_VERSION}"
;InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show

Section "MainSection" SEC01
  DetailPrint "Stopping Tomcat7 service……"
    nsExec::Exec 'net stop Tomcat7'
    sleep 1000
  DetailPrint "Stopping EccNgService service……"
    nsExec::Exec 'net stop EccNgService'
    sleep 1000
  SetOutPath $INSTDIR
    SetOverwrite on
    File /r /x .svn logo.ico
    ;File /r /x .svn /x src /x doc /x test /x examples ..\additionmod
    File /r /x .svn /x src /x doc /x perferences ..\conf
    ;CreateDirectory $INSTDIR\conf\perferences
    ;File /r /x .svn /x src /x doc /x new_ecc_db /x db ..\contentstore
    ;CreateDirectory $INSTDIR\contentstore\db
    File /r  /x .svn /x src /x doc /x test /x *.erl /x *.txt ..\core
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\data
    ;CreateDirectory $INSTDIR\error_logs
    ;File /x .svn /x src /x doc  /x *.erl /x *.txt ..\iconv\*
    ;File /a /x *.txt ..\java\*.bat
    ;SetOutPath $INSTDIR\java\lib
    ;File /a /x *.txt ..\java\lib\*.jar
    ;SetOutPath $INSTDIR
    ;CreateDirectory $INSTDIR\logs
    ;File /r /x .svn /x src /x doc /x *.erl ..\modules
File /r /x .svn /x src /x doc /x *.erl ..\aaa
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\nitrogen
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\nnm_discovery
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\plugin
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\priv
    ;CreateDirectory $INSTDIR\scratch
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\scripts
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\scripts.remote
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\ssh
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\ssl_cert
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\template.os
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.applications
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.health
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.history
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.incident
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.mail
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.mib
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.nnm
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.perfmon
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.post
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.script
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.sets
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.sms
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.snmp
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.solutions
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.sound
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.syslog
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.wsdl
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.wsdl
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\templates.machine
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt /x dotnetfx35.exe ..\thirdparty
    ;File /r  /x .svn /x src /x doc /x wmi /x *.ncb /x *.erl /x *.txt /x DataTransfer /x *.doc /x *.pdf /x *.bz2 /x windows ..\tools
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\web
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\wwwroot
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\bin
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\binnew
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\datnew
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\lr_extnew
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\dat
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\sec
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\lr_ext
    ;File /r  /x .svn /x src /x doc  /x *.erl /x *.txt ..\erl
    ;File /x .svn /x *.erl /x *.txt /x *.nsi /x sitevew10 ..\*.*
    
    ReadRegStr $R0 HKLM "SOFTWARE\Apache Software Foundation\Tomcat\7.0" "InstallPath"
    SetOutPath "$R0\webapps\ecc"
    File /r  /x .svn  "..\..\ecc\*"
    Delete "$R0\webapps\ROOT\index.html"
    SetOutPath "$R0\webapps\ROOT"
    ;File index.html
    
    ;修改erl5.8.4\bin\erl.ini和erl5.8.4\erts-5.8.4\bin\erl.ini文件中的路径为 安装目录相对应的路径
    FileOpen $0 "$INSTDIR\erl\bin\erl.ini" w
    FileWrite $0 "[erlang]"
    FileWriteByte $0 "13"
    FileWriteByte $0 "10"
    ${StrRep} $1 "Bindir=$INSTDIR\erl\erts-5.8.4\bin" "\" "\\"
    FileWrite $0 "$1"
    FileWriteByte $0 "13"
    FileWriteByte $0 "10"
    FileWrite $0 "Progname=erl"
    FileWriteByte $0 "13"
    FileWriteByte $0 "10"
    ${StrRep} $1 "Rootdir=$INSTDIR\erl" "\" "\\"
    FileWrite $0 "$1"
    FileClose $0

    FileOpen $0 "$INSTDIR\erl\erts-5.8.4\bin\erl.ini" w
    FileWrite $0 "[erlang]"
    FileWriteByte $0 "13"
    FileWriteByte $0 "10"
    ${StrRep} $1 "Bindir=$INSTDIR\erl\erts-5.8.4\bin" "\" "\\"
    FileWrite $0 "$1"
    FileWriteByte $0 "13"
    FileWriteByte $0 "10"
    FileWrite $0 "Progname=erl"
    FileWriteByte $0 "13"
    FileWriteByte $0 "10"
    ${StrRep} $1 "Rootdir=$INSTDIR\erl\erts-5.8.4" "\" "\\"
    FileWrite $0 "$1"
    FileClose $0

    DetailPrint "Starting Tomcat7 service……"
        nsExec::Exec 'net start Tomcat7'
	sleep 1000
    DetailPrint "Starting EccNgService service……"
        nsExec::Exec 'net start EccNgService'
        sleep 1000
SectionEnd

Section -Post
  ;WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\AppMainExe.exe"
SectionEnd