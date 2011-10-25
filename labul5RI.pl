use warnings;

open (FILE, "situatie-1.txt") or die $!;

$dim=0;
while ($linie = <FILE>) 
{ 
	@sir=split(" ",$linie);
	$size1 = @sir;
	if ( $size1 >= 3) 
	{ 
		@sir11 = split (">",$linie);
		#print "$sir11[1] \n"; 

		@sir12 = split ("<",$sir11[1]);
		#print "$sir12[0] \n";

		@sir13 = split (" ",$sir12[0]);
		$size2 = @sir13;

		print $size2;
		if ( $size2 == 4) 
		{
			print  uc " $sir13[0] | ";
			@sir21 = split ("-",$sir13[1]);
			$size32 = @sir21;
			
			if ($size32 == 2 )
			{
			#print "$sir21[1]";
			print  uc (substr($sir21[0],0,1)) .substr($sir21[0],1,20) ."-";
			print  uc (substr($sir21[1],0,1)) .substr($sir21[1],1,20) ." ";
			print   "$sir13[-1]\n";	
			}
			else 
			{
			print  uc (substr($sir13[1],0,1)) .substr($sir13[1],1,20) ." ";
			print   "$sir13[-1]\n";	
			}	
		}
		 if ($size2 == 5)
		{
			
		print  uc " $sir13[0] | ";
		print  uc (substr($sir13[1],0,1)) .substr($sir13[1],1,20)." " ;
		print  uc (substr($sir13[2],0,1)) .substr($sir13[2],1,20). " ";
		print   "$sir13[-1]\n";
		}
		 if ($size2 == 6) # [0 -> n-1]
		{
		print  uc " $sir13[0] | ";
		print  uc (substr($sir13[1],0,1)) .substr($sir13[1],1,20)." " ;
		print  uc (substr($sir13[2],0,1)) .substr($sir13[2],1,20). " ";
		print  uc (substr($sir13[3],0,1)) .substr($sir13[3],1,20). " ";
		print   "$sir13[-1]\n";
		}
		if ($size2 == 7)
		{
		print  uc " $sir13[0] | ";
		print  uc (substr($sir13[1],0,1)) .substr($sir13[1],1,20)." " ;
		print  uc (substr($sir13[2],0,1)) .substr($sir13[2],1,20). " ";
		print  uc (substr($sir13[3],0,1)) .substr($sir13[3],1,20). " ";
		print  uc (substr($sir13[4],0,1)) .substr($sir13[4],1,20). " ";
		print   "$sir13[-1]\n";
		}
		if ($size2 == 8)
		{
		print  uc " $sir13[0] | ";
		print  uc (substr($sir13[1],0,1)) .substr($sir13[1],1,20)." " ;
		print  uc (substr($sir13[2],0,1)) .substr($sir13[2],1,20). " ";
		print  uc (substr($sir13[3],0,1)) .substr($sir13[3],1,20). " ";
		print  uc (substr($sir13[4],0,1)) .substr($sir13[4],1,20). " ";
		print  uc (substr($sir13[5],0,1)) .substr($sir13[5],1,20). " ";
		print   "$sir13[-1]\n";
		}
		
	} 
	$dim = $dim + $size1;
}

#print  "Astazi s-au citit: $dim linii.\n";

close(FILE);
@sir=split("/","alfa/asas/sss");
$size1 = @sir;
#print $sir[1]; 

