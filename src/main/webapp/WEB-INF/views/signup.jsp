<div class="modal fade" id="signup" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 style="color:red;"><span class="fa fa-lock"></span> Create your account</h4>
            </div>
            <div class="modal-body">
                <form:form method="POST" modelAttribute="userForm" role="form" action="${contextPath}/signup" class="form-signin">
                    <spring:bind path="username">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label><span class="fa fa-user"></span> Username</label>
                            <form:input type="text" path="username" class="form-control" placeholder="Enter username"
                                        autofocus="true"></form:input>
                            <form:errors path="username"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="password">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label><span class="fa fa-eye-open"></span> Password</label>
                            <form:input type="password" path="password" class="form-control" placeholder="Enter password"></form:input>
                            <form:errors path="password"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="confirmPassword">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label><span class="fa fa-eye-open"></span> Confirm password</label>
                            <form:input type="password" path="confirmPassword" class="form-control"
                                        placeholder="Confirm your password"></form:input>
                            <form:errors path="confirmPassword"></form:errors>
                        </div>
                    </spring:bind>
                    <button type="submit" class="btn btn-default btn-success btn-block"><span class="fa fa-off"></span> Submit</button>
                </form:form>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="fa fa-remove"></span> Cancel</button>
            </div>
        </div>
    </div>
</div>