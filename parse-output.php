<?php

    $output = file_get_contents('packer.log');

    $amis = array();

    if (preg_match_all('/((ap|eu|sa|us)-(central|east|northeast|southeast|west)-([0-9])):\s+(ami-([0-9a-f]+))/', $output, $match))
    {
        foreach ($match[0] as $index => $m)
        {
            $ami = new stdClass();
            $ami->region = $match[1][$index];
            $ami->id = $match[5][$index];

            $amis[] = $ami;
        }
    }

    file_put_contents("html/amis.json", json_encode($amis));