<div class="modal fade" id="task" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div id="task-modal" class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 style="color:blue;"><span class="fa"></span>Task</h4>
            </div>
            <div class="modal-body">
                <form id="task-form" method="GET" class="form-signin">
                        <div class="form-group">
                            <input readonly id="task-name" type="text" path="name" class="form-control" placeholder="Name"
                                        autofocus="true">
                        </div>

                        <div class="form-group">
                            <input readonly id="task-description" type="text" path="description" class="form-control" placeholder="Description">
                        </div>

                        <div class="form-group">
                            <input readonly id="task-start" type="datetime-local" path="start" class="form-control"
                                        placeholder="Start date" value="2019-01-01T00:00">
                        </div>

                        <div>
                            <input readonly id="task-due" type="datetime-local" path="due" class="form-control"
                                        placeholder="Due date" value="2019-01-01T00:00">
                        </div>
                        <div>
                            <br/>
                            <button id="change-task" class="btn btn-lg btn-primary btn-block" type="submit"></button>
                            <a id="delete-task" class="btn btn-lg btn-primary btn-block">Delete task</a>
                        </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="fa fa-remove"></span> Cancel</button>
            </div>
        </div>
    </div>
</div>
