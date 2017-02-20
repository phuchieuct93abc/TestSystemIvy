[Ivy]
[>Created: Sun Feb 19 17:56:58 ICT 2017]
15A3674773C487BF 3.19 #module
>Proto >Proto Collection #zClass
Vs0 ViewAllExaminationProcess Big #zClass
Vs0 RD #cInfo
Vs0 #process
Vs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Vs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Vs0 @TextInP .resExport .resExport #zField
Vs0 @TextInP .type .type #zField
Vs0 @TextInP .processKind .processKind #zField
Vs0 @AnnotationInP-0n ai ai #zField
Vs0 @MessageFlowInP-0n messageIn messageIn #zField
Vs0 @MessageFlowOutP-0n messageOut messageOut #zField
Vs0 @TextInP .xml .xml #zField
Vs0 @TextInP .responsibility .responsibility #zField
Vs0 @RichDialogInitStart f0 '' #zField
Vs0 @RichDialogProcessEnd f1 '' #zField
Vs0 @RichDialogProcessEnd f7 '' #zField
Vs0 @RichDialogProcessStart f12 '' #zField
Vs0 @RichDialogProcessEnd f13 '' #zField
Vs0 @GridStep f17 '' #zField
Vs0 @GridStep f9 '' #zField
Vs0 @GridStep f11 '' #zField
Vs0 @PushWFArc f19 '' #zField
Vs0 @GridStep f23 '' #zField
Vs0 @GridStep f24 '' #zField
Vs0 @RichDialogProcessStart f25 '' #zField
Vs0 @RichDialogMethodStart f26 '' #zField
Vs0 @RichDialogProcessEnd f27 '' #zField
Vs0 @PushWFArc f28 '' #zField
Vs0 @PushWFArc f29 '' #zField
Vs0 @PushWFArc f31 '' #zField
Vs0 @PushWFArc f34 '' #zField
Vs0 @GridStep f35 '' #zField
Vs0 @RichDialogProcessEnd f36 '' #zField
Vs0 @GridStep f20 '' #zField
Vs0 @PushWFArc f21 '' #zField
Vs0 @PushWFArc f10 '' #zField
Vs0 @PushWFArc f18 '' #zField
Vs0 @GridStep f8 '' #zField
Vs0 @PushWFArc f32 '' #zField
Vs0 @PushWFArc f38 '' #zField
Vs0 @RichDialogProcessStart f33 '' #zField
Vs0 @PushWFArc f37 '' #zField
Vs0 @RichDialogInitStart f39 '' #zField
Vs0 @GridStep f40 '' #zField
Vs0 @PushWFArc f43 '' #zField
Vs0 @PushWFArc f44 '' #zField
Vs0 @RichDialogMethodStart f41 '' #zField
Vs0 @PushWFArc f42 '' #zField
Vs0 @RichDialogEnd f22 '' #zField
Vs0 @PushWFArc f30 '' #zField
Vs0 @GridStep f14 '' #zField
Vs0 @PushWFArc f15 '' #zField
Vs0 @PushWFArc f16 '' #zField
>Proto Vs0 Vs0 ViewAllExaminationProcess #zField
Vs0 f0 guid 15A367477621F4FF #txt
Vs0 f0 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f0 method start() #txt
Vs0 f0 disableUIEvents true #txt
Vs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Vs0 f0 outParameterDecl '<> result;
' #txt
Vs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f0 83 51 26 26 -12 15 #rect
Vs0 f0 @|RichDialogInitStartIcon #fIcon
Vs0 f1 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f1 1011 51 26 26 0 12 #rect
Vs0 f1 @|RichDialogProcessEndIcon #fIcon
Vs0 f7 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f7 355 251 26 26 0 12 #rect
Vs0 f7 @|RichDialogProcessEndIcon #fIcon
Vs0 f12 guid 15A36D43B8A28967 #txt
Vs0 f12 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f12 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f12 actionTable 'out=in;
' #txt
Vs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createExam</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f12 75 339 26 26 -32 15 #rect
Vs0 f12 @|RichDialogProcessStartIcon #fIcon
Vs0 f13 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f13 331 339 26 26 0 12 #rect
Vs0 f13 @|RichDialogProcessEndIcon #fIcon
Vs0 f17 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f17 actionTable 'out=in;
' #txt
Vs0 f17 actionCode 'import com.axonactive.test.system.service.ExaminationService;
import com.axonactive.test.system.model.ExaminationModel;
in.selectedExam = new ExaminationModel();
in.examinations = ExaminationService.findAll();' #txt
Vs0 f17 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get examinations</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f17 328 42 112 44 -48 -8 #rect
Vs0 f17 @|StepIcon #fIcon
Vs0 f9 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f9 actionTable 'out=in;
' #txt
Vs0 f9 actionCode 'in.allowCreateExam = Boolean.valueOf(ivy.var.allow_create_exam);' #txt
Vs0 f9 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get isAllowCreate</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f9 672 42 112 44 -49 -8 #rect
Vs0 f9 @|StepIcon #fIcon
Vs0 f11 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f11 actionTable 'out=in;
' #txt
Vs0 f11 actionCode 'import org.apache.commons.collections4.CollectionUtils;
import java.util.Collection;

if(CollectionUtils.isNotEmpty(in.examinations)){
		in.selectedExam = in.examinations.get(0);
}
' #txt
Vs0 f11 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set first exam as default</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f11 472 42 144 44 -65 -8 #rect
Vs0 f11 @|StepIcon #fIcon
Vs0 f19 expr out #txt
Vs0 f19 440 64 472 64 #arcP
Vs0 f23 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f23 actionTable 'out=in;
' #txt
Vs0 f23 actionCode 'import com.axonactive.test.system.util.Utils;
import javax.faces.context.FacesContext;
in.isShowValidateView = null;' #txt
Vs0 f23 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f23 149 560 112 44 0 -8 #rect
Vs0 f23 @|StepIcon #fIcon
Vs0 f24 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f24 actionTable 'out=in;
' #txt
Vs0 f24 actionCode 'import com.axonactive.test.system.service.ResultService;
ResultService.updateIsPassed(in.selectedResult.id,in.isResultPassed);
in.selectedResult.isPassed = in.isResultPassed;' #txt
Vs0 f24 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f24 165 464 112 44 0 -8 #rect
Vs0 f24 @|StepIcon #fIcon
Vs0 f25 guid 15A4124114EEC1C8 #txt
Vs0 f25 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f25 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f25 actionTable 'out=in;
' #txt
Vs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f25 64 569 26 26 -13 15 #rect
Vs0 f25 @|RichDialogProcessStartIcon #fIcon
Vs0 f26 guid 15A4124114E12333 #txt
Vs0 f26 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f26 method validate(Boolean) #txt
Vs0 f26 disableUIEvents false #txt
Vs0 f26 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean isValidate> param = methodEvent.getInputArguments();
' #txt
Vs0 f26 inParameterMapAction 'out.isResultPassed=param.isValidate;
' #txt
Vs0 f26 outParameterDecl '<> result;
' #txt
Vs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f26 80 473 26 26 -21 15 #rect
Vs0 f26 @|RichDialogMethodStartIcon #fIcon
Vs0 f27 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f27 328 569 26 26 0 12 #rect
Vs0 f27 @|RichDialogProcessEndIcon #fIcon
Vs0 f28 expr out #txt
Vs0 f28 261 582 328 582 #arcP
Vs0 f29 expr out #txt
Vs0 f29 106 486 165 486 #arcP
Vs0 f31 expr out #txt
Vs0 f31 90 582 149 582 #arcP
Vs0 f34 expr out #txt
Vs0 f34 109 64 328 64 #arcP
Vs0 f35 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f35 actionTable 'out=in;
' #txt
Vs0 f35 actionCode 'import ch.ivyteam.ivy.workflow.ITask;
import com.axonactive.test.system.service.ResultService;

for(ITask task : in.tasks){
	if(task.customVarCharField1.equalsIgnoreCase(String.valueOf(in.selectedResult.getId()))){
		in.selectedTask = task;
	}
}



' #txt
Vs0 f35 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Filter task by selected result</name>
        <nameStyle>30,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f35 136 666 160 44 -76 -8 #rect
Vs0 f35 @|StepIcon #fIcon
Vs0 f36 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f36 523 675 26 26 0 12 #rect
Vs0 f36 @|RichDialogProcessEndIcon #fIcon
Vs0 f20 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f20 actionTable 'out=in;
' #txt
Vs0 f20 actionCode 'import ch.ivyteam.ivy.workflow.ITask;
import com.axonactive.test.system.service.ResultService;
import com.axonactive.test.system.model.ResultModel;

in.results=[];
in.tasks = ResultService.getTaskByExaminationId(in.selectedExam.id);
in.results = [];
	for(ITask task : in.tasks){
		
		Integer resultId = Integer.valueOf(task.customVarCharField2);
	ResultModel resultModel = ResultService.findById(resultId);
	in.results.add(resultModel);

	}' #txt
Vs0 f20 security system #txt
Vs0 f20 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get result Task</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f20 837 42 112 44 -41 -8 #rect
Vs0 f20 @|StepIcon #fIcon
Vs0 f21 expr out #txt
Vs0 f21 616 64 672 64 #arcP
Vs0 f10 expr out #txt
Vs0 f10 949 64 1011 64 #arcP
Vs0 f18 expr out #txt
Vs0 f18 784 64 837 64 #arcP
Vs0 f8 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f8 actionTable 'out=in;
' #txt
Vs0 f8 actionCode 'import javax.faces.context.FacesContext;
FacesContext.getCurrentInstance().getExternalContext().redirect(ivy.html.taskstartref(in.selectedTask));' #txt
Vs0 f8 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Start task validating process</name>
        <nameStyle>29,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f8 328 666 160 44 -77 -8 #rect
Vs0 f8 @|StepIcon #fIcon
Vs0 f32 expr out #txt
Vs0 f32 296 688 328 688 #arcP
Vs0 f38 expr out #txt
Vs0 f38 488 688 523 688 #arcP
Vs0 f33 guid 15A45F396CAB99DF #txt
Vs0 f33 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f33 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f33 actionTable 'out=in;
' #txt
Vs0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f33 67 675 26 26 -11 15 #rect
Vs0 f33 @|RichDialogProcessStartIcon #fIcon
Vs0 f37 expr out #txt
Vs0 f37 93 688 136 688 #arcP
Vs0 f39 guid 15A460CB10AF762E #txt
Vs0 f39 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f39 method startValidate(java.lang.Integer,java.lang.Integer) #txt
Vs0 f39 disableUIEvents true #txt
Vs0 f39 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer resultId,java.lang.Integer examId> param = methodEvent.getInputArguments();
' #txt
Vs0 f39 inParameterMapAction 'out.selectedExam.id=param.examId;
out.selectedResult.id=param.resultId;
' #txt
Vs0 f39 outParameterDecl '<> result;
' #txt
Vs0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startValidate(Integer,Integer)</name>
        <nameStyle>30,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f39 277 192 26 26 -77 15 #rect
Vs0 f39 @|RichDialogInitStartIcon #fIcon
Vs0 f40 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f40 actionTable 'out=in;
' #txt
Vs0 f40 actionCode 'import javax.faces.component.UIViewRoot;
import com.axonactive.test.system.service.ExaminationService;
import com.axonactive.test.system.service.ResultService;
import javax.faces.context.FacesContext;


in.selectedResult = ResultService.findById(in.selectedResult.id);
in.selectedExam = ExaminationService.findById(in.selectedExam.id);
in.isShowValidateView = true;

' #txt
Vs0 f40 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f40 338 135 112 44 0 -8 #rect
Vs0 f40 @|StepIcon #fIcon
Vs0 f43 expr out #txt
Vs0 f43 301 199 346 179 #arcP
Vs0 f44 expr out #txt
Vs0 f44 394 135 384 86 #arcP
Vs0 f41 guid 15A4642C562CEC71 #txt
Vs0 f41 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f41 method updateExam() #txt
Vs0 f41 disableUIEvents false #txt
Vs0 f41 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Vs0 f41 outParameterDecl '<> result;
' #txt
Vs0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateExam()</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f41 571 131 26 26 -38 15 #rect
Vs0 f41 @|RichDialogMethodStartIcon #fIcon
Vs0 f42 expr out #txt
Vs0 f42 597 144 893 86 #arcP
Vs0 f42 1 768 144 #addKink
Vs0 f42 0 0.8070263876325661 0 0 #arcLabel
Vs0 f22 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f22 guid 15A465606CF555A3 #txt
Vs0 f22 339 467 26 26 0 12 #rect
Vs0 f22 @|RichDialogEndIcon #fIcon
Vs0 f30 expr out #txt
Vs0 f30 277 486 339 480 #arcP
Vs0 f14 actionDecl 'com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData out;
' #txt
Vs0 f14 actionTable 'out=in;
' #txt
Vs0 f14 actionCode 'import com.axonactive.test.system.util.Utils;
Utils.redirect("TeacherProcesses/ComposeEditQuestion/compose.ivp");' #txt
Vs0 f14 type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
Vs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Redirect to create exam</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f14 136 330 144 44 -64 -8 #rect
Vs0 f14 @|StepIcon #fIcon
Vs0 f15 expr out #txt
Vs0 f15 101 352 136 352 #arcP
Vs0 f16 expr out #txt
Vs0 f16 280 352 331 352 #arcP
>Proto Vs0 .type com.axonactive.test.system.ViewAllExamination.ViewAllExaminationData #txt
>Proto Vs0 .processKind HTML_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
>Proto Vs0 '' #fIcon
Vs0 f17 mainOut f19 tail #connect
Vs0 f19 head f11 mainIn #connect
Vs0 f26 mainOut f29 tail #connect
Vs0 f29 head f24 mainIn #connect
Vs0 f25 mainOut f31 tail #connect
Vs0 f31 head f23 mainIn #connect
Vs0 f23 mainOut f28 tail #connect
Vs0 f28 head f27 mainIn #connect
Vs0 f0 mainOut f34 tail #connect
Vs0 f34 head f17 mainIn #connect
Vs0 f11 mainOut f21 tail #connect
Vs0 f21 head f9 mainIn #connect
Vs0 f20 mainOut f10 tail #connect
Vs0 f10 head f1 mainIn #connect
Vs0 f9 mainOut f18 tail #connect
Vs0 f18 head f20 mainIn #connect
Vs0 f35 mainOut f32 tail #connect
Vs0 f32 head f8 mainIn #connect
Vs0 f8 mainOut f38 tail #connect
Vs0 f38 head f36 mainIn #connect
Vs0 f33 mainOut f37 tail #connect
Vs0 f37 head f35 mainIn #connect
Vs0 f39 mainOut f43 tail #connect
Vs0 f43 head f40 mainIn #connect
Vs0 f40 mainOut f44 tail #connect
Vs0 f44 head f17 mainIn #connect
Vs0 f41 mainOut f42 tail #connect
Vs0 f42 head f20 mainIn #connect
Vs0 f24 mainOut f30 tail #connect
Vs0 f30 head f22 mainIn #connect
Vs0 f12 mainOut f15 tail #connect
Vs0 f15 head f14 mainIn #connect
Vs0 f14 mainOut f16 tail #connect
Vs0 f16 head f13 mainIn #connect
