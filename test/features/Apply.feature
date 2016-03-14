Feature: Apply
    As a Guest
    I apply to a position

  Scenario: Try apply to any job postion
      Given I open the site "/"
        And I click on the "Careers"
       Then I expect the url to contain "careers"
       When I click at 1st "CareersOffice"
        And I click at 1st "DepartmentJob"
        And I click at 1st "JobTitle"
       Then I expect the url to contain "careers"
       When I click on the "SubmitButton"
       Then I expect the url to contain "careers"
        And I expect that element "FirstNameErrorMessage" is not empty
        And I expect that element "LastNameErrorMessage" is not empty
        And I expect that element "EmailErrorMessage" is not empty
        And I expect that element "PhoneErrorMessage" is not empty
