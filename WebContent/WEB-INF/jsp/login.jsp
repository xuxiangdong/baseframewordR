<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bootstrap In Practice - Landing Page Example</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Bootstrap -->
    <link href="bootstrap.css" rel="stylesheet">
    <!-- <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" />

    <link href="http://fonts.googleapis.com/css?family=Abel|Open+Sans:400,600" rel="stylesheet" /> -->
	
    <style>

        /* http://css-tricks.com/perfect-full-page-background-image/ */
        html {
            background: url(2.jpg) no-repeat center center fixed; 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        body {
            padding-top: 200px;
			padding-left:200px;position:fixed;
            font-size: 16px;
            font-family: "Open Sans",serif;
            background: transparent;
        }

        h1 {
            font-family: "Abel", Arial, sans-serif;
            font-weight: 400;
            font-size: 40px;
        }

        /* Override B3 .panel adding a subtly transparent background */
        .panel {
            background-color: rgba(95, 95, 95, 0.35);
			
			
			width:380px;
        }
		.btn,#password,#account {
			background-color: rgba(95, 95, 95, 0.15);
			
		}
        .margin-base-vertical {
            margin: 20px 0;
        }
		.title{margin-top:-30px;}
    </style>

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 panel panel-default">

                <h2 class="margin-base-vertical" style="margin-button:" ><span class="glyphicon glyphicon-user">&nbsp;</span></h2>
				<h2 class="margin-base-vertical text-center title"><strong>欢迎登录</strong></h2>

              

                

               <form class="form-horizontal" role="form" name="f" action="/SpringSecurityTest/j_spring_security_check" method="POST">
                    <div class="form-group " style="border:0px red solid">
								<label for="inputEmail3" class="col-sm-4 control-label">账号</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" name="j_username" value="" placeholder="请输入账号……">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-4 control-label">密码</label>
								<div class="col-sm-6">
									<input type="password" class="form-control" name="j_password" placeholder="请输入密码……">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-4 control-label"> 两周之内不必登陆</label>
								<div class="col-sm-6">
								 <input type="checkbox" class="form-control"  name="_spring_security_remember_me5" />
								</div>
							</div>
                   
                    <p class="text-center">
                        <button type="submit" class="btn btn-primary">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
                    </p>
                    </span>
                </form>

               

            </div><!-- //main content -->
        </div><!-- //row -->
    </div> <!-- //container -->

</body>
</html>