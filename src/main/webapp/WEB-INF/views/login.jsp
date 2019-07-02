<div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 style="color:red;"><span class="fa fa-lock"></span> Login</h4>
            </div>
            <div class="modal-body">
                <form role="form" method="POST" action="${contextPath}/login" class="form-signin">
                    <div class="form-group ${error != null ? 'has-error' : ''}">
                        <label for="usrname"><span class="fa fa-user"></span> Username</label>
                        <input name="username" type="text" class="form-control" id="usrname" autofocus="true" placeholder="Enter username">
                    </div>
                    <div class="form-group">
                        <label for="psw"><span class="fa fa-eye-open"></span> Password</label>
                        <input name="password" type="password" class="form-control" id="psw" placeholder="Enter password">
                    </div>
                    <div>
                        <span>${error}</span>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </div>
                    <button type="submit" class="btn btn-default btn-success btn-block"><span class="fa fa-off"></span> Login</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="fa fa-remove"></span> Cancel</button>
                <p>Not a member? <a data-toggle="modal" href="#signup">Sign Up</a></p>
            </div>
        </div>
    </div>
</div>