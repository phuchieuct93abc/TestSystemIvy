[Ivy]
[>Created: Mon Feb 20 14:27:25 ICT 2017]
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
Dl0 @GridStep f9 '' #zField
Dl0 @GridStep f15 '' #zField
Dl0 @PushWFArc f20 '' #zField
Dl0 @PushWFArc f6 '' #zField
Dl0 @RichDialog f19 '' #zField
Dl0 @RichDialog f16 '' #zField
Dl0 @EndTask f1 '' #zField
Dl0 @PushWFArc f18 '' #zField
Dl0 @EndTask f10 '' #zField
Dl0 @RichDialog f11 '' #zField
Dl0 @TaskSwitch f12 '' #zField
Dl0 @SignalStartEvent f13 '' #zField
Dl0 @TkArc f14 '' #zField
Dl0 @PushWFArc f21 '' #zField
Dl0 @PushWFArc f22 '' #zField
Dl0 @PushWFArc f7 '' #zField
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
Dl0 f0 showInStartList 0 #txt
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
Dl0 f9 actionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f9 actionTable 'out=in;
' #txt
Dl0 f9 actionCode 'import java.util.ArrayList;
import com.axonactive.test.system.service.ResultService;

in.result = ResultService.getResult(new ArrayList(in.examination.question),in.examination.id,ivy.session.getSessionUser().getName());
in.result.id= ResultService.createResult(in.result,in.examination.id);' #txt
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
Dl0 f20 expr out #txt
Dl0 f20 958 64 990 64 #arcP
Dl0 f6 expr out #txt
Dl0 f6 664 64 846 64 #arcP
Dl0 f19 targetWindow NEW #txt
Dl0 f19 targetDisplay TOP #txt
Dl0 f19 richDialogId com.axonactive.test.system.ResultDetail #txt
Dl0 f19 startMethod start(com.axonactive.test.system.model.ResultModel) #txt
Dl0 f19 type Student.DisplayExamDetailData #txt
Dl0 f19 requestActionDecl '<com.axonactive.test.system.model.ResultModel result> param;' #txt
Dl0 f19 requestMappingAction 'param.result=in.result;
' #txt
Dl0 f19 responseActionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f19 responseMappingAction 'out=in;
' #txt
Dl0 f19 isAsynch false #txt
Dl0 f19 isInnerRd false #txt
Dl0 f19 userContext '* ' #txt
Dl0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Result detail</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dl0 f19 1122 123 112 44 -34 -8 #rect
Dl0 f19 @|RichDialogIcon #fIcon
Dl0 f16 targetWindow NEW #txt
Dl0 f16 targetDisplay TOP #txt
Dl0 f16 richDialogId com.axonactive.test.system.StudentViewAllExam #txt
Dl0 f16 startMethod start() #txt
Dl0 f16 type Student.DisplayExamDetailData #txt
Dl0 f16 requestActionDecl '<> param;' #txt
Dl0 f16 responseActionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f16 responseMappingAction 'out=in;
' #txt
Dl0 f16 isAsynch false #txt
Dl0 f16 isInnerRd false #txt
Dl0 f16 userContext '* ' #txt
Dl0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Main page</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dl0 f16 1258 43 112 44 -28 -8 #rect
Dl0 f16 @|RichDialogIcon #fIcon
Dl0 f1 type Student.DisplayExamDetailData #txt
Dl0 f1 1443 50 30 30 0 15 #rect
Dl0 f1 @|EndIcon #fIcon
Dl0 f18 expr out #txt
Dl0 f18 1370 65 1443 65 #arcP
Dl0 f10 type Student.DisplayExamDetailData #txt
Dl0 f10 905 273 30 30 0 15 #rect
Dl0 f10 @|EndIcon #fIcon
Dl0 f11 targetWindow NEW #txt
Dl0 f11 targetDisplay TOP #txt
Dl0 f11 richDialogId com.axonactive.test.system.ViewAllExamination #txt
Dl0 f11 startMethod startValidate(java.lang.Integer,java.lang.Integer) #txt
Dl0 f11 type Student.DisplayExamDetailData #txt
Dl0 f11 requestActionDecl '<java.lang.Integer resultId, java.lang.Integer examId> param;' #txt
Dl0 f11 requestMappingAction 'param.resultId=in.result.id;
param.examId=in.result.exam.id;
' #txt
Dl0 f11 responseActionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f11 responseMappingAction 'out=in;
' #txt
Dl0 f11 isAsynch false #txt
Dl0 f11 isInnerRd false #txt
Dl0 f11 userContext '* ' #txt
Dl0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show validate view</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dl0 f11 418 263 112 44 -51 -8 #rect
Dl0 f11 @|RichDialogIcon #fIcon
Dl0 f12 actionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f12 actionTable 'out=in1;
' #txt
Dl0 f12 outTypes "Student.DisplayExamDetailData" #txt
Dl0 f12 outLinks "TaskA.ivp" #txt
Dl0 f12 caseData 'case.name=ValidateResult
case.category=ValidateResult' #txt
Dl0 f12 taskData 'TaskA.CATEGORY=Examination
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.PRI=2
TaskA.ROL=Teacher
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
TaskA.customFields.varchar.1=String.valueOf(in1.result.exam.id)
TaskA.customFields.varchar.2=String.valueOf(in1.result.id)' #txt
Dl0 f12 type Student.DisplayExamDetailData #txt
Dl0 f12 template "" #txt
Dl0 f12 330 269 32 32 0 16 #rect
Dl0 f12 @|TaskSwitchIcon #fIcon
Dl0 f13 actionDecl 'Student.DisplayExamDetailData out;
' #txt
Dl0 f13 actionCode 'import com.google.gson.Gson;
import com.axonactive.test.system.model.ResultModel;


out.result = new Gson().fromJson(signal.getSignalData() as String, ResultModel.class) as ResultModel;

' #txt
Dl0 f13 type Student.DisplayExamDetailData #txt
Dl0 f13 signalCode student:submit #txt
Dl0 f13 attachToBusinessCase true #txt
Dl0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>student:submit</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dl0 f13 75 270 30 30 -41 17 #rect
Dl0 f13 @|SignalStartEventIcon #fIcon
Dl0 f14 expr out #txt
Dl0 f14 type Student.DisplayExamDetailData #txt
Dl0 f14 var in1 #txt
Dl0 f14 105 285 330 285 #arcP
Dl0 f21 expr data #txt
Dl0 f21 outCond ivp=="TaskA.ivp" #txt
Dl0 f21 362 285 418 285 #arcP
Dl0 f22 expr out #txt
Dl0 f22 1102 64 1258 65 #arcP
Dl0 f7 expr out #txt
Dl0 f7 530 285 905 287 #arcP
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
Dl0 f2 mainOut f6 tail #connect
Dl0 f6 head f9 mainIn #connect
Dl0 f16 mainOut f18 tail #connect
Dl0 f18 head f1 mainIn #connect
Dl0 f13 mainOut f14 tail #connect
Dl0 f14 head f12 in #connect
Dl0 f12 out f21 tail #connect
Dl0 f21 head f11 mainIn #connect
Dl0 f15 mainOut f22 tail #connect
Dl0 f22 head f16 mainIn #connect
Dl0 f11 mainOut f7 tail #connect
Dl0 f7 head f10 mainIn #connect
