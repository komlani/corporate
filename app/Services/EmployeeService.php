<?php

namespace App\Services;

use App\Repositories\EmployeeRepository;

class EmployeeService
{
    protected $employee;

    public function __construct(EmployeeRepository $employee)
    {
        $this->employee = $employee;
    }

    public function pageData($id)
    {
        return $id
        ?  $this->employee->withOfficial_Work_HumanLinksLinkTypeIconfindById($id)
        :  $this->employee->withOfficial_Work_HumanLinksLinkTypeIcon();
    }
}
