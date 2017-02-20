[Ivy]
[>Created: Mon Feb 20 11:33:30 ICT 2017]
15A3BA9F2655CF82 3.19 #module
>Proto >Proto Collection #zClass
ss0 ComposeEditTestProcess Big #zClass
ss0 RD #cInfo
ss0 #process
ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
ss0 @TextInP .resExport .resExport #zField
ss0 @TextInP .type .type #zField
ss0 @TextInP .processKind .processKind #zField
ss0 @AnnotationInP-0n ai ai #zField
ss0 @MessageFlowInP-0n messageIn messageIn #zField
ss0 @MessageFlowOutP-0n messageOut messageOut #zField
ss0 @TextInP .xml .xml #zField
ss0 @TextInP .responsibility .responsibility #zField
ss0 @RichDialogInitStart f0 '' #zField
ss0 @RichDialogProcessEnd f1 '' #zField
ss0 @RichDialogProcessStart f6 '' #zField
ss0 @GridStep f9 '' #zField
ss0 @RichDialogProcessEnd f8 '' #zField
ss0 @Alternative f13 '' #zField
ss0 @GridStep f16 '' #zField
ss0 @PushWFArc f17 '' #zField
ss0 @GridStep f19 '' #zField
ss0 @RichDialogProcessStart f21 '' #zField
ss0 @GridStep f22 '' #zField
ss0 @PushWFArc f7 '' #zField
ss0 @PushWFArc f10 '' #zField
ss0 @RichDialogProcessStart f29 '' #zField
ss0 @GridStep f30 '' #zField
ss0 @PushWFArc f31 '' #zField
ss0 @RichDialogProcessEnd f32 '' #zField
ss0 @PushWFArc f33 '' #zField
ss0 @Alternative f15 '' #zField
ss0 @PushWFArc f20 '' #zField
ss0 @PushWFArc f11 '' #zField
ss0 @GridStep f26 '' #zField
ss0 @PushWFArc f27 '' #zField
ss0 @PushWFArc f28 '' #zField
ss0 @Alternative f34 '' #zField
ss0 @PushWFArc f35 '' #zField
ss0 @PushWFArc f24 '' #zField
ss0 @GridStep f36 '' #zField
ss0 @PushWFArc f38 '' #zField
ss0 @PushWFArc f39 '' #zField
ss0 @GridStep f40 '' #zField
ss0 @PushWFArc f41 '' #zField
ss0 @PushWFArc f37 '' #zField
ss0 @RichDialogProcessEnd f25 '' #zField
ss0 @PushWFArc f23 '' #zField
ss0 @RichDialogProcessStart f3 '' #zField
ss0 @PushWFArc f4 '' #zField
ss0 @RichDialogProcessEnd f45 '' #zField
ss0 @GridStep f42 '' #zField
ss0 @RichDialogMethodStart f5 '' #zField
ss0 @PushWFArc f44 '' #zField
ss0 @PushWFArc f43 '' #zField
ss0 @RichDialogProcessStart f46 '' #zField
ss0 @GridStep f47 '' #zField
ss0 @RichDialogProcessEnd f48 '' #zField
ss0 @PushWFArc f49 '' #zField
ss0 @PushWFArc f50 '' #zField
ss0 @RichDialogProcessStart f51 '' #zField
ss0 @GridStep f52 '' #zField
ss0 @RichDialogProcessEnd f53 '' #zField
ss0 @PushWFArc f54 '' #zField
ss0 @PushWFArc f55 '' #zField
ss0 @GridStep f56 '' #zField
ss0 @PushWFArc f57 '' #zField
ss0 @PushWFArc f14 '' #zField
ss0 @PushWFArc f2 '' #zField
>Proto ss0 ss0 ComposeEditTestProcess #zField
ss0 f0 guid 15A3BA9F2786F4BE #txt
ss0 f0 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f0 method start(java.lang.Integer) #txt
ss0 f0 disableUIEvents true #txt
ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer examId> param = methodEvent.getInputArguments();
' #txt
ss0 f0 inParameterMapAction 'out.examId=param.examId;
' #txt
ss0 f0 outParameterDecl '<java.lang.Integer examId> result;
' #txt
ss0 f0 outParameterMapAction 'result.examId=in.examId;
' #txt
ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Integer):Integer</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f0 19 51 26 26 -55 15 #rect
ss0 f0 @|RichDialogInitStartIcon #fIcon
ss0 f1 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f1 707 51 26 26 0 12 #rect
ss0 f1 @|RichDialogProcessEndIcon #fIcon
ss0 f6 guid 15A3C1FF0A9B2BAC #txt
ss0 f6 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f6 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f6 actionTable 'out=in;
' #txt
ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveQuestion</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f6 35 539 26 26 -38 15 #rect
ss0 f6 @|RichDialogProcessStartIcon #fIcon
ss0 f9 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f9 actionTable 'out=in;
' #txt
ss0 f9 actionCode 'import com.axonactive.test.system.util.QuestionUtil;
import com.axonactive.test.system.model.QuestionModel;

if (in.selectedQuestion.id != 0){
in.editedQuestionIds.add(in.selectedQuestion.id);
} 


' #txt
ss0 f9 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save Temp edited Question</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f9 328 530 160 44 -76 -8 #rect
ss0 f9 @|StepIcon #fIcon
ss0 f8 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f8 699 539 26 26 0 12 #rect
ss0 f8 @|RichDialogProcessEndIcon #fIcon
ss0 f13 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create Or Edit?</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f13 272 48 32 32 -41 -34 #rect
ss0 f13 @|AlternativeIcon #fIcon
ss0 f16 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f16 actionTable 'out=in;
' #txt
ss0 f16 actionCode 'import com.axonactive.test.system.model.ExaminationModel;
import com.axonactive.test.system.util.QuestionUtil;
QuestionUtil.convertExamWithSortedSetQuestion(in.examinationModel);
in.examinationModel.duration = 60;' #txt
ss0 f16 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f16 488 138 112 44 -18 -8 #rect
ss0 f16 @|StepIcon #fIcon
ss0 f17 expr in #txt
ss0 f17 outCond 'in.examId == 0' #txt
ss0 f17 288 80 488 160 #arcP
ss0 f17 1 288 160 #addKink
ss0 f17 1 0.1556203489120305 0 0 #arcLabel
ss0 f19 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f19 actionTable 'out=in;
' #txt
ss0 f19 actionCode 'import com.axonactive.test.system.util.QuestionUtil;
import com.axonactive.test.system.service.ExaminationService;
import com.axonactive.test.system.sampleData.ExaminatinSample;

//ExaminatinSample.createSampleExamination();
in.examinationModel = ExaminationService.findById(in.examId);
QuestionUtil.convertExamWithSortedSetQuestion(in.examinationModel);' #txt
ss0 f19 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Find Exam</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f19 480 42 112 44 -29 -8 #rect
ss0 f19 @|StepIcon #fIcon
ss0 f21 guid 15A41C3343E44873 #txt
ss0 f21 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f21 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f21 actionTable 'out=in;
' #txt
ss0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f21 35 339 26 26 -13 15 #rect
ss0 f21 @|RichDialogProcessStartIcon #fIcon
ss0 f22 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f22 actionTable 'out=in;
' #txt
ss0 f22 actionCode 'import com.axonactive.test.system.DAO.ExaminationDAO;
ExaminationDAO.updateExam(in.examId,in.examinationModel,in.editedQuestionIds);' #txt
ss0 f22 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save modidied Exam to DB</name>
        <nameStyle>24,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f22 480 330 160 44 -74 -8 #rect
ss0 f22 @|StepIcon #fIcon
ss0 f7 expr out #txt
ss0 f7 488 552 699 552 #arcP
ss0 f10 expr in #txt
ss0 f10 304 64 480 64 #arcP
ss0 f29 guid 15A4592F094C1E7D #txt
ss0 f29 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f29 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f29 actionTable 'out=in;
' #txt
ss0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>btnAddClick</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f29 35 803 26 26 -32 15 #rect
ss0 f29 @|RichDialogProcessStartIcon #fIcon
ss0 f30 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f30 actionTable 'out=in;
' #txt
ss0 f30 actionCode 'import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.model.ChoiceAnswerModel;

import java.util.Arrays;
in.isEditQuestion = false;
in.selectedQuestion = new QuestionModel();
in.selectedQuestion.choiceAnswer = Arrays.asList(new ChoiceAnswerModel(),new ChoiceAnswerModel(),new ChoiceAnswerModel(),new ChoiceAnswerModel());
in.selectedQuestion.questionType = 1;
' #txt
ss0 f30 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init a question</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f30 152 794 112 44 -38 -8 #rect
ss0 f30 @|StepIcon #fIcon
ss0 f31 expr out #txt
ss0 f31 61 816 152 816 #arcP
ss0 f32 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f32 371 803 26 26 0 12 #rect
ss0 f32 @|RichDialogProcessEndIcon #fIcon
ss0 f33 expr out #txt
ss0 f33 264 816 371 816 #arcP
ss0 f15 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f15 180 536 24 32 0 16 #rect
ss0 f15 @|AlternativeIcon #fIcon
ss0 f20 expr out #txt
ss0 f20 61 552 180 552 #arcP
ss0 f11 expr in #txt
ss0 f11 outCond in.isEditQuestion #txt
ss0 f11 204 552 328 552 #arcP
ss0 f26 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f26 actionTable 'out=in;
' #txt
ss0 f26 actionCode 'import java.util.ArrayList;
import com.axonactive.test.system.model.QuestionModel;
import com.axonactive.test.system.util.QuestionUtil;
import com.axonactive.test.system.model.ChoiceAnswerModel;

in.examinationModel.question.add(in.selectedQuestion);
QuestionUtil.setTrueForCorrectAnswer(in.selectedQuestion.choiceAnswer,in.selectedQuestion.rightAnswer);

' #txt
ss0 f26 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save new question</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f26 352 610 112 44 -52 -8 #rect
ss0 f26 @|StepIcon #fIcon
ss0 f27 expr in #txt
ss0 f27 192 568 352 632 #arcP
ss0 f27 1 192 632 #addKink
ss0 f27 1 0.264770326065675 0 0 #arcLabel
ss0 f28 expr out #txt
ss0 f28 464 632 712 565 #arcP
ss0 f28 1 712 632 #addKink
ss0 f28 0 0.6574388952044729 0 0 #arcLabel
ss0 f34 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f34 232 336 32 32 0 16 #rect
ss0 f34 @|AlternativeIcon #fIcon
ss0 f35 expr out #txt
ss0 f35 61 352 232 352 #arcP
ss0 f24 expr in #txt
ss0 f24 outCond 'in.examId != 0' #txt
ss0 f24 264 352 480 352 #arcP
ss0 f36 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f36 actionTable 'out=in;
' #txt
ss0 f36 actionCode 'import java.util.Calendar;
import com.axonactive.test.system.converter.ExaminationConverter;
import com.axonactive.test.system.entity.ExaminationEntity;
in.examinationModel.setTime(Calendar.getInstance().getTime());
ExaminationEntity examEntity = ExaminationConverter.toEntity(in.examinationModel);
ivy.persistence.TestPersistence.persist(examEntity);' #txt
ss0 f36 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save new exam to DB</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f36 496 242 128 44 -59 -8 #rect
ss0 f36 @|StepIcon #fIcon
ss0 f38 expr in #txt
ss0 f38 248 336 496 264 #arcP
ss0 f38 1 248 264 #addKink
ss0 f38 1 0.16598989244575102 0 0 #arcLabel
ss0 f39 expr out #txt
ss0 f39 600 160 720 77 #arcP
ss0 f39 1 720 160 #addKink
ss0 f39 0 0.8295269144624011 0 0 #arcLabel
ss0 f40 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f40 actionTable 'out=in;
' #txt
ss0 f40 actionCode 'import com.axonactive.test.system.util.Utils;
Utils.redirect("TeacherProcesses/ViewAllExamination/start.ivp");' #txt
ss0 f40 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Redirect to main view</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f40 752 330 128 44 -58 -8 #rect
ss0 f40 @|StepIcon #fIcon
ss0 f41 expr out #txt
ss0 f41 624 264 816 330 #arcP
ss0 f41 1 816 264 #addKink
ss0 f41 0 0.8367356974425879 0 0 #arcLabel
ss0 f37 expr out #txt
ss0 f37 640 352 752 352 #arcP
ss0 f25 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f25 1003 339 26 26 0 12 #rect
ss0 f25 @|RichDialogProcessEndIcon #fIcon
ss0 f23 expr out #txt
ss0 f23 880 352 1003 352 #arcP
ss0 f3 guid 15A4A5349855CE4D #txt
ss0 f3 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f3 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f3 actionTable 'out=in;
' #txt
ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
ss0 f3 39 453 26 26 -15 12 #rect
ss0 f3 @|RichDialogProcessStartIcon #fIcon
ss0 f4 expr out #txt
ss0 f4 65 466 816 374 #arcP
ss0 f4 1 816 466 #addKink
ss0 f4 0 0.21384428399469393 0 0 #arcLabel
ss0 f45 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f45 355 1059 26 26 0 12 #rect
ss0 f45 @|RichDialogProcessEndIcon #fIcon
ss0 f42 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f42 actionTable 'out=in;
' #txt
ss0 f42 actionCode 'import java.util.Set;
import java.util.ArrayList;

import com.axonactive.test.system.model.QuestionModel;
if (in.selectedQuestion.id !=0){
in.editedQuestionIds.add(in.selectedQuestion.id);
}
in.examinationModel.question.remove(in.selectedQuestion);
' #txt
ss0 f42 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f42 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Delete temp Question</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f42 152 1050 128 44 -60 -8 #rect
ss0 f42 @|StepIcon #fIcon
ss0 f5 guid 15A4F59BE972A7A5 #txt
ss0 f5 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f5 method deleteQuestion(com.axonactive.test.system.model.QuestionModel) #txt
ss0 f5 disableUIEvents false #txt
ss0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonactive.test.system.model.QuestionModel recordSet> param = methodEvent.getInputArguments();
' #txt
ss0 f5 inParameterMapAction 'out.selectedQuestion=param.recordSet;
' #txt
ss0 f5 outParameterDecl '<> result;
' #txt
ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteQuestion</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f5 44 1060 24 24 -42 15 #rect
ss0 f5 @|RichDialogMethodStartIcon #fIcon
ss0 f44 expr out #txt
ss0 f44 68 1072 152 1072 #arcP
ss0 f43 expr out #txt
ss0 f43 280 1072 355 1072 #arcP
ss0 f46 guid 15A4FD0B5CC847A1 #txt
ss0 f46 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f46 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f46 actionTable 'out=in;
' #txt
ss0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>btnEditClick</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f46 35 883 26 26 -32 15 #rect
ss0 f46 @|RichDialogProcessStartIcon #fIcon
ss0 f47 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f47 actionTable 'out=in;
' #txt
ss0 f47 actionCode 'import com.axonactive.test.system.util.QuestionUtil;
in.isEditQuestion = true;
' #txt
ss0 f47 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>isEdit = true</name>
        <nameStyle>13,7
</nameStyle>
        <desc>Just save new question which not in databe</desc>
    </language>
</elementInfo>
' #txt
ss0 f47 168 874 112 44 -32 -8 #rect
ss0 f47 @|StepIcon #fIcon
ss0 f48 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f48 379 883 26 26 0 12 #rect
ss0 f48 @|RichDialogProcessEndIcon #fIcon
ss0 f49 expr out #txt
ss0 f49 61 896 168 896 #arcP
ss0 f50 expr out #txt
ss0 f50 280 896 379 896 #arcP
ss0 f51 guid 15A5006959EA2995 #txt
ss0 f51 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f51 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f51 actionTable 'out=in;
' #txt
ss0 f51 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>closeDialog</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f51 43 979 26 26 -33 15 #rect
ss0 f51 @|RichDialogProcessStartIcon #fIcon
ss0 f52 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f52 actionTable 'out=in;
' #txt
ss0 f52 actionCode '
in.isEditQuestion = false;' #txt
ss0 f52 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f52 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Close Dialog</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f52 144 970 112 44 -36 -8 #rect
ss0 f52 @|StepIcon #fIcon
ss0 f53 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f53 339 979 26 26 0 12 #rect
ss0 f53 @|RichDialogProcessEndIcon #fIcon
ss0 f54 expr out #txt
ss0 f54 69 992 144 992 #arcP
ss0 f55 expr out #txt
ss0 f55 256 992 339 992 #arcP
ss0 f56 actionDecl 'com.axonactive.test.system.ComposeEditTest.ComposeEditTestData out;
' #txt
ss0 f56 actionTable 'out=in;
' #txt
ss0 f56 actionCode 'import java.util.HashSet;
import java.util.HashMap;
in.editedQuestionIds = new HashSet();' #txt
ss0 f56 type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
ss0 f56 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f56 104 42 112 44 -8 -8 #rect
ss0 f56 @|StepIcon #fIcon
ss0 f57 expr out #txt
ss0 f57 45 64 104 64 #arcP
ss0 f14 expr out #txt
ss0 f14 216 64 272 64 #arcP
ss0 f2 expr out #txt
ss0 f2 592 64 707 64 #arcP
>Proto ss0 .type com.axonactive.test.system.ComposeEditTest.ComposeEditTestData #txt
>Proto ss0 .processKind HTML_DIALOG #txt
>Proto ss0 -8 -8 16 16 16 26 #rect
>Proto ss0 '' #fIcon
ss0 f13 out f17 tail #connect
ss0 f17 head f16 mainIn #connect
ss0 f9 mainOut f7 tail #connect
ss0 f7 head f8 mainIn #connect
ss0 f13 out f10 tail #connect
ss0 f10 head f19 mainIn #connect
ss0 f29 mainOut f31 tail #connect
ss0 f31 head f30 mainIn #connect
ss0 f30 mainOut f33 tail #connect
ss0 f33 head f32 mainIn #connect
ss0 f6 mainOut f20 tail #connect
ss0 f20 head f15 in #connect
ss0 f15 out f11 tail #connect
ss0 f11 head f9 mainIn #connect
ss0 f15 out f27 tail #connect
ss0 f27 head f26 mainIn #connect
ss0 f26 mainOut f28 tail #connect
ss0 f28 head f8 mainIn #connect
ss0 f21 mainOut f35 tail #connect
ss0 f35 head f34 in #connect
ss0 f34 out f24 tail #connect
ss0 f24 head f22 mainIn #connect
ss0 f34 out f38 tail #connect
ss0 f38 head f36 mainIn #connect
ss0 f16 mainOut f39 tail #connect
ss0 f39 head f1 mainIn #connect
ss0 f36 mainOut f41 tail #connect
ss0 f41 head f40 mainIn #connect
ss0 f22 mainOut f37 tail #connect
ss0 f37 head f40 mainIn #connect
ss0 f40 mainOut f23 tail #connect
ss0 f23 head f25 mainIn #connect
ss0 f3 mainOut f4 tail #connect
ss0 f4 head f40 mainIn #connect
ss0 f5 mainOut f44 tail #connect
ss0 f44 head f42 mainIn #connect
ss0 f42 mainOut f43 tail #connect
ss0 f43 head f45 mainIn #connect
ss0 f46 mainOut f49 tail #connect
ss0 f49 head f47 mainIn #connect
ss0 f47 mainOut f50 tail #connect
ss0 f50 head f48 mainIn #connect
ss0 f51 mainOut f54 tail #connect
ss0 f54 head f52 mainIn #connect
ss0 f52 mainOut f55 tail #connect
ss0 f55 head f53 mainIn #connect
ss0 f0 mainOut f57 tail #connect
ss0 f57 head f56 mainIn #connect
ss0 f56 mainOut f14 tail #connect
ss0 f14 head f13 in #connect
ss0 f19 mainOut f2 tail #connect
ss0 f2 head f1 mainIn #connect
