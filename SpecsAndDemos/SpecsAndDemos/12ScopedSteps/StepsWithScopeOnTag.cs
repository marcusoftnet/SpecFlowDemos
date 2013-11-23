using Should.Fluent;
using TechTalk.SpecFlow;

namespace Specs._12ScopedSteps
{
    // You could also put it on the class level and don't have to repeate yourself
    //[Binding, Scope(Tag = "theTagWeControllScopeWith")]
    [Binding]
    public class StepsWithScopeOnTag
    {
        private const string SCOPED_ON_TAG = "Scoped on Tag";
        private const string SCENARIO_TAG = "theTagWeControllScopeWith";

        [Given(@"there is a certain phrase"), Scope(Tag = SCENARIO_TAG)]
        public void step5()
        {
            ScenarioContext.Current.Set(SCOPED_ON_TAG);
        }

        [When(@"I might want to resuse it"), Scope(Tag = SCENARIO_TAG)]
        public void step6()
        {
            ScenarioContext.Current.Get<string>().Should().Equal(SCOPED_ON_TAG);
        }

        [When(@"have it mean different things on different places"), Scope(Tag = SCENARIO_TAG)]
        public void step7()
        {
            ScenarioContext.Current.Get<string>().Should().Equal(SCOPED_ON_TAG);
        }

        [Then(@"I should be able to"), Scope(Tag = SCENARIO_TAG)]
        public void step8()
        {
            ScenarioContext.Current.Get<string>().Should().Equal(SCOPED_ON_TAG);
        }
        
    }
}