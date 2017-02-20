[Ivy]
[>Created: Sun Feb 19 20:39:19 ICT 2017]
15A593477AE18DE1 3.19 #module
>Proto >Proto Collection #zClass
Rs0 ResultDetailProcess Big #zClass
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
Rs0 @RichDialogEnd f4 '' #zField
Rs0 @RichDialogMethodStart f6 '' #zField
Rs0 @PushWFArc f7 '' #zField
Rs0 @RichDialogProcessStart f3 '' #zField
Rs0 @PushWFArc f5 '' #zField
>Proto Rs0 Rs0 ResultDetailProcess #zField
Rs0 f0 guid 15A5681C25DEBBCD #txt
Rs0 f0 type com.axonactive.test.system.ResultDetail.ResultDetailData #txt
Rs0 f0 method start(com.axonactive.test.system.model.ResultModel) #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonactive.test.system.model.ResultModel result> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 inParameterMapAction 'out.result=param.result;
' #txt
Rs0 f0 outParameterDecl '<com.axonactive.test.system.model.ResultModel result> result;
' #txt
Rs0 f0 outParameterMapAction 'result.result=in.result;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ResultModel)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -50 15 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f1 type com.axonactive.test.system.ResultDetail.ResultDetailData #txt
Rs0 f1 211 51 26 26 0 12 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f2 expr out #txt
Rs0 f2 109 64 211 64 #arcP
Rs0 f4 type com.axonactive.test.system.ResultDetail.ResultDetailData #txt
Rs0 f4 guid 15A5681C270D2A0D #txt
Rs0 f4 211 147 26 26 0 12 #rect
Rs0 f4 @|RichDialogEndIcon #fIcon
Rs0 f6 guid 15A5696691A24F79 #txt
Rs0 f6 type com.axonactive.test.system.ResultDetail.ResultDetailData #txt
Rs0 f6 method close() #txt
Rs0 f6 disableUIEvents false #txt
Rs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f6 outParameterDecl '<> result;
' #txt
Rs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
Rs0 f6 99 211 26 26 -19 15 #rect
Rs0 f6 @|RichDialogMethodStartIcon #fIcon
Rs0 f7 expr out #txt
Rs0 f7 123 217 212 166 #arcP
Rs0 f3 guid 15A5698F8C74025C #txt
Rs0 f3 type com.axonactive.test.system.ResultDetail.ResultDetailData #txt
Rs0 f3 actionDecl 'com.axonactive.test.system.ResultDetail.ResultDetailData out;
' #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f3 83 147 26 26 -15 15 #rect
Rs0 f3 @|RichDialogProcessStartIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 109 160 211 160 #arcP
>Proto Rs0 .type com.axonactive.test.system.ResultDetail.ResultDetailData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f6 mainOut f7 tail #connect
Rs0 f7 head f4 mainIn #connect
Rs0 f3 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
