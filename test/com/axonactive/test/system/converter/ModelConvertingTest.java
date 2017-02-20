package com.axonactive.test.system.converter;

import java.util.Arrays;

import org.hamcrest.CoreMatchers;
import org.junit.Assert;
import org.junit.Test;

import com.axonactive.test.system.entity.ChoiceAnswerEntity;
import com.axonactive.test.system.entity.QuestionEntity;
import com.axonactive.test.system.model.QuestionModel;

public class ModelConvertingTest {

	@Test
	public void should_not_produce_duplicate_answer() throws Exception {
		QuestionEntity qe = new QuestionEntity();
	//	qe.setChoicesAnswer(Arrays.asList(answerEntity("abc"), answerEntity("xyz")));
		
		QuestionModel qm = QuestionConverter.toModel(qe);
	
		Assert.assertThat(qm.getAnswerModel().size(), CoreMatchers.is(2));
	
	}
	
	private static ChoiceAnswerEntity answerEntity(String content) {
		ChoiceAnswerEntity a = new ChoiceAnswerEntity();
		a.setContent(content);
		return a;
	}
	
}
