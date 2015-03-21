<?php

    $output = file_get_contents('packer.log');

    $amis = array();

    if (preg_match_all('/((ap|eu|sa|us)-(central|east|northeast|southeast|west)-([0-9])):\s+(ami-([0-9a-f]+))/', $output, $matches))
    {
        $ami = new stdClass();
        $ami->region = $match[1];
        $ami->id = $match[5];

        $amis[] = $ami;
    }

    file_put_contents("html/amis.json", json_encode($amis));