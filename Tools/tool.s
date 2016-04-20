.386
.model flat, stdcall
option case map: name
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;Include  //Include define.
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Include             windows .inc
Include             Users.inc
Include             Users32.lib
Include             kernel32.inc
Include             kernel32.lib
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;data
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
.data
szoption            db            "Hello !",0
szText              db            'Green Wainutl phone operating system',0
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;code
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
.code
start;
                   invoke          MessageBox,NULL,offset  szText,
                                   offset   szoption, mb_OK
                   invoke          ExitProcess,Null
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
.end               start
