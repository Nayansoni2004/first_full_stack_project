<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: white;
        }

        .form-group {
            position: relative;
            margin-bottom: 1.5rem;
        }

        /* Default Inactive State */
        .form-control,
        .form-select {
            border: 2px solid rgba(0, 0, 0, 0.5);
            background-color: transparent;
            color: rgba(0, 0, 0, 0.5);
            font-size: 16px;
            height: 50px;
            transition: all 0.3s ease;
        }

        /* Active Field */
        .form-control:focus,
        .form-select:focus {
            background-color: white;
            color: black;
            border: 2px solid black;
            box-shadow: none;
        }

        /* Floating Label (Inactive by Default) */
        .form-group label {
            position: absolute;
            top: 35%;
            left: 15px;
            transform: translateY(-50%);
            background-color: white;
            padding: 0 5px;
            transition: all 0.3s ease;
            color: rgba(0, 0, 0, 0.5);
            font-size: 16px;
        }

        /* Floating Label when Active */
        /* Floating Label when Active */
        .form-control:focus+label,
        .form-control:not(:placeholder-shown)+label,
        .form-select:focus+label,
        .form-select:not(:has(option:checked[value=""]))+label,
        input[list]:valid+label {
            top: 0;
            font-size: 12px;
            color: black;
        }

        /* Ensure label is inside input when inactive */
        .form-group label {
            transition: all 0.3s ease-in-out;
        }

        /* Reset inactive input */
        .form-control.inactive {
            opacity: 0.5;
        }

        /* Inactive State for Inputs & Labels */
        .inactive {
            opacity: 0.5;
        }

        /* Active State */
        .form-control:focus,
        .form-select:focus {
            opacity: 1;
        }

        .text-danger {
            min-height: 20px;
            /* Ensures space is reserved even if no error is shown */
            font-size: 14px;
        }
    </style>
</head>

<body>
    <!-- login fail status report -->
    <input type="hidden" id="user_login_status" value="${param.login_status}">

    <!-- login form start-->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card border border-3 shadow-lg">
                    <div class="card-header text-center bg-dark text-white mx-auto w-50 rounded-bottom-pill">
                        <h4>Login</h4>
                    </div>
                    <div class="card-body">
                        <form action="login.do" method="post">
                            <div class="form-group mb-3 position-relative">
                                <input type="email" name="email" class="form-control rounded-5" id="email"
                                    placeholder=" " required>
                                <label for="email">Email</label>
                                <div id="email_error" class="text-danger text-center mt-1 invisible"
                                    style="min-height: 20px;">
                                    <!-- display error message -->
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <input type="password" name="password" class="form-control rounded-5" id="password"
                                    placeholder=" " required>
                                <label for="password">Password</label>
                                <div id="password_error" class="text-danger text-center mt-1 invisible"
                                    style="min-height: 20px;">

                                    <!-- display error message -->
                                </div>
                            </div>
                            <div class="d-grid">
                                <button type="submit" class="btn btn-warning rounded-5 mx-auto w-50">Login</button>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        Don't have an account? <a href="signup.jsp">Sign Up</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- login form end-->

    <!-- modal for account activation for status 2, 3 and 4 start-->
    <div class="modal fade" id="activation_modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="status_title">
                        <!-- modal title for login fail -->
                    </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div>
                        <p id="message"> 
                            <!-- message for login fail -->
                        </p>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="sendActivationLink">Send Activation Link</button>
                </div>
            </div>
        </div>
    </div>
    <!-- modal for account activation for status 2, 3 and 4 end-->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"> </script>
    <script src="static/js/login.js"> </script>

</body>
</html>