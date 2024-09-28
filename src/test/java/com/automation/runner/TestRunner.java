package com.automation.runner;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

    @Karate.Test
    Karate runSuite()
    {
        return Karate.run("classpath:features")
                .outputCucumberJson(true)
                .reportDir("Cucumber-Karate");
    }
}
