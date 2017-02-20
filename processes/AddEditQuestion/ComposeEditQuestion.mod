[Ivy]
[>Created: Mon Feb 20 14:27:17 ICT 2017]
15A3BA7499BF62F4 3.19 #module
>Proto >Proto Collection #zClass
Cn0 ComposeEditQuestion Big #zClass
Cn0 B #cInfo
Cn0 #process
Cn0 @TextInP .resExport .resExport #zField
Cn0 @TextInP .type .type #zField
Cn0 @TextInP .processKind .processKind #zField
Cn0 @AnnotationInP-0n ai ai #zField
Cn0 @MessageFlowInP-0n messageIn messageIn #zField
Cn0 @MessageFlowOutP-0n messageOut messageOut #zField
Cn0 @TextInP .xml .xml #zField
Cn0 @TextInP .responsibility .responsibility #zField
Cn0 @StartRequest f0 '' #zField
Cn0 @EndTask f1 '' #zField
Cn0 @RichDialog f3 '' #zField
Cn0 @PushWFArc f4 '' #zField
Cn0 @PushWFArc f2 '' #zField
Cn0 @StartRequest f13 '' #zField
Cn0 @PushWFArc f14 '' #zField
>Proto Cn0 Cn0 ComposeEditQuestion #zField
Cn0 f0 outLink compose.ivp #txt
Cn0 f0 type com.axonactive.test.system.ComposeEditTestData #txt
Cn0 f0 inParamDecl '<> param;' #txt
Cn0 f0 actionDecl 'com.axonactive.test.system.ComposeEditTestData out;
' #txt
Cn0 f0 guid 15A3BA7499DCA63A #txt
Cn0 f0 requestEnabled true #txt
Cn0 f0 triggerEnabled false #txt
Cn0 f0 callSignature compose() #txt
Cn0 f0 persist false #txt
Cn0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Cn0 f0 caseData businessCase.attach=true #txt
Cn0 f0 showInStartList 0 #txt
Cn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>composeTest.ivp</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f0 @C|.responsibility Everybody #txt
Cn0 f0 73 121 30 30 -47 17 #rect
Cn0 f0 @|StartRequestIcon #fIcon
Cn0 f1 type com.axonactive.test.system.ComposeEditTestData #txt
Cn0 f1 641 121 30 30 0 15 #rect
Cn0 f1 @|EndIcon #fIcon
Cn0 f3 targetWindow NEW #txt
Cn0 f3 targetDisplay TOP #txt
Cn0 f3 richDialogId com.axonactive.test.system.ComposeEditTest #txt
Cn0 f3 startMethod start(java.lang.Integer) #txt
Cn0 f3 type com.axonactive.test.system.ComposeEditTestData #txt
Cn0 f3 requestActionDecl '<java.lang.Integer examId> param;' #txt
Cn0 f3 requestMappingAction 'param.examId=in.examId;
' #txt
Cn0 f3 responseActionDecl 'com.axonactive.test.system.ComposeEditTestData out;
' #txt
Cn0 f3 responseMappingAction 'out.examId=result.examId;
' #txt
Cn0 f3 isAsynch false #txt
Cn0 f3 isInnerRd false #txt
Cn0 f3 userContext '* ' #txt
Cn0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ShowExamDetail</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f3 472 114 112 44 -47 -8 #rect
Cn0 f3 @|RichDialogIcon #fIcon
Cn0 f4 expr out #txt
Cn0 f4 103 136 472 136 #arcP
Cn0 f2 expr out #txt
Cn0 f2 584 136 641 136 #arcP
Cn0 f13 outLink editExam.ivp #txt
Cn0 f13 type com.axonactive.test.system.ComposeEditTestData #txt
Cn0 f13 inParamDecl '<java.lang.Integer examId> param;' #txt
Cn0 f13 inParamTable 'out.examId=1;
' #txt
Cn0 f13 actionDecl 'com.axonactive.test.system.ComposeEditTestData out;
' #txt
Cn0 f13 guid 15A3C7EEE081F974 #txt
Cn0 f13 requestEnabled true #txt
Cn0 f13 triggerEnabled false #txt
Cn0 f13 callSignature editExam(Integer) #txt
Cn0 f13 persist false #txt
Cn0 f13 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Cn0 f13 caseData businessCase.attach=true #txt
Cn0 f13 showInStartList 0 #txt
Cn0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>editExam.ivp</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f13 @C|.responsibility Everybody #txt
Cn0 f13 73 177 30 30 -34 17 #rect
Cn0 f13 @|StartRequestIcon #fIcon
Cn0 f14 expr out #txt
Cn0 f14 103 192 472 136 #arcP
Cn0 f14 1 296 192 #addKink
Cn0 f14 2 296 136 #addKink
Cn0 f14 2 0.23101483741680784 0 0 #arcLabel
>Proto Cn0 .type com.axonactive.test.system.ComposeEditTestData #txt
>Proto Cn0 .processKind NORMAL #txt
>Proto Cn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Cn0 0 0 32 24 18 0 #rect
>Proto Cn0 @|BIcon #fIcon
Cn0 f0 mainOut f4 tail #connect
Cn0 f4 head f3 mainIn #connect
Cn0 f3 mainOut f2 tail #connect
Cn0 f2 head f1 mainIn #connect
Cn0 f13 mainOut f14 tail #connect
Cn0 f14 head f3 mainIn #connect
