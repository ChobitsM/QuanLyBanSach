$(document).ready(function () {
     // Xóa
     $(document).on("click", ".delete", function () {
        $(this).parents("tr").remove();
        swal("Thành Công!", "Bạn Đã Xóa Thành Công", "success");
        $(".add-new").removeAttr("disabled");
    });
});