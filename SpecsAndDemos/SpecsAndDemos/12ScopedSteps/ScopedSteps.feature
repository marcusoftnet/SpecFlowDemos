Feature: Scoping step definitions
	As a developer
	I would like to be able to scope the step definitions (bindings) on method and class level
	So that I can implement test logic differently depending on the usage context

Attribute usage:
[Scope(Tag = "mytag", Feature = "feature title", Scenario = "scenario title")] 

Be careful! Coupling your step definitions to the features is an anti-pattern. Read more about it on the Cucumber Wiki

Scenario: A scenario with steps scoped on title
	Given there is a certain phrase
	When I might want to resuse it
		But have it mean different things on different places
	Then I should be able to

@theTagWeControllScopeWith
Scenario: A scenario scoped on with tag
	Given there is a certain phrase
	When I might want to resuse it
		But have it mean different things on different places
	Then I should be able to