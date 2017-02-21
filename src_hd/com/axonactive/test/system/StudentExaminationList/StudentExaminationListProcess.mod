[Ivy]
[>Created: Mon Feb 20 20:24:04 ICT 2017]
15A373E7F5FF2A2C 3.19 #module
>Proto >Proto Collection #zClass
Ss0 StudentExaminationListProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogEnd f4 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @GridStep f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @GridStep f11 '' #zField
Ss0 @RichDialogProcessEnd f9 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @RichDialogMethodStart f13 '' #zField
Ss0 @GridStep f14 '' #zField
Ss0 @RichDialogProcessEnd f15 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @RichDialogMethodStart f8 '' #zField
Ss0 @PushWFArc f12 '' #zField
>Proto Ss0 Ss0 StudentExaminationListProcess #zField
Ss0 f0 guid 15A373E7F7CCB532 #txt
Ss0 f0 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -16 15 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f1 339 51 26 26 0 12 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 guid 15A373E7F8BCF5DD #txt
Ss0 f3 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f3 actionDecl 'com.axonactive.test.system.StudentExaminationList.StudentExaminationListData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 83 147 26 26 -15 12 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f4 guid 15A373E7F8B6BA0C #txt
Ss0 f4 211 147 26 26 0 12 #rect
Ss0 f4 @|RichDialogEndIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 109 160 211 160 #arcP
Ss0 f6 actionDecl 'com.axonactive.test.system.StudentExaminationList.StudentExaminationListData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'import com.axonactive.test.system.DAO.ExaminationDAO;
in.examinations = ExaminationDAO.getAllActiveTest();' #txt
Ss0 f6 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f6 168 42 112 44 0 -8 #rect
Ss0 f6 @|StepIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 109 64 168 64 #arcP
Ss0 f2 expr out #txt
Ss0 f2 280 64 339 64 #arcP
Ss0 f11 actionDecl 'com.axonactive.test.system.StudentExaminationList.StudentExaminationListData out;
' #txt
Ss0 f11 actionTable 'out=in;
' #txt
Ss0 f11 actionCode 'import com.axonactive.test.system.service.StudentExamService;
import javax.faces.context.FacesContext;

String url = ivy.html.startref("Student/DisplayExamDetail/start.ivp");
url = String.format("%s?examid=%s", url, in.examId);
FacesContext.getCurrentInstance().getExternalContext().redirect(url);
' #txt
Ss0 f11 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call Progress Display Exam Detail</name>
        <nameStyle>33,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f11 152 234 208 44 -94 -8 #rect
Ss0 f11 @|StepIcon #fIcon
Ss0 f9 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f9 403 243 26 26 0 12 #rect
Ss0 f9 @|RichDialogProcessEndIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 360 256 403 256 #arcP
Ss0 f13 guid 15A4B09061625265 #txt
Ss0 f13 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f13 method reviewExamById(java.lang.Integer) #txt
Ss0 f13 disableUIEvents false #txt
Ss0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer examid> param = methodEvent.getInputArguments();
' #txt
Ss0 f13 inParameterMapAction 'out.examId=param.examid;
' #txt
Ss0 f13 outParameterDecl '<java.lang.Integer examid> result;
' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reviewExamById(Integer)</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 83 355 26 26 -67 15 #rect
Ss0 f13 @|RichDialogMethodStartIcon #fIcon
Ss0 f14 actionDecl 'com.axonactive.test.system.StudentExaminationList.StudentExaminationListData out;
' #txt
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 actionCode 'import com.axonactive.test.system.service.StudentExamService;
import javax.faces.context.FacesContext;

String url = ivy.html.startref("Student/ReviewExamDetail/start.ivp");
url = String.format("%s?examid=%s", url, in.examId);
FacesContext.getCurrentInstance().getExternalContext().redirect(url);
' #txt
Ss0 f14 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getIdToReviewExam</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 160 346 128 44 -56 -8 #rect
Ss0 f14 @|StepIcon #fIcon
Ss0 f15 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f15 403 355 26 26 0 12 #rect
Ss0 f15 @|RichDialogProcessEndIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 288 368 403 368 #arcP
Ss0 f17 expr out #txt
Ss0 f17 109 368 160 368 #arcP
Ss0 f8 guid 15A4B52103895773 #txt
Ss0 f8 type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
Ss0 f8 method findExambyID(java.lang.Integer) #txt
Ss0 f8 disableUIEvents false #txt
Ss0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer examid> param = methodEvent.getInputArguments();
' #txt
Ss0 f8 inParameterMapAction 'out.examId=param.examid;
' #txt
Ss0 f8 outParameterDecl '<java.lang.Integer examid> result;
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findExambyID(Integer)</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 67 243 26 26 -60 15 #rect
Ss0 f8 @|RichDialogMethodStartIcon #fIcon
Ss0 f12 expr out #txt
Ss0 f12 93 256 152 256 #arcP
>Proto Ss0 .type com.axonactive.test.system.StudentExaminationList.StudentExaminationListData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f4 mainIn #connect
Ss0 f0 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f6 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f11 mainOut f10 tail #connect
Ss0 f10 head f9 mainIn #connect
Ss0 f14 mainOut f16 tail #connect
Ss0 f16 head f15 mainIn #connect
Ss0 f13 mainOut f17 tail #connect
Ss0 f17 head f14 mainIn #connect
Ss0 f8 mainOut f12 tail #connect
Ss0 f12 head f11 mainIn #connect
