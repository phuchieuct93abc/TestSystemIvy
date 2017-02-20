[Ivy]
[>Created: Sun Feb 19 22:38:37 ICT 2017]
15A4AC11A089C98F 3.19 #module
>Proto >Proto Collection #zClass
Ct0 CalculateResult Big #zClass
Ct0 B #cInfo
Ct0 #process
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @StartRequest f0 '' #zField
Ct0 @SignalStartEvent f11 '' #zField
Ct0 @EndTask f1 '' #zField
Ct0 @RichDialog f9 '' #zField
Ct0 @TaskSwitch f7 '' #zField
Ct0 @PushWFArc f4 '' #zField
Ct0 @GridStep f12 '' #zField
Ct0 @EndTask f14 '' #zField
Ct0 @PushWFArc f15 '' #zField
Ct0 @PushWFArc f10 '' #zField
Ct0 @TkArc f8 '' #zField
Ct0 @PushWFArc f2 '' #zField
>Proto Ct0 Ct0 CalculateResult #zField
Ct0 f0 outLink start.ivp #txt
Ct0 f0 type Student.CalculateResultData #txt
Ct0 f0 inParamDecl '<com.axonactive.test.system.model.ResultModel result> param;' #txt
Ct0 f0 inParamTable 'out.result=param.result;
' #txt
Ct0 f0 actionDecl 'Student.CalculateResultData out;
' #txt
Ct0 f0 guid 15A44D18F0122426 #txt
Ct0 f0 requestEnabled true #txt
Ct0 f0 triggerEnabled true #txt
Ct0 f0 callSignature start(com.axonactive.test.system.model.ResultModel) #txt
Ct0 f0 persist false #txt
Ct0 f0 taskData 'TaskTriggered.ROL=SYSTEM
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ct0 f0 caseData businessCase.attach=true #txt
Ct0 f0 showInStartList 1 #txt
Ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ResultModel)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f0 @C|.responsibility Everybody #txt
Ct0 f0 81 49 30 30 -50 17 #rect
Ct0 f0 @|StartRequestIcon #fIcon
Ct0 f11 actionDecl 'Student.CalculateResultData out;
' #txt
Ct0 f11 actionCode 'import com.google.gson.Gson;
import com.axonactive.test.system.model.ResultModel;


out.result = new Gson().fromJson(signal.getSignalData() as String, ResultModel.class) as ResultModel;

' #txt
Ct0 f11 type Student.CalculateResultData #txt
Ct0 f11 signalCode student:submit #txt
Ct0 f11 attachToBusinessCase false #txt
Ct0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>student:submit</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f11 113 209 30 30 -41 17 #rect
Ct0 f11 @|SignalStartEventIcon #fIcon
Ct0 f1 type Student.CalculateResultData #txt
Ct0 f1 609 209 30 30 0 15 #rect
Ct0 f1 @|EndIcon #fIcon
Ct0 f9 targetWindow NEW #txt
Ct0 f9 targetDisplay TOP #txt
Ct0 f9 richDialogId com.axonactive.test.system.ViewAllExamination #txt
Ct0 f9 startMethod startValidate(java.lang.Integer,java.lang.Integer) #txt
Ct0 f9 type Student.CalculateResultData #txt
Ct0 f9 requestActionDecl '<java.lang.Integer resultId, java.lang.Integer examId> param;' #txt
Ct0 f9 requestMappingAction 'param.resultId=in.result.id;
param.examId=in.result.exam.id;
' #txt
Ct0 f9 responseActionDecl 'Student.CalculateResultData out;
' #txt
Ct0 f9 responseMappingAction 'out=in;
' #txt
Ct0 f9 isAsynch false #txt
Ct0 f9 isInnerRd false #txt
Ct0 f9 userContext '* ' #txt
Ct0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show validate view</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f9 456 202 112 44 -51 -8 #rect
Ct0 f9 @|RichDialogIcon #fIcon
Ct0 f7 actionDecl 'Student.CalculateResultData out;
' #txt
Ct0 f7 actionTable 'out=in1;
' #txt
Ct0 f7 outTypes "Student.CalculateResultData" #txt
Ct0 f7 outLinks "TaskA.ivp" #txt
Ct0 f7 caseData 'case.name=ValidateResult
case.category=ValidateResult' #txt
Ct0 f7 taskData 'TaskA.CATEGORY=Examination
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.PRI=2
TaskA.ROL=Teacher
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
TaskA.customFields.varchar.1=String.valueOf(in1.result.exam.id)
TaskA.customFields.varchar.2=String.valueOf(in1.result.id)' #txt
Ct0 f7 type Student.CalculateResultData #txt
Ct0 f7 template "" #txt
Ct0 f7 368 208 32 32 0 16 #rect
Ct0 f7 @|TaskSwitchIcon #fIcon
Ct0 f4 expr out #txt
Ct0 f4 568 224 609 224 #arcP
Ct0 f12 actionDecl 'Student.CalculateResultData out;
' #txt
Ct0 f12 actionTable 'out=in;
' #txt
Ct0 f12 actionCode 'import ch.ivyteam.ivy.process.model.value.SignalCode;
import com.google.gson.Gson;

// send signal with json payload
String jsonSerializedPayload = new Gson().toJson(in.result);
ivy.wf.signals().send(new SignalCode("student:submit"), jsonSerializedPayload);
' #txt
Ct0 f12 type Student.CalculateResultData #txt
Ct0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send signal</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f12 304 42 112 44 -33 -8 #rect
Ct0 f12 @|StepIcon #fIcon
Ct0 f14 type Student.CalculateResultData #txt
Ct0 f14 609 49 30 30 0 15 #rect
Ct0 f14 @|EndIcon #fIcon
Ct0 f15 expr out #txt
Ct0 f15 416 64 609 64 #arcP
Ct0 f10 expr data #txt
Ct0 f10 outCond ivp=="TaskA.ivp" #txt
Ct0 f10 400 224 456 224 #arcP
Ct0 f8 type Student.CalculateResultData #txt
Ct0 f8 var in1 #txt
Ct0 f8 143 224 368 224 #arcP
Ct0 f2 expr out #txt
Ct0 f2 111 64 304 64 #arcP
>Proto Ct0 .type Student.CalculateResultData #txt
>Proto Ct0 .processKind NORMAL #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f9 mainOut f4 tail #connect
Ct0 f4 head f1 mainIn #connect
Ct0 f12 mainOut f15 tail #connect
Ct0 f15 head f14 mainIn #connect
Ct0 f11 mainOut f8 tail #connect
Ct0 f8 head f7 in #connect
Ct0 f7 out f10 tail #connect
Ct0 f10 head f9 mainIn #connect
Ct0 f0 mainOut f2 tail #connect
Ct0 f2 head f12 mainIn #connect
