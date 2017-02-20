[Ivy]
[>Created: Fri Feb 17 19:00:43 ICT 2017]
15A4B0BC358675E7 3.19 #module
>Proto >Proto Collection #zClass
Rs0 ReviewExamDetailProcess Big #zClass
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
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 @PushWFArc f2 '' #zField
Rs0 @RichDialogProcessStart f3 '' #zField
Rs0 @RichDialogEnd f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @RichDialogProcessStart f6 '' #zField
Rs0 @RichDialogProcessEnd f7 '' #zField
Rs0 @GridStep f8 '' #zField
Rs0 @PushWFArc f9 '' #zField
Rs0 @PushWFArc f10 '' #zField
>Proto Rs0 Rs0 ReviewExamDetailProcess #zField
Rs0 f0 guid 15A4B0BC3708823F #txt
Rs0 f0 type com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData #txt
Rs0 f0 method start(com.axonactive.test.system.model.ExaminationModel) #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonactive.test.system.model.ExaminationModel examinationModel> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 inParameterMapAction 'out.examination=param.examinationModel;
out.isDisabled=true;
' #txt
Rs0 f0 outParameterDecl '<com.axonactive.test.system.model.ExaminationModel examinationModel> result;
' #txt
Rs0 f0 outParameterMapAction 'result.examinationModel=in.examination;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ReviewExamDetailData)</name>
        <nameStyle>27,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -80 15 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f1 type com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData #txt
Rs0 f1 211 51 26 26 0 12 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f2 expr out #txt
Rs0 f2 109 64 211 64 #arcP
Rs0 f3 guid 15A4B0BC383D2966 #txt
Rs0 f3 type com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData #txt
Rs0 f3 actionDecl 'com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData out;
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
Rs0 f3 83 147 26 26 -15 12 #rect
Rs0 f3 @|RichDialogProcessStartIcon #fIcon
Rs0 f4 type com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData #txt
Rs0 f4 guid 15A4B0BC38364382 #txt
Rs0 f4 211 147 26 26 0 12 #rect
Rs0 f4 @|RichDialogEndIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 109 160 211 160 #arcP
Rs0 f6 guid 15A4BF15C20CDD0D #txt
Rs0 f6 type com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData #txt
Rs0 f6 actionDecl 'com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData out;
' #txt
Rs0 f6 actionTable 'out=in;
' #txt
Rs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>backtolistexam</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f6 83 227 26 26 -41 15 #rect
Rs0 f6 @|RichDialogProcessStartIcon #fIcon
Rs0 f7 type com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData #txt
Rs0 f7 347 227 26 26 0 12 #rect
Rs0 f7 @|RichDialogProcessEndIcon #fIcon
Rs0 f8 actionDecl 'com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData out;
' #txt
Rs0 f8 actionTable 'out=in;
' #txt
Rs0 f8 actionCode 'import com.axonactive.test.system.util.Utils;
Utils.redirect("Business Processes/Start/start.ivp");' #txt
Rs0 f8 type com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData #txt
Rs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back to list exam</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f8 184 218 112 44 -45 -8 #rect
Rs0 f8 @|StepIcon #fIcon
Rs0 f9 expr out #txt
Rs0 f9 109 240 184 240 #arcP
Rs0 f10 expr out #txt
Rs0 f10 296 240 347 240 #arcP
>Proto Rs0 .type com.axonactive.test.system.ReviewExamDetail.ReviewExamDetailData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f3 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
Rs0 f6 mainOut f9 tail #connect
Rs0 f9 head f8 mainIn #connect
Rs0 f8 mainOut f10 tail #connect
Rs0 f10 head f7 mainIn #connect
