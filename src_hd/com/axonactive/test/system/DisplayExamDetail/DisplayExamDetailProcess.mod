[Ivy]
[>Created: Mon Feb 20 15:02:59 ICT 2017]
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
Ds0 @GridStep f21 '' #zField
Ds0 @PushWFArc f22 '' #zField
Ds0 @RichDialogEnd f0 '' #zField
Ds0 @RichDialogProcessStart f2 '' #zField
Ds0 @PushWFArc f26 '' #zField
Ds0 @PushWFArc f10 '' #zField
>Proto Ds0 Ds0 DisplayExamDetailProcess #zField
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
Ds0 f21 actionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f21 actionTable 'out=in;
' #txt
Ds0 f21 actionCode 'import com.axonactive.test.system.service.StudentExamService;
import org.apache.commons.lang.StringUtils;
import ch.ivyteam.util.StringUtil;
import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.service.ResultService;
import java.util.Set;
if(in.username.isEmpty()){
 in.username = ivy.session.getSessionUserName(); 
}

in.totalquestion = in.examination.question.size();
in.youranswer = 0;
in.youranswer = StudentExamService.calculateStudentAnswer(in.examination.question);
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
Ds0 f0 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f0 guid 15A59353CE793975 #txt
Ds0 f0 470 648 26 26 0 12 #rect
Ds0 f0 @|RichDialogEndIcon #fIcon
Ds0 f2 guid 15A59A74883F1EB8 #txt
Ds0 f2 type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
Ds0 f2 actionDecl 'com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData out;
' #txt
Ds0 f2 actionTable 'out=in;
' #txt
Ds0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirectToExamList</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f2 54 648 26 26 -53 15 #rect
Ds0 f2 @|RichDialogProcessStartIcon #fIcon
Ds0 f26 expr out #txt
Ds0 f26 80 661 470 661 #arcP
Ds0 f10 expr out #txt
Ds0 f10 472 296 755 296 #arcP
>Proto Ds0 .type com.axonactive.test.system.DisplayExamDetail.DisplayExamDetailData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f6 mainOut f8 tail #connect
Ds0 f8 head f7 mainIn #connect
Ds0 f12 mainOut f13 tail #connect
Ds0 f13 head f11 mainIn #connect
Ds0 f11 mainOut f22 tail #connect
Ds0 f22 head f21 mainIn #connect
Ds0 f2 mainOut f26 tail #connect
Ds0 f26 head f0 mainIn #connect
Ds0 f21 mainOut f10 tail #connect
Ds0 f10 head f9 mainIn #connect
