<?php
    include 'header.php';
?>
<main>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Mã bài thi</th>
                <th scope="col">Tên bài thi</th>
                <th scope="col">Ngày thi</th>
                <th scope="col">Thời gian làm bài</th>
                <th scope="col">Số câu hỏi</th>
                <th scope="col">Điểm một câu</th>
                <th scope="col">Ngày tạo bài thi</th>
                <th scope="col">Trạng thái</th>
                <th scope="col">Mã bài Thi</th>
            </tr>
        </thead>
        <tbody>
            <?php

        include 'config.php';
        $sql = "SELECT * from baithi";
        $result = mysqli_query($conn,$sql);

        if(mysqli_num_rows($result)>0){
            while($row=mysqli_fetch_assoc($result)){
            ?>
            <tr>
                <th scope="row"><?php echo $row['id']; ?> </th>
                <td><?php echo $row['exam_title']; ?></td>
                <td><?php echo $row['exam_datetime']; ?></td>
                <td><?php echo $row['duration']; ?></td>
                <td><?php echo $row['total_question']; ?></td>
                <td><?php echo $row['marks_per_right_answer']; ?></td>
                <td><?php echo $row['created_on']; ?></td>
                <td><?php echo $row['status']; ?></td>
                <td><?php echo $row['exam_code']; ?></td>



                <!-- <td><a href="editEmployee.php?id=<?php echo $row['emp_id']; ?>"><i class="fas fa-user-edit"></i></a>
                </td>
                <td><a href="deleteEmployee.php?id='.$row['emp_id'].<?php echo $row['emp_id']; ?>"><i
                            class="fas fa-user-times"></i></a></td> -->
            </tr>
            <?php
                        }
                    }
                ?>

        </tbody>
    </table>
    </main>
    