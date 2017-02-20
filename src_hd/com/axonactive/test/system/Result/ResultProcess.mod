[Ivy]
[>Created: Tue Feb 14 19:50:24 ICT 2017]
15A36E50F8CD740D 3.19 #module
>Proto >Proto Collection #zClass
Rs0 ResultProcess Big #zClass
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
Rs0 @RichDialogMethodStart f14 '' #zField
Rs0 @RichDialogProcessEnd f15 '' #zField
Rs0 @PushWFArc f16 '' #zField
Rs0 @GridStep f8 '' #zField
Rs0 @PushWFArc f9 '' #zField
Rs0 @RichDialogEnd f7 '' #zField
Rs0 @PushWFArc f10 '' #zField
>Proto Rs0 Rs0 ResultProcess #zField
Rs0 f0 guid 15A36E50F9C309A5 #txt
Rs0 f0 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f0 method start() #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Result)</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -34 15 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f1 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f1 211 51 26 26 0 12 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f2 expr out #txt
Rs0 f2 109 64 211 64 #arcP
Rs0 f3 guid 15A36E50FA8C71CF #txt
Rs0 f3 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f3 actionDecl 'com.axonactive.test.system.Result.ResultData out;
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
Rs0 f4 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f4 guid 15A36E50FA884C43 #txt
Rs0 f4 211 147 26 26 0 12 #rect
Rs0 f4 @|RichDialogEndIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 109 160 211 160 #arcP
Rs0 f6 guid 15A3AD38E0DB32AC #txt
Rs0 f6 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f6 actionDecl 'com.axonactive.test.system.Result.ResultData out;
' #txt
Rs0 f6 actionTable 'out=in;
' #txt
Rs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f6 83 243 26 26 -21 15 #rect
Rs0 f6 @|RichDialogProcessStartIcon #fIcon
Rs0 f14 guid 15A3B5AF2CFA490C #txt
Rs0 f14 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f14 method setResult(com.axonactive.test.system.model.ResultModel,com.axonactive.test.system.model.ExaminationModel) #txt
Rs0 f14 disableUIEvents false #txt
Rs0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonactive.test.system.model.ResultModel result,com.axonactive.test.system.model.ExaminationModel examination> param = methodEvent.getInputArguments();
' #txt
Rs0 f14 inParameterMapAction 'out.examination=param.examination;
out.result=param.result;
' #txt
Rs0 f14 outParameterDecl '<> result;
' #txt
Rs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setResult(ResultModel)</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f14 107 379 26 26 -65 15 #rect
Rs0 f14 @|RichDialogMethodStartIcon #fIcon
Rs0 f15 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f15 267 379 26 26 0 12 #rect
Rs0 f15 @|RichDialogProcessEndIcon #fIcon
Rs0 f16 expr out #txt
Rs0 f16 133 392 267 392 #arcP
Rs0 f8 actionDecl 'com.axonactive.test.system.Result.ResultData out;
' #txt
Rs0 f8 actionTable 'out=in;
' #txt
Rs0 f8 actionCode 'import javax.faces.context.FacesContext;

String url = ivy.html.startref("ValidateResult/start.ivp");
url = String.format("%s?resultId=%s&examinationId=%s", url, in.result.id,in.examination.id);

FacesContext.getCurrentInstance().getExternalContext().redirect(url);' #txt
Rs0 f8 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Validate result</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f8 168 234 112 44 -39 -8 #rect
Rs0 f8 @|StepIcon #fIcon
Rs0 f9 expr out #txt
Rs0 f9 109 256 168 256 #arcP
Rs0 f7 type com.axonactive.test.system.Result.ResultData #txt
Rs0 f7 guid 15A3CAC78606BDCE #txt
Rs0 f7 339 243 26 26 0 12 #rect
Rs0 f7 @|RichDialogEndIcon #fIcon
Rs0 f10 expr out #txt
Rs0 f10 280 256 339 256 #arcP
>Proto Rs0 .type com.axonactive.test.system.Result.ResultData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f3 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
Rs0 f14 mainOut f16 tail #connect
Rs0 f16 head f15 mainIn #connect
Rs0 f6 mainOut f9 tail #connect
Rs0 f9 head f8 mainIn #connect
Rs0 f8 mainOut f10 tail #connect
Rs0 f10 head f7 mainIn #connect
