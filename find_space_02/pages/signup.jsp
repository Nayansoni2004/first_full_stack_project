<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>

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
            top: 50%;
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
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card border border-3 shadow-lg">
                    <div class="card-header text-center bg-dark text-white mx-auto w-50 rounded-bottom-pill">
                        <h4>Sign Up</h4>
                    </div>
                    <div class="card-body">
                        <form action="signup.do" method="post" id="signup_form">
                            <div class="form-group mb-3">
                                <input type="text" name="name" class="form-control inactive rounded-5" id="name"
                                    placeholder=" " required>
                                <label for="name">Full Name</label>
                            </div>
                            <div class="form-group mb-3">
                                <input type="email" name="email" class="form-control inactive rounded-5" id="email"
                                    placeholder=" " required>
                                <label for="email">Email</label>
                            </div>
                            <div class="form-group mb-3">
                                <input type="password" name="password" class="form-control inactive rounded-5"
                                    id="password" placeholder=" " required>
                                <label for="password">Password</label>
                            </div>
                            <div class="form-group mb-3">
                                <input list="city_list" autocomplete="off" type="text"
                                    class="form-control inactive rounded-5" name="city" id="city" required>
                                <label for="city">City</label>
                                <input type="hidden" name="city_id" id="city_id">
                                <datalist id="city_list">
                                    <c:forEach var="ct" items="${cities}">
                                        <option value="${ct.city}(${ct.state.state})" id="${ct.cityId}">
                                    </c:forEach>
                                </datalist>
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" name="contact" class="form-control inactive rounded-5" id="contact"
                                    placeholder=" " maxlength="10" required>
                                <label for="contact">Contact</label>
                            </div>
                            <!-- <input type="hidden" name="status_id" value="2"> -->
                            <div class="d-grid">
                                <button type="submit" class="btn btn-warning rounded-5 mx-auto w-50">Register</button>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        Already have an account? <a href="login.jsp">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            let inputs = document.querySelectorAll(".form-control, .form-select");

            inputs.forEach(input => {
                input.addEventListener("focus", function () {
                    this.classList.remove("inactive");
                });

                input.addEventListener("blur", function () {
                    if (!this.value.trim()) {
                        this.classList.add("inactive");
                    }
                });

                if (input.value.trim()) {
                    input.classList.remove("inactive");
                }
            });

            // Fix for city input (datalist)
            let cityInput = document.getElementById("city");
            let cityLabel = document.querySelector("label[for='city']");

            function updateCityLabel() {
                if (cityInput.value.trim()) {
                    cityLabel.style.top = "0";
                    cityLabel.style.fontSize = "12px";
                    cityLabel.style.color = "black";
                } else {
                    cityLabel.style.top = "50%";
                    cityLabel.style.transform = "translateY(-50%)";
                    cityLabel.style.fontSize = "16px";
                    cityLabel.style.color = "rgba(0, 0, 0, 0.5)";
                }
            }

            cityInput.addEventListener("input", updateCityLabel);
            cityInput.addEventListener("blur", updateCityLabel);

            // Initialize on page load
            updateCityLabel();
        });
    </script>

    <script src="static/js/signup.js"> </script>
</body>
</html>