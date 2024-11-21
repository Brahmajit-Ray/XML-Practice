declare context item := document{"pets.xml"};

for $pet in /pets/pet
return $pet/name
