[Ivy]
[>Created: Sat Feb 18 16:50:58 ICT 2017]
15A3674FEF7FD874 3.19 #module
>Proto >Proto Collection #zClass
Es0 ExaminationListProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessEnd f1 '' #zField
Es0 @RichDialogProcessStart f3 '' #zField
Es0 @RichDialogEnd f4 '' #zField
Es0 @PushWFArc f5 '' #zField
Es0 @PushWFArc f18 '' #zField
Es0 @RichDialogMethodStart f2 '' #zField
Es0 @RichDialogProcessEnd f6 '' #zField
Es0 @GridStep f8 '' #zField
Es0 @PushWFArc f9 '' #zField
Es0 @PushWFArc f7 '' #zField
>Proto Es0 Es0 ExaminationListProcess #zField
Es0 f0 guid 15A3674FF12CDD4F #txt
Es0 f0 type com.axonactive.test.system.ExaminationList.ExaminationListData #txt
Es0 f0 method start() #txt
Es0 f0 disableUIEvents true #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Es0 f0 83 51 26 26 -16 15 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type com.axonactive.test.system.ExaminationList.ExaminationListData #txt
Es0 f1 339 51 26 26 0 12 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f3 guid 15A3674FF2125CB5 #txt
Es0 f3 type com.axonactive.test.system.ExaminationList.ExaminationListData #txt
Es0 f3 actionDecl 'com.axonactive.test.system.ExaminationList.ExaminationListData out;
' #txt
Es0 f3 actionTable 'out=in;
' #txt
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Es0 f3 83 147 26 26 -15 12 #rect
Es0 f3 @|RichDialogProcessStartIcon #fIcon
Es0 f4 type com.axonactive.test.system.ExaminationList.ExaminationListData #txt
Es0 f4 guid 15A3674FF22E4454 #txt
Es0 f4 211 147 26 26 0 12 #rect
Es0 f4 @|RichDialogEndIcon #fIcon
Es0 f5 expr out #txt
Es0 f5 109 160 211 160 #arcP
Es0 f18 expr out #txt
Es0 f18 109 64 339 64 #arcP
Es0 f2 guid 15A4A317D81D9241 #txt
Es0 f2 type com.axonactive.test.system.ExaminationList.ExaminationListData #txt
Es0 f2 method createExam() #txt
Es0 f2 disableUIEvents false #txt
Es0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f2 outParameterDecl '<> result;
' #txt
Es0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createExam()</name>
    </language>
</elementInfo>
' #txt
Es0 f2 99 275 26 26 -36 15 #rect
Es0 f2 @|RichDialogMethodStartIcon #fIcon
Es0 f6 type com.axonactive.test.system.ExaminationList.ExaminationListData #txt
Es0 f6 355 275 26 26 0 12 #rect
Es0 f6 @|RichDialogProcessEndIcon #fIcon
Es0 f8 actionDecl 'com.axonactive.test.system.ExaminationList.ExaminationListData out;
' #txt
Es0 f8 actionTable 'out=in;
' #txt
Es0 f8 actionCode 'import com.axonactive.test.system.util.Utils;
Utils.redirect("TeacherProcesses/ComposeEditQuestion/compose.ivp");' #txt
Es0 f8 type com.axonactive.test.system.ExaminationList.ExaminationListData #txt
Es0 f8 184 266 112 44 0 -8 #rect
Es0 f8 @|StepIcon #fIcon
Es0 f9 expr out #txt
Es0 f9 125 288 184 288 #arcP
Es0 f7 expr out #txt
Es0 f7 296 288 355 288 #arcP
>Proto Es0 .type com.axonactive.test.system.ExaminationList.ExaminationListData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f3 mainOut f5 tail #connect
Es0 f5 head f4 mainIn #connect
Es0 f0 mainOut f18 tail #connect
Es0 f18 head f1 mainIn #connect
Es0 f2 mainOut f9 tail #connect
Es0 f9 head f8 mainIn #connect
Es0 f8 mainOut f7 tail #connect
Es0 f7 head f6 mainIn #connect
