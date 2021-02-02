<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Chatbot in PHP | LINHFISH</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
    <div class="wrapper">
        <div class="remove">X</div>
        <div class="title">
            Chatbot
        </div>
        <div class="form ">
            <div class="bot-inbox inbox">
                <div class="icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="msg-header">
                    <p>Hello there, how can I help you?</p>
                    <br>
                    <p>Please choose app</p> <br>

                    <p><a href="">Zalo</a></p><br>

                    <p><a href="">Messenger</a></p><br>

                </div>

            </div>
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Type something here.." required>
                <button id="send-btn">Send</button>
            </div>
        </div>
    </div>
    <div class="chat_icon">
        <img src="https://static.dribbble.com/users/673428/screenshots/6256511/chatbot-kiu.gif" alt="">
    </div>
    <script>
        $(document).ready(function() {
            $('.chat_icon').click(function() {
                $('.wrapper').fadeIn("slow");
                $('.chat_icon').hide();
            });
            $('.remove').click(function() {
                $('.wrapper').hide();
                $('.chat_icon').show();
            });
            $("#send-btn").on("click", function() {
                $value = $("#data").val();
                $msg = '<div class="user-inbox inbox"><div class="msg-header"><p>' + $value + '</p></div></div>';
                $(".form").append($msg);
                $("#data").val('');

                // start ajax code
                $.ajax({
                    url: 'message.php',
                    type: 'POST',
                    data: 'text=' + $value,
                    success: function(result) {
                        $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>' + result + '</p></div></div>';
                        $(".form").append($replay);
                        // when chat goes down the scroll bar automatically comes to the bottom
                        $(".form").scrollTop($(".form")[0].scrollHeight);
                    }
                });
            });

        });
    </script>

</body>

</html>