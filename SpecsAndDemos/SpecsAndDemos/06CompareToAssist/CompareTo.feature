Feature: Show the compare to feature
	In order to show the compare to features of SpecFlow Assist
	As a SpecFlow evanglist
	I want to show how the different versions of compareTo works

Scenario: CompareToInstance
	Given I have the following person
		| Field      | Value      |
		| Name       | Marcus     |
		| Style      | Butch      |
		| Birth date | 1972-10-09 |	
	Then CompareToInstance should match this guy
		| Field     | Value      |
		| Name      | Marcus     |
		| Style     | Butch      |
		| BirthDate | 1972-10-09 |
	And CompareToInstance should match this guy
		| Field     | Value      |
		| Name      | Marcus     |
		| BirthDate | 1972-10-09 |
	But CompareToInstance should not match this guy
		| Field     | Value      |
		| Name      | Anders     |
		| Style     | very cool  |
		| BirthDate | 1972-10-09 |

# CompareToSet will test only the properties that you define in the table. 
# CompareToSet does not test the order of the objects, only that one was found that matches
Scenario: CompareToSet 
	Given I have the following persons using assist 
		| Name   | Style | Birth date | Salary     |
		| Marcus | Cool  | 1972-10-09 | 100        |
		| Anders | Butch | 1977-01-01 | 100000     |
		| Jocke  | Soft  | 1974-04-04 | A lot, ok? |
	Then CompareToSet should match this
		| Name   | Style | BirthDate  |
		| Marcus | Cool  | 1972-10-09 |
		| Anders | Butch | 1977-01-01 |
		| Jocke  | Soft  | 1974-04-04 |	
	But CompareToSet should not match this
		| Name   | Style | BirthDate  |
		| Marcus | Cool  | 1972-10-09 |
		| Anders | Butch | 1977-01-01 |	