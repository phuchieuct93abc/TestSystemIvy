[Ivy]
[>Created: Sun Feb 19 00:01:36 ICT 2017]
15A3BA8E0CFEEF6B 3.19 #module
>Proto >Proto Collection #zClass
Dl0 DisplayExamDetail Big #zClass
Dl0 B #cInfo
Dl0 #process
Dl0 @TextInP .resExport .resExport #zField
Dl0 @TextInP .type .type #zField
Dl0 @TextInP .processKind .processKind #zField
Dl0 @AnnotationInP-0n ai ai #zField
Dl0 @MessageFlowInP-0n messageIn messageIn #zField
Dl0 @MessageFlowOutP-0n messageOut messageOut #zField
Dl0 @TextInP .xml .xml #zField
Dl0 @TextInP .responsibility .responsibility #zField
Dl0 @StartRequest f0 '' #zField
Dl0 @GridStep f3 '' #zField
Dl0 @PushWFArc f4 '' #zField
Dl0 @RichDialog f2 '' #zField
Dl0 @PushWFArc f5 '' #zField
Dl0 @EndTask f14 '' #zField
Dl0 @GridStep f9 '' #zField
Dl0 @GridStep f15 '' #zField
Dl0 @PushWFArc f17 '' #zField
Dl0 @PushWFArc f20 '' #zField
Dl0 @PushWFArc f6 '' #zField
>Proto Dl0 Dl0 DisplayExamDetail #zField
Dl0 f0 outLink start.ivp #txt
Dl0 f0 type Student.DisplayExamDetailData #txt
Dl0 f0 inParamDecl '<java.lang.Integer examid> param;' #txt
Dl0 f0 inParamTable 'out.examid=param.examid;
' #txt
Dl0 f0 actionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f0 guid 15A3BA8E0D29F040 #txt
Dl0 f0 requestEnabled true #txt
Dl0 f0 triggerEnabled false #txt
Dl0 f0 callSignature start(Integer) #txt
Dl0 f0 persist false #txt
Dl0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Dl0 f0 caseData businessCase.attach=true #txt
Dl0 f0 showInStartList 1 #txt
Dl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dl0 f0 @C|.responsibility Everybody #txt
Dl0 f0 81 49 30 30 -21 17 #rect
Dl0 f0 @|StartRequestIcon #fIcon
Dl0 f3 actionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f3 actionTable 'out=in;
' #txt
Dl0 f3 actionCode 'import com.axonactive.test.system.service.StudentExamService;
in.examination = StudentExamService.findExambyId(in.examid);' #txt
Dl0 f3 type Student.DisplayExamDetailData #txt
Dl0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get data from url and create instance of examination</name>
        <nameStyle>52,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dl0 f3 168 42 288 44 -141 -8 #rect
Dl0 f3 @|StepIcon #fIcon
Dl0 f4 expr out #txt
Dl0 f4 111 64 168 64 #arcP
Dl0 f2 targetWindow NEW #txt
Dl0 f2 targetDisplay TOP #txt
Dl0 f2 richDialogId com.axonactive.test.system.DisplayExamDetail #txt
Dl0 f2 startMethod start(com.axonactive.test.system.model.ExaminationModel) #txt
Dl0 f2 type Student.DisplayExamDetailData #txt
Dl0 f2 requestActionDecl '<com.axonactive.test.system.model.ExaminationModel exam> param;' #txt
Dl0 f2 requestMappingAction 'param.exam=in.examination;
' #txt
Dl0 f2 responseActionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f2 responseMappingAction 'out.examination=in.examination;
' #txt
Dl0 f2 isAsynch false #txt
Dl0 f2 isInnerRd false #txt
Dl0 f2 userContext '* ' #txt
Dl0 f2 552 42 112 44 0 -8 #rect
Dl0 f2 @|RichDialogIcon #fIcon
Dl0 f5 expr out #txt
Dl0 f5 456 64 552 64 #arcP
Dl0 f14 type Student.DisplayExamDetailData #txt
Dl0 f14 1127 49 30 30 0 15 #rect
Dl0 f14 @|EndIcon #fIcon
Dl0 f9 actionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f9 actionTable 'out=in;
' #txt
Dl0 f9 actionCode 'import com.axonactive.test.system.service.ResultService;
in.result.id= ResultService.createResult(in.result,in.examid);' #txt
Dl0 f9 type Student.DisplayExamDetailData #txt
Dl0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Calculate Result</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dl0 f9 846 42 112 44 -45 -8 #rect
Dl0 f9 @|StepIcon #fIcon
Dl0 f15 actionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f15 actionTable 'out=in;
' #txt
Dl0 f15 actionCode 'import ch.ivyteam.ivy.process.model.value.SignalCode;
import com.google.gson.Gson;

// send signal with json payload
String jsonSerializedPayload = new Gson().toJson(in.result);
ivy.wf.signals().send(new SignalCode("student:submit"), jsonSerializedPayload);
' #txt
Dl0 f15 type Student.DisplayExamDetailData #txt
Dl0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send signal</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dl0 f15 990 42 112 44 -33 -8 #rect
Dl0 f15 @|StepIcon #fIcon
Dl0 f17 expr out #txt
Dl0 f17 1102 64 1127 64 #arcP
Dl0 f20 expr out #txt
Dl0 f20 958 64 990 64 #arcP
Dl0 f6 expr out #txt
Dl0 f6 664 64 846 64 #arcP
>Proto Dl0 .type Student.DisplayExamDetailData #txt
>Proto Dl0 .processKind NORMAL #txt
>Proto Dl0 0 0 32 24 18 0 #rect
>Proto Dl0 @|BIcon #fIcon
Dl0 f0 mainOut f4 tail #connect
Dl0 f4 head f3 mainIn #connect
Dl0 f3 mainOut f5 tail #connect
Dl0 f5 head f2 mainIn #connect
Dl0 f9 mainOut f20 tail #connect
Dl0 f20 head f15 mainIn #connect
Dl0 f15 mainOut f17 tail #connect
Dl0 f17 head f14 mainIn #connect
Dl0 f2 mainOut f6 tail #connect
Dl0 f6 head f9 mainIn #connect
