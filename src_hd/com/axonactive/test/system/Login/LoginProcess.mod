[Ivy]
[>Created: Mon Feb 20 10:45:44 ICT 2017]
15A3540CF8AF1A53 3.19 #module
>Proto >Proto Collection #zClass
Ls0 LoginProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @RichDialogProcessStart f3 '' #zField
Ls0 @RichDialogEnd f4 '' #zField
Ls0 @PushWFArc f5 '' #zField
Ls0 @RichDialogProcessStart f6 '' #zField
Ls0 @RichDialogProcessEnd f7 '' #zField
Ls0 @GridStep f9 '' #zField
Ls0 @PushWFArc f10 '' #zField
Ls0 @Alternative f11 '' #zField
Ls0 @PushWFArc f12 '' #zField
Ls0 @RichDialogEnd f27 '' #zField
Ls0 @PushWFArc f14 '' #zField
Ls0 @PushWFArc f15 '' #zField
Ls0 @GridStep f8 '' #zField
Ls0 @Alternative f16 '' #zField
Ls0 @PushWFArc f17 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @RichDialogEnd f18 '' #zField
Ls0 @PushWFArc f19 '' #zField
Ls0 @GridStep f20 '' #zField
Ls0 @PushWFArc f21 '' #zField
Ls0 @PushWFArc f13 '' #zField
>Proto Ls0 Ls0 LoginProcess #zField
Ls0 f0 guid 15A3540CF9F1BAEC #txt
Ls0 f0 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 outParameterDecl '<java.lang.Boolean isLoginSuccess> result;
' #txt
Ls0 f0 outParameterMapAction 'result.isLoginSuccess=in.isLoginSuccess;
' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(LoginData)</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -44 15 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f1 659 51 26 26 0 12 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f3 guid 15A3540CFAC20F1D #txt
Ls0 f3 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f3 actionDecl 'com.axonactive.test.system.Login.LoginData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -15 12 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f4 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f4 guid 15A3540CFACA5D61 #txt
Ls0 f4 211 147 26 26 0 12 #rect
Ls0 f4 @|RichDialogEndIcon #fIcon
Ls0 f5 expr out #txt
Ls0 f5 109 160 211 160 #arcP
Ls0 f6 guid 15A3556BEFBEE485 #txt
Ls0 f6 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f6 actionDecl 'com.axonactive.test.system.Login.LoginData out;
' #txt
Ls0 f6 actionTable 'out=in;
' #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f6 83 227 26 26 -13 15 #rect
Ls0 f6 @|RichDialogProcessStartIcon #fIcon
Ls0 f7 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f7 563 227 26 26 0 12 #rect
Ls0 f7 @|RichDialogProcessEndIcon #fIcon
Ls0 f9 actionDecl 'com.axonactive.test.system.Login.LoginData out;
' #txt
Ls0 f9 actionTable 'out=in;
' #txt
Ls0 f9 actionCode 'String username = in.loginData.user.username;
String password = in.loginData.user.password;
ivy.log.debug("AAAAAAAAAAAAAA"+in.loginData.user.getUsername());
in.isLoginSuccess = ivy.session.loginSessionUser(username,password);' #txt
Ls0 f9 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <desc>Validate login user</desc>
    </language>
</elementInfo>
' #txt
Ls0 f9 168 218 112 44 0 -8 #rect
Ls0 f9 @|StepIcon #fIcon
Ls0 f10 expr out #txt
Ls0 f10 109 240 168 240 #arcP
Ls0 f11 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f11 336 224 32 32 0 16 #rect
Ls0 f11 @|AlternativeIcon #fIcon
Ls0 f12 expr out #txt
Ls0 f12 280 240 336 240 #arcP
Ls0 f27 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f27 guid 15A3C35AB02E1F08 #txt
Ls0 f27 555 283 26 26 0 12 #rect
Ls0 f27 @|RichDialogEndIcon #fIcon
Ls0 f14 expr in #txt
Ls0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login Failed</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f14 368 240 563 240 #arcP
Ls0 f15 expr in #txt
Ls0 f15 outCond in.isLoginSuccess #txt
Ls0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login success</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f15 360 248 555 296 #arcP
Ls0 f15 1 408 296 #addKink
Ls0 f15 1 0.26153561016918037 1 0 #arcLabel
Ls0 f8 actionDecl 'com.axonactive.test.system.Login.LoginData out;
' #txt
Ls0 f8 actionTable 'out=in;
' #txt
Ls0 f8 actionCode 'import com.axonactive.test.system.service.UserService;

		in.isLogin= UserService.isValidUser();
	' #txt
Ls0 f8 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check user login or not</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f8 344 42 144 44 -63 -8 #rect
Ls0 f8 @|StepIcon #fIcon
Ls0 f16 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f16 560 48 32 32 0 16 #rect
Ls0 f16 @|AlternativeIcon #fIcon
Ls0 f17 expr out #txt
Ls0 f17 488 64 560 64 #arcP
Ls0 f2 expr in #txt
Ls0 f2 outCond !in.isLogin #txt
Ls0 f2 592 64 659 64 #arcP
Ls0 f18 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f18 guid 15A3FD8069A876F8 #txt
Ls0 f18 659 115 26 26 0 12 #rect
Ls0 f18 @|RichDialogEndIcon #fIcon
Ls0 f19 expr in #txt
Ls0 f19 581 75 659 128 #arcP
Ls0 f19 1 608 128 #addKink
Ls0 f19 0 0.9320363473197659 0 0 #arcLabel
Ls0 f20 actionDecl 'com.axonactive.test.system.Login.LoginData out;
' #txt
Ls0 f20 actionTable 'out=in;
' #txt
Ls0 f20 actionCode 'import com.axonactive.test.system.User;
import com.axonactive.test.system.LoginData;
in.loginData = new LoginData();
in.loginData.user = new User();' #txt
Ls0 f20 type com.axonactive.test.system.Login.LoginData #txt
Ls0 f20 168 42 112 44 0 -8 #rect
Ls0 f20 @|StepIcon #fIcon
Ls0 f21 expr out #txt
Ls0 f21 109 64 168 64 #arcP
Ls0 f13 expr out #txt
Ls0 f13 280 64 344 64 #arcP
>Proto Ls0 .type com.axonactive.test.system.Login.LoginData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f3 mainOut f5 tail #connect
Ls0 f5 head f4 mainIn #connect
Ls0 f6 mainOut f10 tail #connect
Ls0 f10 head f9 mainIn #connect
Ls0 f9 mainOut f12 tail #connect
Ls0 f12 head f11 in #connect
Ls0 f14 head f7 mainIn #connect
Ls0 f11 out f15 tail #connect
Ls0 f15 head f27 mainIn #connect
Ls0 f11 out f14 tail #connect
Ls0 f8 mainOut f17 tail #connect
Ls0 f17 head f16 in #connect
Ls0 f16 out f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f16 out f19 tail #connect
Ls0 f19 head f18 mainIn #connect
Ls0 f0 mainOut f21 tail #connect
Ls0 f21 head f20 mainIn #connect
Ls0 f20 mainOut f13 tail #connect
Ls0 f13 head f8 mainIn #connect
