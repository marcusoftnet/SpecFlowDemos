Feature: Scenario outline
	In order to not have to type the same scenario over and over
	As a SpecFlow evangelist
	I want to show how to use ScenarioOutline


# This is called Abstrakt Scenario in Swedish (!!!)
Scenario Outline: Add two positive numbers with many examples
	Given I have entered <number 1> into the calculator
	And I have entered <number 2> into the calculator
	When I press add
	Then the result should be <result> on the screen

Examples:
	| number 1 | number 2 | result |
	| 10       | 20       | 30     |
	| 20       | 20       | 40     |
	| 20       | 30       | 50     |
	| 100      | 20       | 120    |
	| 1000     | 20       | 1020   |
	