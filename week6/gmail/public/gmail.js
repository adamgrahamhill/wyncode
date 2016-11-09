$(document).ready(function(){
    // console.log('we are loaded!');
    $('#send_button').click(function(){
        console.log('we have detected a click!');
        if($('#email').val().toLowerCase().includes("attach") && $('.attachment input').val() === ''){
            confirm("You did not attach anything - you sure you want to send?");
        }
    });
});
