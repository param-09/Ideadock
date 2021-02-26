function changeTheme() {
    var color = $("#color").val();
    var user_id = $("#user_id").val();
    var action = $("#actioncode").val();

    if (color == 0) {
        alert("please select color");
    } else {
        $("#myModal").removeClass("in");
        $.ajax({
            type: "POST",
            url: action,
            data: {
                color: color,
                user_id: user_id
            },
            success: function (msg) {
                if (msg == 1) {
                    toastr.success('Color will apply on Next Logins', "Choise Saved", {timeOut: 10000});
                }
                 if (msg == 2) {
                    toastr.error('Something went wrong  please try again later!!', "Error", {timeOut: 10000});
                }
                console.log(msg);
            },
            error: function (msg) {
                toastr.error('Error Occured', "Error", {timeOut: 10000})
                console.log();
            }
        });

    }
}