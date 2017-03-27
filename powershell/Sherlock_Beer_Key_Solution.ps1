#[decimal]$increment = 0.00000000000000001
for ($i = 0; $i -le 9999999; $i ++) {

    [decimal]$keg = 10
 
    [decimal]$float = "2.$i"
    [decimal]$jug = $float
    #[decimal]$jug = $i
    #$jug

    write-host "left with" (($keg - $jug) - ((($keg - $jug) / $keg) * $jug)) "gallon beer and" ($jug + ($jug - ($jug - ((($keg - $jug) / $keg) * $jug)))) "gallon water with a jug size of $jug"

    if (((($keg - $jug) - ((($keg - $jug) / $keg) * $jug))).ToString() -like "5.000000*") { #($jug + ($jug - ($jug - ((($keg - $jug) / $keg) * $jug))))) {

        write-host "start with $keg gallons"
        write-host "take away $jug gallon beer"
        write-host "left with" ($keg - $jug) "gallon beer"

        write-host "add $jug gallon water"

        write-host "left with" ($keg - $jug) "gallons beer and $jug gallon water"
        write-host "take away" ((($keg - $jug) / $keg) * $jug) "gallon beer and" ($jug - ((($keg - $jug) / $keg) * $jug)) "gallon water"
        write-host "left with" (($keg - $jug) - ((($keg - $jug) / $keg) * $jug)) "gallon beer and" ($jug - ($jug - ((($keg - $jug) / $keg) * $jug))) "gallon water"

        write-host "add $jug gallon water"

        write-host "left with" (($keg - $jug) - ((($keg - $jug) / $keg) * $jug)) "gallon beer and" ($jug + ($jug - ($jug - ((($keg - $jug) / $keg) * $jug)))) "gallon water"

        write-host "total keg is" ((($keg - $jug) - ((($keg - $jug) / $keg) * $jug)) + ($jug + ($jug - ($jug - ((($keg - $jug) / $keg) * $jug)))))
        
        
        write-host $jug -ForegroundColor green

        break

    }

    #should be equal measures now

}
