Feature: Assertion in karate


  Scenario: Json object
    * def employee =
    """
    {
    'name': 'Mustafa',
    'lastname': 'Elmas',
    'salary': '4250'
    }
    """
    * def employee_firstName = employee.name
    * match employee_firstName == 'Mustafa'
    * match employee.lastname != 'Elma'
    * match employee.salary == '4250'
  @wip
  Scenario: Fuzzy Matching
    * def employee =
    """
    {
    'name': 'Mustafa',
    'lastname': 'Elmas',
    'salary': 4250
    }
    """
    * match employee.lastname == '#string'
    * match employee.salary == '#number'
    * match employee.name == '#present'
    * match employee.father_name == '#notpresent'
