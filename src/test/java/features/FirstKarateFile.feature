Feature: Karate Beginning

  Scenario: Printing in Karate
    Given print "Hello Everybody"
    When print 'Hello Again'
    Then print 'Hello from Germany'

  Scenario: Continue printing
    * print "How are you?"
    * print 'Thanks, I am fine',"and you?"
    * print "5 arti 7 esittir : ",5+7, '- 4 carpi 6 esittir : ',4*6

  Scenario: Defining Variables
    * def name = 'Mustafa'
    * print 'Benim adim ',name
    * print 'Benim adim '+name
    * def age = 30
    * print "Ismim",name, "ve ben",age,"yasindayim"

  Scenario: Some Parameters
    * def student = {'name': 'Mustafa', 'batch': 'Batch 3'}
    * print student
    * print student.name
    * print student.batch


  Scenario: Json object
    * def employee =
    """
    {
    'name': 'Mustafa',
    'lastname': 'Elmas',
    'salary': '4250'
    }
    """
    * print employee


    Scenario: Json Array Objects
      * def employees =
      """
      [
      {
    'name': 'Peter',
    'lastname': 'Hermann',
    'salary': '5250'
    },
    {
    'name': 'Anna',
    'lastname': 'Nikolashvili',
    'salary': '6250'
    }
    ]
      """
      * print employees
      * print employees[0].name
      * print employees[1].name
