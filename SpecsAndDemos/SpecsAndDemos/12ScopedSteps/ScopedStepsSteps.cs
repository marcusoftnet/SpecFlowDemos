using Should.Fluent;
using TechTalk.SpecFlow;

namespace Specs._12ScopedSteps
{
    [Binding]
    public class StepsWithScopeOnScenarioTitle
    {
        private const string SCOPED_ON_SCENARIOTITLE = "Scoped on Scenario title";
        private const string SCENARIO_TITLE = "A scenario with steps scoped on title";

        [Given(@"there is a certain phrase"), Scope(Scenario = SCENARIO_TITLE)]
        public void step1()
        {
            ScenarioContext.Current.Set(SCOPED_ON_SCENARIOTITLE);
        }

        [When(@"I might want to resuse it"), Scope(Scenario = SCENARIO_TITLE)]
        public void step2()
        {
            ScenarioContext.Current.Get<string>().Should().Equal(SCOPED_ON_SCENARIOTITLE);
        }

        [When(@"have it mean different things on different places"), Scope(Scenario = SCENARIO_TITLE)]
        public void step3()
        {
            ScenarioContext.Current.Get<string>().Should().Equal(SCOPED_ON_SCENARIOTITLE);
        }

        [Then(@"I should be able to"), Scope(Scenario = SCENARIO_TITLE)]
        public void step4()
        {
            ScenarioContext.Current.Get<string>().Should().Equal(SCOPED_ON_SCENARIOTITLE);
        }
    }
}
