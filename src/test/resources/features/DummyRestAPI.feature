Feature: Dummy RestAPI Automation

  Background:
    * def createRecordBody = read("classpath://json//createRecord.json")
    * def updateRecordBody = read("classpath://json//updateRecord.json")

  Scenario: verify user can get all the employee details
    When url host
    And path "/api/v1/employees"
    And method get
    Then status 200

  Scenario: verify user can get single employee data
    When url host
    And path "/api/v1/employee/1"
    And method get
    Then status 200

  Scenario: verify user can create a new record
    When url host
    And path "/api/v1/create"
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request createRecordBody
    And method post
    Then status 200
    And print response

  Scenario: verify user can update the record
    When url host
    And path "/api/v1/update/24"
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request updateRecordBody
    And method put
    Then status 200
    And print response

  Scenario: verify user can delete the record
    When url host
    And path "api/v1/delete/24"
    And method delete
    Then status 200
    And print response
