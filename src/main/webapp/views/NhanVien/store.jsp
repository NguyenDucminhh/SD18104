<!DOCTYPE html>
<html>
<head>
    <style>
        /* CSS cho hiệu ứng chuyển động */
        .table-container {
            width: 600px;
            margin: 0 auto;
            padding: 20px;
            transition: transform 0.3s ease-in-out;
        }

        .table-container:hover {
            transform: scale(1.05);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        .btn-edit, .btn-delete {
            padding: 6px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-edit {
            background-color: #4CAF50;
            color: white;
        }

        .btn-delete {
            background-color: #f44336;
            color: white;
        }

        .btn-edit:hover, .btn-delete:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
<div class="table-container">
    <h2>Employee Data</h2>
    <table id="data-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Middle Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Password</th>
            <th>Department ID</th>
            <th>Position ID</th>
            <th>Report ID</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <!-- Table rows -->
        </tbody>
    </table>
</div>

<script>
    // Dữ liệu tĩnh
    var employees = [
        {
            ma: "EMP001",
            ten: "John",
            tenDem: "Doe",
            ho: "Smith",
            gioiTinh: "Male",
            ngaySinh: "1990-01-01",
            diaChi: "123 Main St",
            sdt: "1234567890",
            matKhau: "password",
            idCH: "DEP001",
            idCV: "POS001",
            idGuiBC: "REP001"
        },
        {
            ma: "EMP002",
            ten: "Jane",
            tenDem: "Doe",
            ho: "Smith",
            gioiTinh: "Female",
            ngaySinh: "1992-05-15",
            diaChi: "456 Elm St",
            sdt: "9876543210",
            matKhau: "password",
            idCH: "DEP002",
            idCV: "POS002",
            idGuiBC: "REP002"
        },
        {
            ma: "EMP003",
            ten: "Michael",
            tenDem: "",
            ho: "Johnson",
            gioiTinh: "Male",
            ngaySinh: "1988-09-30",
            diaChi: "789 Oak St",
            sdt: "5555555555",
            matKhau: "password",
            idCH: "DEP001",
            idCV: "POS003",
            idGuiBC: "REP003"
        },
        {
            ma: "EMP004",
            ten: "Emily",
            tenDem: "Anne",
            ho: "Williams",
            gioiTinh: "Female",
            ngaySinh: "1995-12-20",
            diaChi: "321 Pine St",
            sdt: "7777777777",
            matKhau: "password",
            idCH: "DEP003",
            idCV: "POS002",
            idGuiBC: "REP002"
        },
        {
            ma: "EMP005",
            ten: "David",
            tenDem: "",
            ho: "Davis",
            gioiTinh:"Male",
            ngaySinh: "1991-07-10",
            diaChi: "555 Maple St",
            sdt: "9999999999",
            matKhau: "password",
            idCH: "DEP002",
            idCV: "POS001",
            idGuiBC: "REP001"
        }
    ];

    // Hàm tạo các ô dữ liệu và nút chỉnh sửa, xóa
    function createTableRows() {
        var tableBody = document.querySelector("#data-table tbody");

        // Xóa các dữ liệu cũ
        tableBody.innerHTML = "";

        // Tạo hàng dữ liệu cho mỗi nhân viên
        employees.forEach(function (employee) {
            var row = document.createElement("tr");

            // Tạo các ô dữ liệu
            var idCell = document.createElement("td");
            idCell.textContent = employee.ma;
            row.appendChild(idCell);

            var nameCell = document.createElement("td");
            nameCell.textContent = employee.ten;
            row.appendChild(nameCell);

            var middleNameCell = document.createElement("td");
            middleNameCell.textContent = employee.tenDem;
            row.appendChild(middleNameCell);

            var lastNameCell = document.createElement("td");
            lastNameCell.textContent = employee.ho;
            row.appendChild(lastNameCell);

            var genderCell = document.createElement("td");
            genderCell.textContent = employee.gioiTinh;
            row.appendChild(genderCell);

            var dobCell = document.createElement("td");
            dobCell.textContent = employee.ngaySinh;
            row.appendChild(dobCell);

            var addressCell = document.createElement("td");
            addressCell.textContent = employee.diaChi;
            row.appendChild(addressCell);

            var phoneCell = document.createElement("td");
            phoneCell.textContent = employee.sdt;
            row.appendChild(phoneCell);

            var passwordCell = document.createElement("td");
            passwordCell.textContent = employee.matKhau;
            row.appendChild(passwordCell);

            var deptIdCell = document.createElement("td");
            deptIdCell.textContent = employee.idCH;
            row.appendChild(deptIdCell);

            var positionIdCell = document.createElement("td");
            positionIdCell.textContent = employee.idCV;
            row.appendChild(positionIdCell);

            var reportIdCell = document.createElement("td");
            reportIdCell.textContent = employee.idGuiBC;
            row.appendChild(reportIdCell);

            // Tạo các nút chỉnh sửa và xóa
            var actionsCell = document.createElement("td");

            var editButton = document.createElement("button");
            editButton.textContent = "Edit";
            editButton.className = "btn-edit";
            actionsCell.appendChild(editButton);

            var deleteButton = document.createElement("button");
            deleteButton.textContent = "Delete";
            deleteButton.className = "btn-delete";
            actionsCell.appendChild(deleteButton);

            row.appendChild(actionsCell);

            // Thêm hàng vào tbody
            tableBody.appendChild(row);
        });
    }

    // Gọi hàm để tạo các ô dữ liệu ban đầu
    createTableRows();
</script>

<script>
    // xóa dữ liệu trên bảng
    document.addEventListener('DOMContentLoaded', function() {
        var deleteButtons = document.getElementsByClassName('btn-delete');

        for (var i = 0; i < deleteButtons.length; i++) {
            deleteButtons[i].addEventListener('click', function() {
                var row = this.parentNode.parentNode; // Lấy thẻ <tr> chứa nút xóa
                row.parentNode.removeChild(row); // Xóa thẻ <tr> khỏi bảng
            });
        }
    });
</script>
</body>
</html>