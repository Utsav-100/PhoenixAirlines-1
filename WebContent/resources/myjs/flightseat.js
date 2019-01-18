$(document).ready(function(){

    var cars = ["1C", "2C", "3C","4C"];
    var count= 0
    var seats=[];
    var noofseats=$("#seatcount").text();
    
    
    for(i=0;i<cars.length;i++)
    	{

    $("#"+cars[i]).prop( "disabled", true );
  
    	}
    
     var seatlist=document.getElementById('mylabel').textContent;
     var i=1;
	 var j=2;
	 while(i<seatlist.length-1)
		 {
		 
		 
		 $("#"+seatlist[i]+seatlist[i+1]).prop("disabled", true );
		 
		  i=i+4;
		  j=j+4;
		 
		 }
	  
   
    $("#confirm").click(function(){
      
        // $.each($("input[name='fseat']:checked"), function(){            
        //     seats.push($(this).val());
        // });

    	document.getElementById('seats').value =seats;
    	
    	
    	
    	//alert(seatlist[0]);
    	//alert(seatlist[1]);
    	//alert(seatlist[2]);
    	//alert(seatlist[3]);
    	//alert(seatlist[4]);
    	//alert(seatlist[5]);
    	//alert(seatlist[6]);
    	//alert(seatlist[7]);
    	//alert(seatlist[8]);
    	//alert(seatlist[9]);
    	//alert(seatlist[10]);
    	//alert(seatlist.length);
    	 
    	
    	// $("#"+seatlist[1]+seatlist[2]).prop("disabled", true );
    	// $("#"+seatlist[4]+seatlist[5]).prop("disabled", true );
    	// $("#"+seatlist[7]+seatlist[8]).prop("disabled", true );
    	
    		
    	/*
    	
    	 for(i=0;i<seatlist.length;i++)
     	{

         $("#"+seatlist[i]).prop( "disabled", true );
   
     	}
    	
    	*/
    	
    	
    
     //   alert("Selected seats are: " + seats);
    });

    $("input[name='fseat']").change(function(){

        if($(this).is(':checked')) {
            // Checkbox is checked..
            //alert("Checkbox is checked..");
            
            if (count==noofseats)
            {
               // alert("Checkbox is checked..");
              //  seats.shift();
              //  $('#myCheck').prop('checked', false);
              $("#"+seats.shift()).prop("checked",false);
              seats.push($(this).val());


            }
            else
            {
                count+=1;
                seats.push($(this).val());
                
            }
        } 
        else {
            // Checkbox is not checked..
             count-=1;
            // alert($(this).val());
            // seats.length=count
            // for( var i = 0; i < seats.length ; i++){ 

            //     if (seats[i] === $(this).val()) {
                 
            //         delete seats[i]; 
                
                 
            //     }
                
            //  }

            //  alert("deleted"); 

            var st=$(this).val();

            var filtered = seats.filter(function(value, index, arr){

                return value !=st;
            
            })
        
            seats=filtered;
            
            

        }
     //  alert(seats.length);
    });
  

    
   


     
    
});



