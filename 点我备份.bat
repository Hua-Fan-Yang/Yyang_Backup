@echo off

REM #-----------�ű�����-----------
REM #�ű�����:Yyang_Backup �������ݹ���
REM #��ǰ�汾:1.1
REM #��bat�ű�������_Yyang��д
REM #�ű�Դ���ѹ������Ǹ��ѹ��� ���߸���/���ص�ַ��github.com/Hua-Fan-Yang/Yyang_Backup
REM #�������Ѽ���7zipѹ������
REM #-----------�ű��������̽���-----------
REM #1 ����ʱ��ʱ�����
REM #2 ������Ҫ���ݵ��ļ����ű��Զ����ɵ�data�ļ�����
REM #3 ѹ��data���ļ�
REM #4 ѹ����־�ļ�
REM #5 �����Զ�ɾ�����ڲ�ɾ��7��ǰ�ı����ļ�
REM #6 ɾ����ʱ�ļ���
REM #7 ���ݴ�������+1
REM #8 �ȴ�����ʱ�������ٴα���
REM #-----------��־�ᱣ��ʲô��-----------
REM #1 �㱸�ݵ��ļ��ļ������ļ�����  �������Լ���log�ļ��鿴����ͨ���������ܴ�
REM #2 ѹ��������Ϣ
REM #3 �����������

set a=1
REM #���ݴ������� "�����޸�"
:Menu
chcp 233
echo %date%%time%>>./data/data.log
set MM1=%date:~5,2%
if "%date:~5,2%"=="01" set MM1=1
if "%date:~5,2%"=="02" set MM1=2
if "%date:~5,2%"=="03" set MM1=3
if "%date:~5,2%"=="04" set MM1=4
if "%date:~5,2%"=="05" set MM1=5
if "%date:~5,2%"=="06" set MM1=6
if "%date:~5,2%"=="07" set MM1=7
if "%date:~5,2%"=="08" set MM1=8
if "%date:~5,2%"=="09" set MM1=9
REM #���ڸ�ʽ���� "�����޸�"
md data
REM #������ʱ�ļ��� "�����޸�"
set A1=%date:~0,4%-%MM1%-%date:~8,2%
REM #ʱ��������� "�����޸�"
title Yyang_Backup �������ݹ��� [���ݴ��� %a% ]
echo �Զ������ѿ�ʼ����رմ˴��ڣ���������
echo �����ѿ�ʼ����رմ˴��ڣ���������
echo �����ڼ䴰�ڿ��ܲ�������κ�����[���ݻᱻ���浽log�ļ�����]
REM #"�����޸�"

REM #---------------------------��Ҫ�޸�---------------------------
set sourcePath=D:\MSF Survival Focos\
REM #��Ҫ���ݵĵ�ַ"�޸ĵ��ںź���ļ��ɼǵ���\��β,���򽫻������" ��Ҫ�޸ģ�������������
REM #---------------------------��Ҫ�޸�---------------------------

set targetPath=.\data\
REM #�����ļ���ʱ�洢λ�� "�����޸�"
set folderName=backup
REM #��ʱ�ļ����� "�����޸�"
XCOPY /e /c /y  "%sourcePath%*" "%targetPath%%folderName%\">>./data/data.log
REM #���ݵ����� "�����޸�"
set zip7=.\7z\7z.exe
REM #����7z�������г���·�� "�����޸�"
set Save=%A1%
REM #���ñ���ѹ��������·��  "�����޸�"[�����Զ�ɾ��ʧЧ]
set curdate=%date:~0,4%-%date:~5,2%-%date:~8,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%
REM #ѹ���ļ����� "�����޸�"
set www=.\data\backup\
REM #����Ҫ���ѹ�����ļ��� "�����޸�"
"%zip7%" a -tzip "%Save%\%curdate%.zip" "%www%" -mx0 -xr!.svn >>./data/data.log
REM #�������� -xr!.svn����.svn�ļ��� "�����޸�"
echo Done time %date% %time%>>./data/data.log
REM #���ʱ���¼ "�����޸�"
set zip7=.\7z\7z.exe
set Save=.\log\
set www=.\data\data.log
"%zip7%" a -tzip "%Save%\%curdate%.zip" "%www%" -mx0 -xr!.svn
REM #��־ѹ������ "�����޸�"
set RDY=%date:~0,4%
set RDM=%MM1%
set /a RDD=%date:~8,2%-7

if "%date:~5,2%"=="01"  if "%date:~8,2%"=="1" set /a RDY=%date:~0,4%-1
if "%date:~5,2%"=="01"  if "%date:~8,2%"=="2" set /a RDY=%date:~0,4%-1
if "%date:~5,2%"=="01"  if "%date:~8,2%"=="3" set /a RDY=%date:~0,4%-1
if "%date:~5,2%"=="01"  if "%date:~8,2%"=="4" set /a RDY=%date:~0,4%-1
if "%date:~5,2%"=="01"  if "%date:~8,2%"=="5" set /a RDY=%date:~0,4%-1
if "%date:~5,2%"=="01"  if "%date:~8,2%"=="6" set /a RDY=%date:~0,4%-1
if "%date:~5,2%"=="01"  if "%date:~8,2%"=="7" set /a RDY=%date:~0,4%-1

if "%date:~8,2%"=="1" set /a RDM=%MM1%-1
if "%date:~8,2%"=="2" set /a RDM=%MM1%-1
if "%date:~8,2%"=="3" set /a RDM=%MM1%-1
if "%date:~8,2%"=="4" set /a RDM=%MM1%-1
if "%date:~8,2%"=="5" set /a RDM=%MM1%-1
if "%date:~8,2%"=="6" set /a RDM=%MM1%-1
if "%date:~8,2%"=="7" set /a RDM=%MM1%-1

if "%date:~8,2%"=="1" set RDD=25
if "%date:~8,2%"=="2" set RDD=26
if "%date:~8,2%"=="3" set RDD=27
if "%date:~8,2%"=="4" set RDD=28
if "%date:~8,2%"=="5" set RDD=29
if "%date:~8,2%"=="6" set RDD=30
if "%date:~8,2%"=="7" set RDD=31

if "%MM1%"=="3" if "%date:~8,2%"=="1" set RDD=23
if "%MM1%"=="3" if "%date:~8,2%"=="2" set RDD=24
if "%MM1%"=="3" if "%date:~8,2%"=="3" set RDD=25
if "%MM1%"=="3" if "%date:~8,2%"=="4" set RDD=26
if "%MM1%"=="3" if "%date:~8,2%"=="5" set RDD=27
if "%MM1%"=="3" if "%date:~8,2%"=="6" set RDD=28
if "%MM1%"=="3" if "%date:~8,2%"=="7" set RDD=29

echo %RD%>>./data/data.log
set RD=%RDY%-%RDM%-%RDD%
rd /s /q .\%RD%\ 
REM #�Զ�ɾ���ű� "�����޸�"

rd /s /q .\data\ 
REM #��ʱ�ļ��� "�����޸�"
echo ������ϣ��ȴ���һ�ֱ��ݡ�
echo %RDY%-%RDM%-%RDD%>>./data/data.log
set /a a=%a%+1
REM #���ݴ������� "�����޸�"
echo %date:~0,4%-%date:~5,2%-%date:~8,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%>>./data/data.log

REM #---------------------------ѡ���޸�---------------------------
timeout /nobreak /t 30
REM #�������ȴ���ý�����һ�α��ݣ�����Ϊ��λ��ѡ���޸ģ�������������
REM #---------------------------ѡ���޸�---------------------------

goto Menu
REM #  by������_Yyang