package com.amazonaws.labs.sampleapp.test;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.amazonaws.labs.sampleapp.IndexController;
import com.amazonaws.services.autoscaling.AmazonAutoScaling;
import com.amazonaws.services.codedeploy.AmazonCodeDeploy;
import com.amazonaws.services.ec2.AmazonEC2;

@RunWith(MockitoJUnitRunner.class)
public class IndexControllerTest {
	
	private IndexController target;

	@Mock
	private Model model;
	
	@Mock
    private AmazonCodeDeploy codeDeploy;

    @Mock
    private AmazonEC2 ec2;

    @Mock
    private AmazonAutoScaling autoScaling;

    @Before
    public void before() {
        this.target = new IndexController();
        
    }

    @Test
    public void getIndexTestResponse() {
    	assert(true);
    }
}
