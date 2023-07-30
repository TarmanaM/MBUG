function deleteConfirmation_penerima(id) {
    Swal.fire({
        title: 'Apakah Anda yakin?',
        text: "Data Penerima akan dihapus secara permanen!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d000fa',
        cancelButtonColor: '#EB823B',
        confirmButtonText: 'Hapus!',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            deleteData_penerima(id);
        }
    });
  }


function deleteData_user(id) {
    // window.location.href = "/admin/beasiswa/delete/" + id;
  }
function deleteData_beasiswa(id) {
    window.location.href = "/admin/beasiswa/delete/" + id;
  }
function deleteData_penerima(id) {
    
    window.location.href = "/admin/penerima/delete//" + id;
}



//Delete ALert delete user
function deleteConfirmation_beasiswa(id) {
    Swal.fire({
        title: 'Apakah Anda yakin?',
        text: "Data Beasiswa akan dihapus secara permanen!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d000fa',
        cancelButtonColor: '#EB823B',
        confirmButtonText: 'Hapus!',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            // Redirect atau panggil fungsi deleteData() untuk menghapus data
            deleteData_beasiswa(id);
        }
    });
  }
  
  function deleteConfirmation_user(id) {
    Swal.fire({
        title: 'Apakah Anda yakin?',
        text: "User akan dihapus secara permanen!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d000fa',
        cancelButtonColor: '#EB823B',
        confirmButtonText: 'Hapus!',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            // Redirect atau panggil fungsi deleteData() untuk menghapus data
            deleteData_user(id);
        }
    });
  }