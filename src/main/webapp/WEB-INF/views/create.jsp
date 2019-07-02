<div class="modal fade" id="create" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 style="color:red;"><span class="fa"></span> Create task</h4>
            </div>
            <div class="modal-body">
    <form:form method="POST" modelAttribute="taskForm" action="${contextPath}/create" class="form-signin">
        <spring:bind path="name">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="name" class="form-control" placeholder="Name"
                            autofocus="true"></form:input>
                <form:errors path="name"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="description">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="description" class="form-control" placeholder="Description"></form:input>
                <form:errors path="description"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="start">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="datetime-local" path="start" class="form-control"
                            placeholder="Start date" value="2019-01-01T00:00"></form:input>
                <form:errors path="start"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="due">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="datetime-local" path="due" class="form-control"
                            placeholder="Due date" value="2019-01-01T00:00"></form:input>
                <form:errors path="due"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>
        </div>
        <div class="modal-footer">
            <button class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="fa fa-remove"></span> Cancel</button>
        </div>
    </div>
</div>
</div>