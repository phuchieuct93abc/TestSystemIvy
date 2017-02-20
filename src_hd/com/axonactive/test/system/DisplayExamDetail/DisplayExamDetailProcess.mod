[Ivy]
[>Created: Mon Feb 20 07:39:23 ICT 2017]
15A3BF38C53CBA0B 3.19 #module
>Proto >Proto Collection #zClass
Ds0 DisplayExamDetailProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @RichDialogInitStart f6 '' #zField
Ds0 @RichDialogProcessEnd f7 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @RichDialogProcessStart f12 '' #zField
Ds0 @RichDialogProcessEnd f9 '' #zField
Ds0 @GridStep f11 '' #zField
Ds0 @PushWFArc f13 '' #zField
Ds0 @Trigger f14 '' #zField
Ds0 @RichDialogProcessStart f16 '' #zField
Ds0 @GridStep f17 '' #zField
Ds0 @PushWFArc f18 '' #zField
Ds0 @RichDialogProcessEnd f19 '' #zField
Ds0 @PushWFArc f20 '' #zField
Ds0 @GridStep f21 '' #zField
Ds0 @PushWFArc f22 '' #zField
Ds0 @PushWFArc f15 '' #zField
Ds0 @PushWFArc f10 '' #zField
>Proto Ds0 Ds0 DisplayExamDetailProcess #zField
Ds0 f0 guid 15A3BF38C66EA06A #txt
Ds0 f0 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f1 211 51 26 26 0 12 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f2 expr out #txt
Ds0 f2 109 64 211 64 #arcP
Ds0 f3 guid 15A3BF38C6E28E91 #txt
Ds0 f3 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f3 actionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 147 26 26 -15 12 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f4 guid 15A3BF38C6E1F0D6 #txt
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f4 @|RichDialogEndIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 109 160 211 160 #arcP
Ds0 f6 guid 15A3BF4319817BBE #txt
Ds0 f6 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f6 method start(com.axonactive.test.system.model.ExaminationModel) #txt
Ds0 f6 disableUIEvents true #txt
Ds0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonactive.test.system.model.ExaminationModel exam> param = methodEvent.getInputArguments();
' #txt
Ds0 f6 inParameterMapAction 'out.examination=param.exam;
' #txt
Ds0 f6 outParameterDecl '<com.axonactive.test.system.model.ExaminationModel exam> result;
' #txt
Ds0 f6 outParameterMapAction 'result.exam=in.examination;
' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ExaminationModel)</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 83 211 26 26 -66 15 #rect
Ds0 f6 @|RichDialogInitStartIcon #fIcon
Ds0 f7 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f7 211 211 26 26 0 12 #rect
Ds0 f7 @|RichDialogProcessEndIcon #fIcon
Ds0 f8 expr out #txt
Ds0 f8 109 224 211 224 #arcP
Ds0 f12 guid 15A45A813136921C #txt
Ds0 f12 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f12 actionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f12 actionTable 'out=in;
out.examination=in.examination;
' #txt
Ds0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>handleStudentSubmitExam</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f12 83 283 26 26 -75 15 #rect
Ds0 f12 @|RichDialogProcessStartIcon #fIcon
Ds0 f9 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f9 755 283 26 26 0 12 #rect
Ds0 f9 @|RichDialogProcessEndIcon #fIcon
Ds0 f11 actionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f11 actionTable 'out=in;
out.listQuestion=new java.util.ArrayList(in.examination.question);
out.user=in.user;
' #txt
Ds0 f11 actionCode 'import com.axonactive.test.system.service.StudentExamService;
StudentExamService.handleStudentSubmitExam(out.examination);
in.user = ivy.session.getSessionUser();' #txt
Ds0 f11 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>insert answer of student</name>
        <nameStyle>24,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f11 152 274 144 44 -66 -8 #rect
Ds0 f11 @|StepIcon #fIcon
Ds0 f13 expr out #txt
Ds0 f13 109 296 152 296 #arcP
Ds0 f14 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f14 processCall FunctionProcess/CalculateResult:start(com.axonactive.test.system.model.ResultModel) #txt
Ds0 f14 doCall true #txt
Ds0 f14 requestActionDecl '<com.axonactive.test.system.model.ResultModel result> param;
' #txt
Ds0 f14 requestMappingAction 'param.result=in.result;
' #txt
Ds0 f14 responseActionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f14 responseMappingAction 'out=in;
' #txt
Ds0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CalculateResult</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f14 520 274 112 44 -44 -8 #rect
Ds0 f14 @|TriggerIcon #fIcon
Ds0 f16 guid 15A56F6FBC640FBC #txt
Ds0 f16 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f16 actionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f16 actionTable 'out=in;
' #txt
Ds0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirectToExamList</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f16 83 387 26 26 -53 15 #rect
Ds0 f16 @|RichDialogProcessStartIcon #fIcon
Ds0 f17 actionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f17 actionTable 'out=in;
' #txt
Ds0 f17 actionCode 'import com.axonactive.test.system.util.Utils;
Utils.redirect("Business Processes/Start/start.ivp");' #txt
Ds0 f17 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f17 192 378 112 44 -20 -8 #rect
Ds0 f17 @|StepIcon #fIcon
Ds0 f18 expr out #txt
Ds0 f18 109 400 192 400 #arcP
Ds0 f19 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f19 395 387 26 26 0 12 #rect
Ds0 f19 @|RichDialogProcessEndIcon #fIcon
Ds0 f20 expr out #txt
Ds0 f20 304 400 395 400 #arcP
Ds0 f21 actionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f21 actionTable 'out=in;
' #txt
Ds0 f21 actionCode 'import com.axonactive.test.system.service.ResultService;
if(in.username.isEmpty()){
	in.username = ivy.session.getSessionUserName();	
}
in.result = ResultService.getResult(in.listQuestion,in.examination.id,in.username);
in.result.id= ResultService.createResult(in.result,in.examination.id);
in.username = in.username;
in.score = in.result.score;
if(in.score == null || in.score == ""){
		in.score  = 0;
	}
in.isPassed = in.result.isPassed;' #txt
Ds0 f21 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Insert Result</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f21 360 274 112 44 -35 -8 #rect
Ds0 f21 @|StepIcon #fIcon
Ds0 f22 expr out #txt
Ds0 f22 296 296 360 296 #arcP
Ds0 f15 expr out #txt
Ds0 f15 472 296 520 296 #arcP
Ds0 f10 expr out #txt
Ds0 f10 632 296 755 296 #arcP
>Proto Ds0 .type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f6 mainOut f8 tail #connect
Ds0 f8 head f7 mainIn #connect
Ds0 f12 mainOut f13 tail #connect
Ds0 f13 head f11 mainIn #connect
Ds0 f14 mainOut f10 tail #connect
Ds0 f10 head f9 mainIn #connect
Ds0 f16 mainOut f18 tail #connect
Ds0 f18 head f17 mainIn #connect
Ds0 f17 mainOut f20 tail #connect
Ds0 f20 head f19 mainIn #connect
Ds0 f11 mainOut f22 tail #connect
Ds0 f22 head f21 mainIn #connect
Ds0 f21 mainOut f15 tail #connect
Ds0 f15 head f14 mainIn #connect
