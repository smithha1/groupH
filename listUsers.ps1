$Search = New-object DirectoryServices.DirectorySearcher

$Search.Filter="(&(objectcategory=Person)(objectclass=User))"

$List = $Search.Findall()

foreach ($user in $List)
{
  if(!$user.properties.admincount)
  {
    write $user.properties.samaccountname
  } 
}