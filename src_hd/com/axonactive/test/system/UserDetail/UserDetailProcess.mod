[Ivy]
[>Created: Thu Feb 16 08:47:25 ICT 2017]
15A3A63B6BCB6DE5 3.19 #module
>Proto >Proto Collection #zClass
Us0 UserDetailProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Us0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @AnnotationInP-0n ai ai #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @RichDialogInitStart f0 '' #zField
Us0 @RichDialogProcessEnd f1 '' #zField
Us0 @RichDialogProcessStart f3 '' #zField
Us0 @RichDialogEnd f4 '' #zField
Us0 @PushWFArc f5 '' #zField
Us0 @GridStep f6 '' #zField
Us0 @PushWFArc f7 '' #zField
Us0 @RichDialogProcessStart f8 '' #zField
Us0 @RichDialogEnd f9 '' #zField
Us0 @GridStep f11 '' #zField
Us0 @PushWFArc f12 '' #zField
Us0 @PushWFArc f10 '' #zField
Us0 @Alternative f13 '' #zField
Us0 @PushWFArc f14 '' #zField
Us0 @GridStep f17 '' #zField
Us0 @PushWFArc f18 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @PushWFArc f19 '' #zField
>Proto Us0 Us0 UserDetailProcess #zField
Us0 f0 guid 15A3A63B6DC1AFB6 #txt
Us0 f0 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f0 method start() #txt
Us0 f0 disableUIEvents true #txt
Us0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Us0 f0 outParameterDecl '<> result;
' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Us0 f0 83 51 26 26 -16 15 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 f1 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f1 587 51 26 26 0 12 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 f3 guid 15A3A63B6E82001D #txt
Us0 f3 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f3 actionDecl 'com.axonactive.test.system.UserDetail.UserDetailData out;
' #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Us0 f3 83 147 26 26 -15 12 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 f4 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f4 guid 15A3A63B6E821D2E #txt
Us0 f4 211 147 26 26 0 12 #rect
Us0 f4 @|RichDialogEndIcon #fIcon
Us0 f5 expr out #txt
Us0 f5 109 160 211 160 #arcP
Us0 f6 actionDecl 'com.axonactive.test.system.UserDetail.UserDetailData out;
' #txt
Us0 f6 actionTable 'out=in;
' #txt
Us0 f6 actionCode 'import com.axonactive.test.system.service.UserService;
in.user = ivy.session.getSessionUser();

' #txt
Us0 f6 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check sesssion</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 168 42 112 44 -45 -8 #rect
Us0 f6 @|StepIcon #fIcon
Us0 f7 expr out #txt
Us0 f7 109 64 168 64 #arcP
Us0 f8 guid 15A3A7B984C23B44 #txt
Us0 f8 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f8 actionDecl 'com.axonactive.test.system.UserDetail.UserDetailData out;
' #txt
Us0 f8 actionTable 'out=in;
' #txt
Us0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f8 83 211 26 26 -17 15 #rect
Us0 f8 @|RichDialogProcessStartIcon #fIcon
Us0 f9 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f9 guid 15A3A7BE34D80AE3 #txt
Us0 f9 339 211 26 26 0 12 #rect
Us0 f9 @|RichDialogEndIcon #fIcon
Us0 f11 actionDecl 'com.axonactive.test.system.UserDetail.UserDetailData out;
' #txt
Us0 f11 actionTable 'out=in;
' #txt
Us0 f11 actionCode 'import com.axonactive.test.system.util.Utils;
ivy.session.logoutSessionUser();
Utils.redirect("Business Processes/Start/start.ivp");' #txt
Us0 f11 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f11 168 202 112 44 0 -8 #rect
Us0 f11 @|StepIcon #fIcon
Us0 f12 expr out #txt
Us0 f12 109 224 168 224 #arcP
Us0 f10 expr out #txt
Us0 f10 280 224 339 224 #arcP
Us0 f13 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f13 336 48 32 32 0 16 #rect
Us0 f13 @|AlternativeIcon #fIcon
Us0 f14 expr out #txt
Us0 f14 280 64 336 64 #arcP
Us0 f17 actionDecl 'com.axonactive.test.system.UserDetail.UserDetailData out;
' #txt
Us0 f17 actionTable 'out=in;
' #txt
Us0 f17 actionCode 'import com.axonactive.test.system.service.UserService;

in.role = UserService.getRole();
' #txt
Us0 f17 type com.axonactive.test.system.UserDetail.UserDetailData #txt
Us0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get role</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f17 432 122 112 44 -21 -8 #rect
Us0 f17 @|StepIcon #fIcon
Us0 f18 expr in #txt
Us0 f18 outCond 'in.#user !=null' #txt
Us0 f18 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login already</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f18 356 76 432 144 #arcP
Us0 f18 1 376 144 #addKink
Us0 f18 1 0.053470880584329854 0 0 #arcLabel
Us0 f2 expr in #txt
Us0 f2 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Not yet login</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f2 368 64 587 64 #arcP
Us0 f19 expr out #txt
Us0 f19 488 122 591 73 #arcP
Us0 f19 0 0.19130728764435212 0 0 #arcLabel
>Proto Us0 .type com.axonactive.test.system.UserDetail.UserDetailData #txt
>Proto Us0 .processKind HTML_DIALOG #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
Us0 f3 mainOut f5 tail #connect
Us0 f5 head f4 mainIn #connect
Us0 f0 mainOut f7 tail #connect
Us0 f7 head f6 mainIn #connect
Us0 f8 mainOut f12 tail #connect
Us0 f12 head f11 mainIn #connect
Us0 f11 mainOut f10 tail #connect
Us0 f10 head f9 mainIn #connect
Us0 f6 mainOut f14 tail #connect
Us0 f14 head f13 in #connect
Us0 f18 head f17 mainIn #connect
Us0 f13 out f18 tail #connect
Us0 f13 out f2 tail #connect
Us0 f2 head f1 mainIn #connect
Us0 f17 mainOut f19 tail #connect
Us0 f19 head f1 mainIn #connect
