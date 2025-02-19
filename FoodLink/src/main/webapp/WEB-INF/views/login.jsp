<jsp:include page="mainhead.jsp" />
<%-- Import Navbar  --%>
<jsp:include page="header.jsp" />
<%-- Import Navbar  --%>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-6">
            <div class="card shadow-lg border-0 rounded-4 p-4">
                <h3 class="text-center mb-4">Login</h3>

                <% String error = request.getParameter("error"); %>
                <% if (error != null) { %>
                    <div class="alert alert-danger"><%= error %></div>
                <% } %>
				<p style="color: red">${mes}</p>
                <form action="LoginServlet" method="post">
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" name="username" id="username" class="form-control" required>
                    </div>	
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" id="password" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </form>

                <div class="mt-3 text-center">
                    <a href="register" class="btn btn-success w-100">Register</a>
                    <a href="forgotpassword.jsp" class="btn btn-warning w-100 mt-2">Forgot Password?</a>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="mainheadclose.jsp" />
<%-- Import Navbar  --%>

<!-- Add your custom styles here -->
<style>
    @media (max-width: 768px) {
        /* Full width for form fields on smaller screens */
        .card {
            padding: 2rem;
        }
        
        .btn {
            font-size: 1rem; /* Adjust button size */
            margin-bottom: 0.75rem;
        }

        .container {
            padding-left: 15px;
            padding-right: 15px;
        }

        /* Make form inputs and buttons full width */
        .form-control {
            width: 100%;
        }

        .btn-warning, .btn-success {
            width: 100%;
        }

        /* Make card smaller on very small screens */
        .col-12 {
            width: 100%;
        }
    }
    
    @media (max-width: 576px) {
        .card {
            margin-top: 1rem; /* Reduce card margin on small screens */
        }
        
        /* Make the card more responsive on extremely small devices */
        .col-12 {
            padding-left: 10px;
            padding-right: 10px;
        }

        /* Style the form labels */
        .form-label {
            font-size: 0.9rem;
        }
    }
</style>

