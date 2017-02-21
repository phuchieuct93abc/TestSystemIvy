[Ivy]
[>Created: Mon Feb 20 14:35:54 ICT 2017]
15A3C3824F3FFF42 3.19 #module
>Proto >Proto Collection #zClass
St0 Start Big #zClass
St0 B #cInfo
St0 #process
St0 @TextInP .resExport .resExport #zField
St0 @TextInP .type .type #zField
St0 @TextInP .processKind .processKind #zField
St0 @AnnotationInP-0n ai ai #zField
St0 @MessageFlowInP-0n messageIn messageIn #zField
St0 @MessageFlowOutP-0n messageOut messageOut #zField
St0 @TextInP .xml .xml #zField
St0 @TextInP .responsibility .responsibility #zField
St0 @StartRequest f0 '' #zField
St0 @RichDialog f3 '' #zField
St0 @PushWFArc f4 '' #zField
St0 @GridStep f15 '' #zField
St0 @Alternative f17 '' #zField
St0 @PushWFArc f18 '' #zField
St0 @PushWFArc f5 '' #zField
St0 @EndTask f2 '' #zField
St0 @RichDialog f1 '' #zField
St0 @PushWFArc f7 '' #zField
St0 @RichDialog f10 '' #zField
St0 @PushWFArc f11 '' #zField
St0 @PushWFArc f6 '' #zField
St0 @PushWFArc f8 '' #zField
>Proto St0 St0 Start #zField
St0 f0 outLink start.ivp #txt
St0 f0 type com.axonactive.test.system.StartProcessData #txt
St0 f0 inParamDecl '<> param;' #txt
St0 f0 actionDecl 'com.axonactive.test.system.StartProcessData out;
' #txt
St0 f0 guid 15A3C3824FF2A063 #txt
St0 f0 requestEnabled true #txt
St0 f0 triggerEnabled false #txt
St0 f0 callSignature start() #txt
St0 f0 caseData businessCase.attach=true #txt
St0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
St0 f0 @C|.responsibility Everybody #txt
St0 f0 73 121 30 30 -21 17 #rect
St0 f0 @|StartRequestIcon #fIcon
St0 f3 targetWindow NEW #txt
St0 f3 targetDisplay TOP #txt
St0 f3 richDialogId com.axonactive.test.system.Login #txt
St0 f3 startMethod start() #txt
St0 f3 type com.axonactive.test.system.StartProcessData #txt
St0 f3 requestActionDecl '<> param;' #txt
St0 f3 responseActionDecl 'com.axonactive.test.system.StartProcessData out;
' #txt
St0 f3 responseMappingAction 'out=in;
out.isLoginSuccess=in.isLoginSuccess;
' #txt
St0 f3 isAsynch false #txt
St0 f3 isInnerRd false #txt
St0 f3 userContext '* ' #txt
St0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login page</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
St0 f3 160 114 112 44 -31 -8 #rect
St0 f3 @|RichDialogIcon #fIcon
St0 f4 expr out #txt
St0 f4 103 136 160 136 #arcP
St0 f15 actionDecl 'com.axonactive.test.system.StartProcessData out;
' #txt
St0 f15 actionTable 'out=in;
' #txt
St0 f15 actionCode 'import com.axonactive.test.system.service.UserService;

in.role = UserService.getRole();

' #txt
St0 f15 type com.axonactive.test.system.StartProcessData #txt
St0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Role</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
St0 f15 382 114 112 44 -24 -8 #rect
St0 f15 @|StepIcon #fIcon
St0 f17 type com.axonactive.test.system.StartProcessData #txt
St0 f17 654 120 32 32 0 16 #rect
St0 f17 @|AlternativeIcon #fIcon
St0 f18 expr out #txt
St0 f18 494 136 654 136 #arcP
St0 f5 expr out #txt
St0 f5 272 136 382 136 #arcP
St0 f2 type com.axonactive.test.system.StartProcessData #txt
St0 f2 993 121 30 30 0 15 #rect
St0 f2 @|EndIcon #fIcon
St0 f1 targetWindow NEW #txt
St0 f1 targetDisplay TOP #txt
St0 f1 richDialogId com.axonactive.test.system.StudentViewAllExam #txt
St0 f1 startMethod start() #txt
St0 f1 type com.axonactive.test.system.StartProcessData #txt
St0 f1 requestActionDecl '<> param;' #txt
St0 f1 responseActionDecl 'com.axonactive.test.system.StartProcessData out;
' #txt
St0 f1 responseMappingAction 'out=in;
' #txt
St0 f1 isAsynch false #txt
St0 f1 isInnerRd false #txt
St0 f1 userContext '* ' #txt
St0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Student screen</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
St0 f1 768 50 112 44 -41 -8 #rect
St0 f1 @|RichDialogIcon #fIcon
St0 f7 expr in #txt
St0 f7 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login as student</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
St0 f7 676 126 768 72 #arcP
St0 f7 1 704 72 #addKink
St0 f7 0 0.7170634191726583 0 0 #arcLabel
St0 f10 targetWindow NEW #txt
St0 f10 targetDisplay TOP #txt
St0 f10 richDialogId com.axonactive.test.system.ViewAllExamination #txt
St0 f10 startMethod start() #txt
St0 f10 type com.axonactive.test.system.StartProcessData #txt
St0 f10 requestActionDecl '<> param;' #txt
St0 f10 responseActionDecl 'com.axonactive.test.system.StartProcessData out;
' #txt
St0 f10 responseMappingAction 'out=in;
' #txt
St0 f10 isAsynch false #txt
St0 f10 isInnerRd false #txt
St0 f10 userContext '* ' #txt
St0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Teacher screen</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
St0 f10 768 178 112 44 -43 -8 #rect
St0 f10 @|RichDialogIcon #fIcon
St0 f11 expr in #txt
St0 f11 outCond in.role.getName().equalsIgnoreCase("teacher") #txt
St0 f11 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login as teacher</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
St0 f11 676 146 768 200 #arcP
St0 f11 1 704 200 #addKink
St0 f11 1 0.03682726149089918 0 0 #arcLabel
St0 f6 expr out #txt
St0 f6 880 72 996 126 #arcP
St0 f6 1 936 72 #addKink
St0 f6 0 0.20318933982938897 0 0 #arcLabel
St0 f8 expr out #txt
St0 f8 880 200 996 145 #arcP
St0 f8 1 936 200 #addKink
St0 f8 0 0.20391438449800542 0 0 #arcLabel
>Proto St0 .type com.axonactive.test.system.StartProcessData #txt
>Proto St0 .processKind NORMAL #txt
>Proto St0 0 0 32 24 18 0 #rect
>Proto St0 @|BIcon #fIcon
St0 f0 mainOut f4 tail #connect
St0 f4 head f3 mainIn #connect
St0 f15 mainOut f18 tail #connect
St0 f18 head f17 in #connect
St0 f3 mainOut f5 tail #connect
St0 f5 head f15 mainIn #connect
St0 f7 head f1 mainIn #connect
St0 f17 out f11 tail #connect
St0 f11 head f10 mainIn #connect
St0 f17 out f7 tail #connect
St0 f1 mainOut f6 tail #connect
St0 f6 head f2 mainIn #connect
St0 f10 mainOut f8 tail #connect
St0 f8 head f2 mainIn #connect
