<?php

namespace src;

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;

class VideoStoreContext implements Context
{

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {

    }

    /**
     * @Given /^I insert the name of customer "([^"]*)"$/
     * @param string $arg1
     */
    public function iInsertTheNameOfCustomer($arg1)
    {

    }

    /**
     * @When /^I rental a (children|regular|new) movie with title "([^"]*)" during (\d+) days$/
     * @param string $arg1
     * @param int $arg2
     */
    public function iRentalAChildrenMovieWithTitleDuringDays($arg1, $arg2)
    {

    }

    /**
     * @Then /^I should see the total amount is "([^"]*)" euros$/
     * @param float $arg1
     */
    public function iShouldSeeTheTotalAmountIsEuros($arg1)
    {

    }

    /**
     * @When /^I request report of rented movies$/
     */
    public function iRequestReportOfRentedMovies()
    {

    }

    /**
     * @Then /^I shoud see the next report$/
     * @param PyStringNode $string
     */
    public function iShoudSeeTheNextReport(PyStringNode $string)
    {

    }

}