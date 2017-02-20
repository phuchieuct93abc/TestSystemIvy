[Ivy]
[>Created: Fri Feb 17 11:26:24 ICT 2017]
15A36E0B8C454BC2 3.19 #module
>Proto >Proto Collection #zClass
Rs0 ExamResultProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @MessageFlowInP-0n messageIn messageIn #zField
Rs0 @MessageFlowOutP-0n messageOut messageOut #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 @RichDialogProcessStart f3 '' #zField
Rs0 @RichDialogEnd f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessStart f8 '' #zField
Rs0 @RichDialogProcessEnd f9 '' #zField
Rs0 @GridStep f11 '' #zField
Rs0 @PushWFArc f12 '' #zField
Rs0 @PushWFArc f10 '' #zField
Rs0 @RichDialogProcessStart f13 '' #zField
Rs0 @RichDialogProcessStart f14 '' #zField
Rs0 @RichDialogProcessEnd f16 '' #zField
Rs0 @RichDialogProcessEnd f22 '' #zField
Rs0 @RichDialogMethodStart f17 '' #zField
Rs0 @PushWFArc f27 '' #zField
Rs0 @GridStep f7 '' #zField
Rs0 @PushWFArc f28 '' #zField
Rs0 @RichDialogEnd f29 '' #zField
Rs0 @PushWFArc f30 '' #zField
Rs0 @RichDialogMethodStart f2 '' #zField
Rs0 @RichDialogProcessEnd f6 '' #zField
Rs0 @PushWFArc f21 '' #zField
Rs0 @GridStep f23 '' #zField
Rs0 @PushWFArc f24 '' #zField
Rs0 @PushWFArc f18 '' #zField
Rs0 @GridStep f35 '' #zField
Rs0 @GridStep f25 '' #zField
Rs0 @PushWFArc f32 '' #zField
Rs0 @RichDialogMethodStart f26 '' #zField
Rs0 @PushWFArc f33 '' #zField
Rs0 @RichDialogProcessEnd f31 '' #zField
Rs0 @PushWFArc f34 '' #zField
Rs0 @PushWFArc f15 '' #zField
>Proto Rs0 Rs0 ExamResultProcess #zField
Rs0 f1 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f1 339 51 26 26 0 12 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f3 guid 15A36E0B8E1DA6EB #txt
Rs0 f3 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f3 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Rs0 f3 91 411 26 26 -15 12 #rect
Rs0 f3 @|RichDialogProcessStartIcon #fIcon
Rs0 f4 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f4 guid 15A36E0B8E14A577 #txt
Rs0 f4 339 411 26 26 0 12 #rect
Rs0 f4 @|RichDialogEndIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 117 424 339 424 #arcP
Rs0 f0 guid 15A36E1E969677CB #txt
Rs0 f0 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f0 method start(String) #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String examinationId> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 inParameterMapAction 'out.validateResultView="t";
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Examination)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -50 15 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f8 guid 15A37DBFCCDBE822 #txt
Rs0 f8 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f8 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f8 actionTable 'out=in;
' #txt
Rs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selectedExam
</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f8 91 475 26 26 -39 15 #rect
Rs0 f8 @|RichDialogProcessStartIcon #fIcon
Rs0 f9 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f9 347 475 26 26 0 12 #rect
Rs0 f9 @|RichDialogProcessEndIcon #fIcon
Rs0 f11 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f11 actionTable 'out=in;
' #txt
Rs0 f11 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f11 176 466 112 44 0 -8 #rect
Rs0 f11 @|StepIcon #fIcon
Rs0 f12 expr out #txt
Rs0 f12 117 488 176 488 #arcP
Rs0 f10 expr out #txt
Rs0 f10 288 488 347 488 #arcP
Rs0 f13 guid 15A3A42C534F14B6 #txt
Rs0 f13 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f13 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f13 actionTable 'out=in;
' #txt
Rs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>editTest</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f13 91 571 26 26 -22 15 #rect
Rs0 f13 @|RichDialogProcessStartIcon #fIcon
Rs0 f14 guid 15A3A42CD73ECA59 #txt
Rs0 f14 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f14 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f14 actionTable 'out=in;
' #txt
Rs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>closeTest</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f14 91 651 26 26 -27 15 #rect
Rs0 f14 @|RichDialogProcessStartIcon #fIcon
Rs0 f16 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f16 347 651 26 26 0 12 #rect
Rs0 f16 @|RichDialogProcessEndIcon #fIcon
Rs0 f22 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f22 539 747 26 26 0 12 #rect
Rs0 f22 @|RichDialogProcessEndIcon #fIcon
Rs0 f17 guid 15A3A52AAB93A112 #txt
Rs0 f17 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f17 method reload(com.axonactive.test.system.model.ExaminationModel,java.util.List<ch.ivyteam.ivy.workflow.ITask>) #txt
Rs0 f17 disableUIEvents false #txt
Rs0 f17 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonactive.test.system.model.ExaminationModel exam,java.util.List<ch.ivyteam.ivy.workflow.ITask> tasks> param = methodEvent.getInputArguments();
' #txt
Rs0 f17 inParameterMapAction 'out.examination=param.exam;
out.tasks=param.tasks;
' #txt
Rs0 f17 outParameterDecl '<> result;
' #txt
Rs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload(ComponentSystemEvent)</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f17 91 747 26 26 -89 15 #rect
Rs0 f17 @|RichDialogMethodStartIcon #fIcon
Rs0 f27 expr out #txt
Rs0 f27 109 64 339 64 #arcP
Rs0 f7 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f7 actionTable 'out=in;
' #txt
Rs0 f7 actionCode 'import javax.faces.context.FacesContext;


String url = ivy.html.startref("TeacherProcesses/ComposeEditQuestion/editExam.ivp");
url = String.format("%s?examId=%s", url, in.examination.id);
ivy.log.info(url);
FacesContext.getCurrentInstance().getExternalContext().redirect(url);
' #txt
Rs0 f7 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f7 176 562 112 44 0 -8 #rect
Rs0 f7 @|StepIcon #fIcon
Rs0 f28 expr out #txt
Rs0 f28 117 584 176 584 #arcP
Rs0 f29 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f29 guid 15A3CB610079888A #txt
Rs0 f29 411 571 26 26 0 12 #rect
Rs0 f29 @|RichDialogEndIcon #fIcon
Rs0 f30 expr out #txt
Rs0 f30 288 584 411 584 #arcP
Rs0 f2 guid 15A406C8477A0828 #txt
Rs0 f2 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f2 method validateResult() #txt
Rs0 f2 disableUIEvents false #txt
Rs0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f2 outParameterDecl '<java.lang.String nextView> result;
' #txt
Rs0 f2 outParameterMapAction 'result.nextView=in.validateResultView;
' #txt
Rs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validateResult()</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f2 91 827 26 26 -43 15 #rect
Rs0 f2 @|RichDialogMethodStartIcon #fIcon
Rs0 f6 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f6 379 827 26 26 0 12 #rect
Rs0 f6 @|RichDialogProcessEndIcon #fIcon
Rs0 f21 expr out #txt
Rs0 f21 117 840 379 840 #arcP
Rs0 f23 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f23 actionTable 'out=in;
' #txt
Rs0 f23 actionCode 'import com.axonactive.test.system.service.ExaminationService;

ExaminationService.closeExam(in.examination.id);
in.examination.isClosed = true;' #txt
Rs0 f23 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f23 176 642 112 44 0 -8 #rect
Rs0 f23 @|StepIcon #fIcon
Rs0 f24 expr out #txt
Rs0 f24 117 664 176 664 #arcP
Rs0 f18 expr out #txt
Rs0 f18 288 664 347 664 #arcP
Rs0 f35 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f35 actionTable 'out=in;
' #txt
Rs0 f35 actionCode 'import ch.ivyteam.ivy.workflow.ITask;
import com.axonactive.test.system.service.ResultService;

for(ITask task : in.tasks){
	if(task.customVarCharField2.equalsIgnoreCase(String.valueOf(in.selectedResult.getId()))){
		in.selectedTask = task;
	}
}



' #txt
Rs0 f35 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Filter task by selected result</name>
        <nameStyle>30,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f35 187 962 160 44 -76 -8 #rect
Rs0 f35 @|StepIcon #fIcon
Rs0 f25 actionDecl 'com.axonactive.test.system.ExamResult.ExamResultData out;
' #txt
Rs0 f25 actionTable 'out=in;
' #txt
Rs0 f25 actionCode 'import javax.faces.context.FacesContext;
FacesContext.getCurrentInstance().getExternalContext().redirect(ivy.html.taskstartref(in.selectedTask));' #txt
Rs0 f25 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Start task validating process</name>
        <nameStyle>29,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f25 379 962 160 44 -77 -8 #rect
Rs0 f25 @|StepIcon #fIcon
Rs0 f32 expr out #txt
Rs0 f32 347 984 379 984 #arcP
Rs0 f26 guid 15A460470E423095 #txt
Rs0 f26 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f26 method validateTask(com.axonactive.test.system.model.ResultModel) #txt
Rs0 f26 disableUIEvents false #txt
Rs0 f26 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonactive.test.system.model.ResultModel result> param = methodEvent.getInputArguments();
' #txt
Rs0 f26 inParameterMapAction 'out.selectedResult=param.result;
' #txt
Rs0 f26 outParameterDecl '<> result;
' #txt
Rs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validateTask(ResultModel)</name>
        <nameStyle>25,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f26 75 971 26 26 -73 15 #rect
Rs0 f26 @|RichDialogMethodStartIcon #fIcon
Rs0 f33 expr out #txt
Rs0 f33 101 984 187 984 #arcP
Rs0 f31 type com.axonactive.test.system.ExamResult.ExamResultData #txt
Rs0 f31 595 971 26 26 0 12 #rect
Rs0 f31 @|RichDialogProcessEndIcon #fIcon
Rs0 f34 expr out #txt
Rs0 f34 539 984 595 984 #arcP
Rs0 f15 expr out #txt
Rs0 f15 117 760 539 760 #arcP
>Proto Rs0 .type com.axonactive.test.system.ExamResult.ExamResultData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f3 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
Rs0 f8 mainOut f12 tail #connect
Rs0 f12 head f11 mainIn #connect
Rs0 f11 mainOut f10 tail #connect
Rs0 f10 head f9 mainIn #connect
Rs0 f0 mainOut f27 tail #connect
Rs0 f27 head f1 mainIn #connect
Rs0 f13 mainOut f28 tail #connect
Rs0 f28 head f7 mainIn #connect
Rs0 f7 mainOut f30 tail #connect
Rs0 f30 head f29 mainIn #connect
Rs0 f2 mainOut f21 tail #connect
Rs0 f21 head f6 mainIn #connect
Rs0 f14 mainOut f24 tail #connect
Rs0 f24 head f23 mainIn #connect
Rs0 f23 mainOut f18 tail #connect
Rs0 f18 head f16 mainIn #connect
Rs0 f35 mainOut f32 tail #connect
Rs0 f32 head f25 mainIn #connect
Rs0 f26 mainOut f33 tail #connect
Rs0 f33 head f35 mainIn #connect
Rs0 f25 mainOut f34 tail #connect
Rs0 f34 head f31 mainIn #connect
Rs0 f17 mainOut f15 tail #connect
Rs0 f15 head f22 mainIn #connect
