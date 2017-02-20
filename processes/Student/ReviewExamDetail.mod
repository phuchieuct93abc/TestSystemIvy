[Ivy]
[>Created: Mon Feb 20 14:27:37 ICT 2017]
15A4B0B09C315800 3.19 #module
>Proto >Proto Collection #zClass
Rl0 ReviewExamDetail Big #zClass
Rl0 B #cInfo
Rl0 #process
Rl0 @TextInP .resExport .resExport #zField
Rl0 @TextInP .type .type #zField
Rl0 @TextInP .processKind .processKind #zField
Rl0 @AnnotationInP-0n ai ai #zField
Rl0 @MessageFlowInP-0n messageIn messageIn #zField
Rl0 @MessageFlowOutP-0n messageOut messageOut #zField
Rl0 @TextInP .xml .xml #zField
Rl0 @TextInP .responsibility .responsibility #zField
Rl0 @StartRequest f0 '' #zField
Rl0 @EndTask f1 '' #zField
Rl0 @GridStep f3 '' #zField
Rl0 @PushWFArc f4 '' #zField
Rl0 @RichDialog f5 '' #zField
Rl0 @PushWFArc f6 '' #zField
Rl0 @PushWFArc f2 '' #zField
>Proto Rl0 Rl0 ReviewExamDetail #zField
Rl0 f0 outLink start.ivp #txt
Rl0 f0 type Student.ReviewExamDetailData #txt
Rl0 f0 inParamDecl '<java.lang.Integer examid> param;' #txt
Rl0 f0 inParamTable 'out.examid=param.examid;
' #txt
Rl0 f0 actionDecl 'Student.ReviewExamDetailData out;
' #txt
Rl0 f0 guid 15A4B0B09DA8AAB7 #txt
Rl0 f0 requestEnabled true #txt
Rl0 f0 triggerEnabled false #txt
Rl0 f0 callSignature start(Integer) #txt
Rl0 f0 persist false #txt
Rl0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Rl0 f0 caseData businessCase.attach=true #txt
Rl0 f0 showInStartList 0 #txt
Rl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rl0 f0 @C|.responsibility Everybody #txt
Rl0 f0 81 49 30 30 -21 17 #rect
Rl0 f0 @|StartRequestIcon #fIcon
Rl0 f1 type Student.ReviewExamDetailData #txt
Rl0 f1 497 49 30 30 0 15 #rect
Rl0 f1 @|EndIcon #fIcon
Rl0 f3 actionDecl 'Student.ReviewExamDetailData out;
' #txt
Rl0 f3 actionTable 'out=in;
' #txt
Rl0 f3 actionCode 'import com.axonactive.test.system.service.StudentExamService;
in.examination = StudentExamService.findExamreviewbyStudent(in.examid);' #txt
Rl0 f3 type Student.ReviewExamDetailData #txt
Rl0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get exam review for student</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rl0 f3 144 42 160 44 -74 -8 #rect
Rl0 f3 @|StepIcon #fIcon
Rl0 f4 expr out #txt
Rl0 f4 111 64 144 64 #arcP
Rl0 f5 targetWindow NEW #txt
Rl0 f5 targetDisplay TOP #txt
Rl0 f5 richDialogId com.axonactive.test.system.ReviewExamDetail #txt
Rl0 f5 startMethod start(com.axonactive.test.system.model.ExaminationModel) #txt
Rl0 f5 type Student.ReviewExamDetailData #txt
Rl0 f5 requestActionDecl '<com.axonactive.test.system.model.ExaminationModel examinationModel> param;' #txt
Rl0 f5 requestMappingAction 'param.examinationModel=in.examination;
' #txt
Rl0 f5 responseActionDecl 'Student.ReviewExamDetailData out;
' #txt
Rl0 f5 responseMappingAction 'out.examination=in.examination;
' #txt
Rl0 f5 isAsynch false #txt
Rl0 f5 isInnerRd false #txt
Rl0 f5 userContext '* ' #txt
Rl0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ReviewExaminated</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rl0 f5 328 42 112 44 -52 -8 #rect
Rl0 f5 @|RichDialogIcon #fIcon
Rl0 f6 expr out #txt
Rl0 f6 304 64 328 64 #arcP
Rl0 f2 expr out #txt
Rl0 f2 440 64 497 64 #arcP
>Proto Rl0 .type Student.ReviewExamDetailData #txt
>Proto Rl0 .processKind NORMAL #txt
>Proto Rl0 0 0 32 24 18 0 #rect
>Proto Rl0 @|BIcon #fIcon
Rl0 f0 mainOut f4 tail #connect
Rl0 f4 head f3 mainIn #connect
Rl0 f3 mainOut f6 tail #connect
Rl0 f6 head f5 mainIn #connect
Rl0 f5 mainOut f2 tail #connect
Rl0 f2 head f1 mainIn #connect
