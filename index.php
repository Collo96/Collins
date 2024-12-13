<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Theelueb Hardware</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Styles -->
    <style>
        html,
        body {
            background-color: #333333;
            color: #ffffff;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .links>a {
            color: #ffffff;
            padding: 10px 25px;
            font-size: 18px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
            border: 2px solid #ffffff;
            border-radius: 5px;
            margin: 0 10px;
            transition: background-color 0.3s ease;
        }

        .links>a:hover {
            background-color: #ffffff;
            color: #333333;
        }
    </style>
</head>

<body>
    <div class="flex-center position-ref full-height">
        <div class="content">
            <div class="title m-b-md">
                THEELUEB HARDWARE POS
            </div>

            <div class="links">
                <a href="pos/admin/">Admin Log In</a>
                <a href="pos/cashier/">Cashier Log In</a>
                <a href="pos/customer">Customer Log In</a>
            </div>
        </div>
    </div>
</body>

</html>
