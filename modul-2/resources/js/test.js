function tambahField() {
    let div = document.createElement("div");
    div.innerHTML =
        '<label for="nama">Nama: </label> <input type="text" name="nama[]" required>';
    document.getElementById("namaFields").appendChild(div);
}

function hapusField() {
    let fields = document.getElementsByName("nama[]");
    if (fields.length > 1) {
        fields[fields.length - 1].parentNode.remove();
    }
}
