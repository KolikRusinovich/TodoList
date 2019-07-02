<c:if test="${pageContext.request.userPrincipal.name != null}">
<table class="table table-dark">
    <thead class="thead-dark">
    <tr>
        <th>Your tasks</th>
        <th><a data-toggle="modal" href="#create" role="button" class="list-group-item list-group-item-action list-group-item-primary">Add new</a> </th>
    </tr>
    <th>Task</th>
    <th>Due</th>
    </thead>
    <tbody><c:forEach var="task" items="${TASKS}">
        <tr data-toggle="modal" id="${task.id}" href="#task" class =${task.status ? "bg-success" : "bg-danger"}><td>${task.name}</td>
            <td>${task.due.toString()}</td>
        </tr>
    </c:forEach></tbody>
</table>
    <%@include file="create.jsp"%>
    <%@include file="task.jsp"%>
    <script>
        function GetFormattedDate(ticks) {
            var date = new Date(ticks)
            var minutes = date.getMinutes();
            minutes = minutes < 10 ? "0" + minutes : minutes;
            var hours = date.getHours();
            hours = hours < 10 ? "0" + hours : hours;
            var month = date.getMonth() + 1;
            month = month < 10 ? "0" + month : month;
            var day = date.getDate();
            day = day < 10 ? "0" + day : day;
            var year = date.getFullYear();
            return (year + "-" + month + "-" + day + "T" + hours + ":" + minutes);
        }
        $("tr").click(function(){
            $.ajax({
                type: "GET",
                url: "${contextPath}/get/" + this.getAttribute("id"),
                dataType: 'json',
                success: function(data){
                    $("#task-name").val(data.name);
                    $("#task-description").val(data.description);
                    $("#task-start").val(GetFormattedDate(data.start));
                    $("#task-due").val(GetFormattedDate(data.due));
                    $("#task-form").attr("action","${contextPath}/change_status/" +data.id);
                    $("#delete-task").attr("href", "${contextPath}/delete/" +data.id);
                    if(data.status) {
                        $("#task-modal").addClass("bg-success");
                        $("#change-task").html("Set as not done")
                    }
                    else {
                        $("#task-modal").addClass("bg-danger");
                        $("#change-task").html("Set as done");
                    }
                }
            });
        })
    </script>
</c:if>