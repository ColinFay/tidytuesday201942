<div class = "col-sm-12">

<style>
summary:focus { 
  outline: none 
}
</style>

<h2>Exploring the "Big mtcars" dataset</h2>

<p>This application allows you to build your own dataviz for #TidyTuesday, 019-10-15. 

<p><em>Tidy Tuesday</em> is a weekly social data project in R. Find more about this project on <a href ="https://www.rfordatasci.com/">rfordatasci.com</a> and on the <a href ="https://github.com/rfordatascience/tidytuesday">GitHub repo</a>. 

<p>This week dataset is a larger version of the well-known <code>mtcars</code> dataset. With this application, you'll be able to build your own <code>{ggplot2}</code> graph out of this dataset. </p>

<p>On each plot, once it's rendered, you'll be able to see the code used by clicking on the image. You can use it as a starting point for more customisation.</p>

<p>For a deeper understanding of the dataset, feel free to unfold the data dictionnary on the bottom of this page. </p>


<p>You can also jump to:</p>

<ul>

<li><a href = "javascript:void(0)" onclick = "$('a[data-value =\'geom_point'\').click()')">geom_point generator</a></li>
<li> <a href = "javascript:void(0)" onclick = "$("a[data-value ='geom_hist'").click()')">geom_hist generator</a></li>
<li> <a href = "javascript:void(0)" onclick = "$("a[data-value ='geom_boxplot'").click()')">geom_boxplot generator</a></li>
<li> <a href = "javascript:void(0)" onclick = "$("a[data-value ='geom_bar'").click()')">geom_bar generator</a></li>

</ul>

<script>

</script>


<details>
<summary>Click to display variable dictionnary.</summary>

<li> atvtype - type of alternative fuel or advanced technology vehicle</li>
<li> barrels08 - annual petroleum consumption in barrels for fuelType1 (1)</li>
<li> barrelsA08 - annual petroleum consumption in barrels for fuelType2 (1)</li>
<li> charge120 - time to charge an electric vehicle in hours at 120 V</li>
<li> charge240 - time to charge an electric vehicle in hours at 240 V</li>
<li> city08 - city MPG for fuelType1 (2), (11)</li>
<li> city08U - unrounded city MPG for fuelType1 (2), (3)</li>
<li> cityA08 - city MPG for fuelType2 (2)</li>
<li> cityA08U - unrounded city MPG for fuelType2 (2), (3)</li>
<li> cityCD - city gasoline consumption (gallons/100 miles) in charge depleting mode (4)</li>
<li> cityE - city electricity consumption in kw-hrs/100 miles</li>
<li> cityUF - EPA city utility factor (share of electricity) for PHEV</li>
<li> co2 - tailpipe CO2 in grams/mile for fuelType1 (5)</li>
<li> co2A - tailpipe CO2 in grams/mile for fuelType2 (5)</li>
<li> co2TailpipeAGpm - tailpipe CO2 in grams/mile for fuelType2 (5)</li>
<li> co2TailpipeGpm- tailpipe CO2 in grams/mile for fuelType1 (5)</li>
<li> comb08 - combined MPG for fuelType1 (2), (11)</li>
<li> comb08U - unrounded combined MPG for fuelType1 (2), (3)</li>
<li> combA08 - combined MPG for fuelType2 (2)</li>
<li> combA08U - unrounded combined MPG for fuelType2 (2), (3)</li>
<li> combE - combined electricity consumption in kw-hrs/100 miles</li>
<li> combinedCD - combined gasoline consumption (gallons/100 miles) in charge depleting mode (4)</li>
<li> combinedUF - EPA combined utility factor (share of electricity) for PHEV</li>
<li> cylinders - engine cylinders</li>
<li> displ - engine displacement in liters</li>
<li> drive - drive axle type</li>
<li> emissionsList</li>
<li> engId - EPA model type index</li>
<li> eng_dscr - engine descriptor; see http://www.fueleconomy.gov/feg/findacarhelp.shtml#engine</li>
<li> evMotor - electric motor (kw-hrs)</li>
<li> feScore - EPA Fuel Economy Score (-1 = Not available)</li>
<li> fuelCost08 - annual fuel cost for fuelType1 ($) (7)</li>
<li> fuelCostA08 - annual fuel cost for fuelType2 ($) (7)</li>
<li> fuelType - fuel type with fuelType1 and fuelType2 (if applicable)</li>
<li> fuelType1 - fuel type 1. For single fuel vehicles, this will be the only fuel. For dual fuel vehicles, this will be + the conventional fuel.</li>
<li> fuelType2 - fuel type 2. For dual fuel vehicles, this will be the alternative fuel (e.g. E85, Electricity, CNG, + LPG). For single fuel vehicles, this field is not used</li>
<li> ghgScore - EPA GHG score (-1 = Not available)</li>
<li> ghgScoreA - EPA GHG score for dual fuel vehicle running on the alternative fuel (-1 = Not available)</li>
<li> guzzler- if G or T, this vehicle is subject to the gas guzzler tax</li>
<li> highway08 - highway MPG for fuelType1 (2), (11)</li>
<li> highway08U - unrounded highway MPG for fuelType1 (2), (3)</li>
<li> highwayA08 - highway MPG for fuelType2 (2)</li>
<li> highwayA08U - unrounded highway MPG for fuelType2 (2),(3)</li>
<li> highwayCD - highway gasoline consumption (gallons/100miles) in charge depleting mode (4)</li>
<li> highwayE - highway electricity consumption in kw-hrs/100 miles</li>
<li> highwayUF - EPA highway utility factor (share of electricity) for PHEV</li>
<li> hlv - hatchback luggage volume (cubic feet) (8)</li>
<li> hpv - hatchback passenger volume (cubic feet) (8)</li>
<li> id - vehicle record id</li>
<li> lv2 - 2 door luggage volume (cubic feet) (8)</li>
<li> lv4 - 4 door luggage volume (cubic feet) (8)</li>
<li> make - manufacturer (division)</li>
<li> mfrCode - 3-character manufacturer code</li>
<li> model - model name (carline)</li>
<li> mpgData - has My MPG data; see yourMpgVehicle and yourMpgDriverVehicle</li>
<li> phevBlended - if true, this vehicle operates on a blend of gasoline and electricity in charge depleting mode</li>
<li> pv2 - 2-door passenger volume (cubic feet) (8)</li>
<li> pv4 - 4-door passenger volume (cubic feet) (8)</li>
<li> rangeA - EPA range for fuelType2</li>
<li> rangeCityA - EPA city range for fuelType2</li>
<li> rangeHwyA - EPA highway range for fuelType2</li>
<li> trans_dscr - transmission descriptor; see http://www.fueleconomy.gov/feg/findacarhelp.shtml#trany</li>
<li> trany - transmission</li>
<li> UCity - unadjusted city MPG for fuelType1; see the description of the EPA test procedures</li>
<li> UCityA - unadjusted city MPG for fuelType2; see the description of the EPA test procedures</li>
<li> UHighway - unadjusted highway MPG for fuelType1; see the description of the EPA test procedures</li>
<li> UHighwayA - unadjusted highway MPG for fuelType2; see the description of the EPA test procedures</li>
<li> VClass - EPA vehicle size class</li>
<li> year - model year</li>
<li> youSaveSpend - you save/spend over 5 years compared to an average car ($). Savings are positive; a greater amount + spent yields a negative number. For dual fuel vehicles, this is the cost savings for gasoline</li>
<li> sCharger - if S, this vehicle is supercharged</li>
<li> tCharger - if T, this vehicle is turbocharged</li>
<li> c240Dscr - electric vehicle charger description</li>
<li> charge240b - time to charge an electric vehicle in hours at 240 V using the alternate charger</li>
<li> c240bDscr - electric vehicle alternate charger description</li>
<li> createdOn - date the vehicle record was created (ISO 8601 format)</li>
<li> modifiedOn - date the vehicle record was last modified (ISO 8601 format)</li>
<li> startStop - vehicle has start-stop technology (Y, N, or blank for older vehicles)</li>
<li> phevCity - EPA composite gasoline-electricity city MPGe for plug-in hybrid vehicles</li>
<li> phevHwy - EPA composite gasoline-electricity highway MPGe for plug-in hybrid vehicles</li>
<li> phevComb - EPA composite gasoline-electricity combined city-highway MPGe for plug-in hybrid vehicles</li>

</details>

</div>
