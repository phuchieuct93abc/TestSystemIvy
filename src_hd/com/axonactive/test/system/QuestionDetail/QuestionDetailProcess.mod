[Ivy]
[>Created: Thu Feb 16 17:29:26 ICT 2017]
15A3BF866F3BCA75 3.19 #module
>Proto >Proto Collection #zClass
Qs0 QuestionDetailProcess Big #zClass
Qs0 RD #cInfo
Qs0 #process
Qs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Qs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Qs0 @TextInP .resExport .resExport #zField
Qs0 @TextInP .type .type #zField
Qs0 @TextInP .processKind .processKind #zField
Qs0 @AnnotationInP-0n ai ai #zField
Qs0 @MessageFlowInP-0n messageIn messageIn #zField
Qs0 @MessageFlowOutP-0n messageOut messageOut #zField
Qs0 @TextInP .xml .xml #zField
Qs0 @TextInP .responsibility .responsibility #zField
Qs0 @RichDialogInitStart f0 '' #zField
Qs0 @RichDialogProcessEnd f1 '' #zField
Qs0 @PushWFArc f2 '' #zField
Qs0 @RichDialogProcessStart f3 '' #zField
Qs0 @RichDialogEnd f4 '' #zField
Qs0 @PushWFArc f5 '' #zField
Qs0 @RichDialogProcessEnd f7 '' #zField
Qs0 @RichDialogInitStart f6 '' #zField
Qs0 @GridStep f9 '' #zField
Qs0 @PushWFArc f10 '' #zField
Qs0 @PushWFArc f8 '' #zField
>Proto Qs0 Qs0 QuestionDetailProcess #zField
Qs0 f0 guid 15A3BF867056EB93 #txt
Qs0 f0 type com.axonactive.test.system.QuestionDetail.QuestionDetailData #txt
Qs0 f0 method start() #txt
Qs0 f0 disableUIEvents true #txt
Qs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Qs0 f0 outParameterDecl '<> result;
' #txt
Qs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f0 83 51 26 26 -16 15 #rect
Qs0 f0 @|RichDialogInitStartIcon #fIcon
Qs0 f1 type com.axonactive.test.system.QuestionDetail.QuestionDetailData #txt
Qs0 f1 211 51 26 26 0 12 #rect
Qs0 f1 @|RichDialogProcessEndIcon #fIcon
Qs0 f2 expr out #txt
Qs0 f2 109 64 211 64 #arcP
Qs0 f3 guid 15A3BF86713B197C #txt
Qs0 f3 type com.axonactive.test.system.QuestionDetail.QuestionDetailData #txt
Qs0 f3 actionDecl 'com.axonactive.test.system.QuestionDetail.QuestionDetailData out;
' #txt
Qs0 f3 actionTable 'out=in;
' #txt
Qs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Qs0 f3 83 147 26 26 -15 12 #rect
Qs0 f3 @|RichDialogProcessStartIcon #fIcon
Qs0 f4 type com.axonactive.test.system.QuestionDetail.QuestionDetailData #txt
Qs0 f4 guid 15A3BF86713D69DC #txt
Qs0 f4 211 147 26 26 0 12 #rect
Qs0 f4 @|RichDialogEndIcon #fIcon
Qs0 f5 expr out #txt
Qs0 f5 109 160 211 160 #arcP
Qs0 f7 type com.axonactive.test.system.QuestionDetail.QuestionDetailData #txt
Qs0 f7 339 243 26 26 0 12 #rect
Qs0 f7 @|RichDialogProcessEndIcon #fIcon
Qs0 f6 guid 15A3C05AEB3ADBC9 #txt
Qs0 f6 type com.axonactive.test.system.QuestionDetail.QuestionDetailData #txt
Qs0 f6 method startExamDetail(com.axonactive.test.system.model.ExaminationModel) #txt
Qs0 f6 disableUIEvents true #txt
Qs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonactive.test.system.model.ExaminationModel examination> param = methodEvent.getInputArguments();
' #txt
Qs0 f6 inParameterMapAction 'out.examination=param.examination;
' #txt
Qs0 f6 outParameterDecl '<com.axonactive.test.system.model.ExaminationModel exam> result;
' #txt
Qs0 f6 outParameterMapAction 'result.exam=in.examination;
' #txt
Qs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startExamDetail(ExaminationModel)</name>
        <nameStyle>33,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f6 83 243 26 26 -98 15 #rect
Qs0 f6 @|RichDialogInitStartIcon #fIcon
Qs0 f9 actionDecl 'com.axonactive.test.system.QuestionDetail.QuestionDetailData out;
' #txt
Qs0 f9 actionTable 'out=in;
' #txt
Qs0 f9 type com.axonactive.test.system.QuestionDetail.QuestionDetailData #txt
Qs0 f9 168 234 112 44 0 -8 #rect
Qs0 f9 @|StepIcon #fIcon
Qs0 f10 expr out #txt
Qs0 f10 109 256 168 256 #arcP
Qs0 f8 expr out #txt
Qs0 f8 280 256 339 256 #arcP
>Proto Qs0 .type com.axonactive.test.system.QuestionDetail.QuestionDetailData #txt
>Proto Qs0 .processKind HTML_DIALOG #txt
>Proto Qs0 -8 -8 16 16 16 26 #rect
>Proto Qs0 '' #fIcon
Qs0 f0 mainOut f2 tail #connect
Qs0 f2 head f1 mainIn #connect
Qs0 f3 mainOut f5 tail #connect
Qs0 f5 head f4 mainIn #connect
Qs0 f6 mainOut f10 tail #connect
Qs0 f10 head f9 mainIn #connect
Qs0 f9 mainOut f8 tail #connect
Qs0 f8 head f7 mainIn #connect
