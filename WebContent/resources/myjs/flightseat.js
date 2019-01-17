$(document).ready(function(){

    var cars = ["#1C", "#2C", "#3C","#4C"];
    var count= 0
    var seats=[];
    var noofseats=$("#seatcount").text();

    var filtered = cars.filter(function(value, index, arr){

        return value !="#1C";
    
    })

    cars=filtered;


   
    $("#confirm").click(function(){
      
        // $.each($("input[name='fseat']:checked"), function(){            
        //     seats.push($(this).val());
        // });

    	document.getElementById('seats').value =seats;
    
        alert("Selected seats are: " + seats);
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



