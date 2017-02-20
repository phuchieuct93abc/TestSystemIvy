[Ivy]
[>Created: Wed Feb 15 09:13:35 ICT 2017]
15A3745DF38A1A4B 3.19 #module
>Proto >Proto Collection #zClass
Sm0 StudentViewAllExam Big #zClass
Sm0 B #cInfo
Sm0 #process
Sm0 @TextInP .resExport .resExport #zField
Sm0 @TextInP .type .type #zField
Sm0 @TextInP .processKind .processKind #zField
Sm0 @AnnotationInP-0n ai ai #zField
Sm0 @MessageFlowInP-0n messageIn messageIn #zField
Sm0 @MessageFlowOutP-0n messageOut messageOut #zField
Sm0 @TextInP .xml .xml #zField
Sm0 @TextInP .responsibility .responsibility #zField
Sm0 @StartRequest f0 '' #zField
Sm0 @EndTask f1 '' #zField
Sm0 @RichDialog f3 '' #zField
Sm0 @PushWFArc f2 '' #zField
Sm0 @PushWFArc f4 '' #zField
>Proto Sm0 Sm0 StudentViewAllExam #zField
Sm0 f0 outLink start.ivp #txt
Sm0 f0 type com.axonactive.test.system.StudentViewAllExamData #txt
Sm0 f0 inParamDecl '<> param;' #txt
Sm0 f0 actionDecl 'com.axonactive.test.system.StudentViewAllExamData out;
' #txt
Sm0 f0 guid 15A3745DF3CB7623 #txt
Sm0 f0 requestEnabled true #txt
Sm0 f0 triggerEnabled false #txt
Sm0 f0 callSignature start() #txt
Sm0 f0 caseData businessCase.attach=true #txt
Sm0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Sm0 f0 @C|.responsibility Everybody #txt
Sm0 f0 81 49 30 30 -21 17 #rect
Sm0 f0 @|StartRequestIcon #fIcon
Sm0 f1 type com.axonactive.test.system.StudentViewAllExamData #txt
Sm0 f1 497 49 30 30 0 15 #rect
Sm0 f1 @|EndIcon #fIcon
Sm0 f3 targetWindow NEW #txt
Sm0 f3 targetDisplay TOP #txt
Sm0 f3 richDialogId com.axonactive.test.system.StudentViewAllExam #txt
Sm0 f3 startMethod start() #txt
Sm0 f3 type com.axonactive.test.system.StudentViewAllExamData #txt
Sm0 f3 requestActionDecl '<> param;' #txt
Sm0 f3 responseActionDecl 'com.axonactive.test.system.StudentViewAllExamData out;
' #txt
Sm0 f3 responseMappingAction 'out=in;
' #txt
Sm0 f3 isAsynch false #txt
Sm0 f3 isInnerRd false #txt
Sm0 f3 userContext '* ' #txt
Sm0 f3 256 42 112 44 0 -8 #rect
Sm0 f3 @|RichDialogIcon #fIcon
Sm0 f2 expr out #txt
Sm0 f2 368 64 497 64 #arcP
Sm0 f4 expr out #txt
Sm0 f4 111 64 256 64 #arcP
>Proto Sm0 .type com.axonactive.test.system.StudentViewAllExamData #txt
>Proto Sm0 .processKind NORMAL #txt
>Proto Sm0 0 0 32 24 18 0 #rect
>Proto Sm0 @|BIcon #fIcon
Sm0 f3 mainOut f2 tail #connect
Sm0 f2 head f1 mainIn #connect
Sm0 f0 mainOut f4 tail #connect
Sm0 f4 head f3 mainIn #connect
