<?php
namespace src;



use Behat\MinkExtension\Context\RawMinkContext;


class HomeContext extends RawMinkContext
{

    /** @var array  */
    private $parameters;

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     *
     * @param $parameters
     */
    public function __construct(array $parameters)
    {
        date_default_timezone_set('Europe/Madrid');
        $this->parameters = $parameters;
    }

    /**
     * @Given /^I wait (\d+) seconds$/
     * @param $timeToWait
     */
    public function iWaitSeconds($timeToWait)
    {
        $session = $this->getSession();
        $session->wait(($timeToWait * 1000), false);
    }
}