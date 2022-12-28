<?php

class Gallery
{

    public function __construct()
    {
        $this->itemDB = new Database;
    }

    // _________________login function____________________
    public function gallery()
    {
        $this->itemDB->query("SELECT * FROM croisiere");
        $this->itemDB->execute();
        return $row = $this->itemDB->fetchall();
    }
}
