<?php
namespace src;

use Behat\MinkExtension\Context\MinkContext;


class HomeContext extends MinkContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     *
     * @param $parameters
     */

    private $base_url;
    public function __construct($params)
    {
        date_default_timezone_set('Europe/Madrid');
        $this->base_url = $params['base_url'];
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

    /**
     * @Given /^I am on superhomepage$/
     */
    public function iAmOnSuperhomepage()
    {
        $this->getSession()->visit($this->locatePath($this->base_url));
    }
}