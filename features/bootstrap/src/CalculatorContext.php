<?php
namespace Acceptance;

use Behat\Behat\Context\Context;
use Behat\Behat\Tester\Exception\PendingException;
use Calculator\Calculator;
use PHPUnit_Framework_Assert as PHPUnit;

/**
 * Defines application features from the specific context.
 */
class CalculatorContext implements Context
{
    private $calculator;

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
        $this->calculator = new Calculator();
    }


    /**
     * @When I press add
     */
    public function iPressAdd()
    {
        $this->calculator->doCalculation();
    }

    /**
     * @Then the result should be :result on the screen
     */
    public function theResultShouldBeOnTheScreen($result)
    {
        PHPUnit::assertEquals($result, $this->calculator->getTotal());
    }

    /**
     * @Given /^I have entered (\-?\d+) into the calculator$/
     */
    public function iHaveEnteredIntoTheCalculator1($arg1)
    {
        $this->calculator->addNumber($arg1);
    }
}