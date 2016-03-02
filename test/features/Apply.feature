Feature: Apply
    As a Guest
    I apply to a position

#Background:
#Given I set up my set information "{key: value, key: value}"
#And I am loged in.

  Scenario: Any avaliable job postion in BH
      Given I open the site "/"
        And I click on the "Careers"
       Then I expect the url to contain "careers"
       When I click at 1st "CareersOffice"
        And I click at 2nd "DepartmentJob"
        And I click at 1st "JobTitle"
       Then I expect the url to contain "careers/sao-paulo/executivo-de-vendas"
