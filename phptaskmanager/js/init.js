$(document).ready(function () {
    $('.datatable').DataTable({
        ajax: '/includes/route.php?type=get',
        columns: [
            { data: 'id'},
            { data: 'firstName'},
            { data: 'lastName'},
            { data: 'phone'},
            { data: 'id',
                fnCreatedCell: function (td, id) {
                    $(td).html('<div class="text-right"><a href="/update?id='+id+'" title="Edit this record">Update</a> | <a href="/delete?id='+id+'" class="text-danger" title="Delete this record" onClick="return confirm(\'Are you sure you want to delete this record?\');">Delete</a></div>');
                }
            }
        ],
        columnDefs: [ {
            targets: [4],
            orderable: false
        }],
        
    });
    $('.datatableSimple').DataTable({
        ajax: '/includes/route.php?type=get',
        columns: [
            { data: 'id'},
            { data: 'firstName'},
            { data: 'lastName'},
            { data: 'phone'}
        ]
    });
    $('.phone').mask('000-000-0000');

    $('.form').validate({
        rules: {
            firstName: {
                required:true
            },
            lastName: {
                required:true
            },
            phone: {
                required:true,
                minlength: 12
            }
        },
        messages: {
            firstName: 'A first name is required',
            lastName: 'A last name is required',
            phone: {
                required: 'A phone number is required',
                minlength: jQuery.validator.format('At least {0} characters required!')
            }
        },
        errorClass: 'is-invalid text-danger',
        submitHandler: function(form) {
            form.submit();
        }
    });
    $('.users').DataTable({
    ajax: '/includes/route.php?type=getUsers',
    columns: [
        { data: 'id'},
        { data: 'active'},
        { data: 'username'},
        { data: 'firstName'},
        { data: 'lastName'},
        { data: 'id',
            fnCreatedCell: function (td, id) {
                $(td).html('<div class="text-right"><a href="/updateUser?id='+id+'" title="Edit this record">Update</a> | <a href="/deleteUser?id='+id+'" class="text-danger" title="Delete this record" onClick="return confirm(\'Are you sure you want to delete this record?\');">Delete</a></div>');
            }
        }
    ],
    columnDefs: [ {
        targets: [5],
        orderable: false
    }]
});

});
