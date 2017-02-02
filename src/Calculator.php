<?php
namespace Calculator;

class Calculator
{
    private $numbers;
    private $total;

    function __construct()
    {
        $this->numbers = [];
        $this->total = 0;
    }

    public function addNumber($number)
    {
        array_push($this->numbers, $number);
    }

    public function doCalculation()
    {
        $this->total = 0;
        foreach($this->numbers as $number)
        {
            $this->total += $number;
        }
    }

    public function getTotal()
    {
        return $this->total;
    }
}