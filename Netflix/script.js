
var danhSachPhim = [
    {
        id: 0,
        ten: "labrador",
        thoiLuong: 15,
        banner: "pic",
        trailer: "https://www.youtube.com/embed/uKZY4lcmQQk?si=AU-ievQcTUPrY264&amp"
    },
    {
        id: 1,
        ten: "nhung con rong troi day",
        thoiLuong: 15,
        banner: "pic",
        trailer: "https://www.youtube.com/embed/xinY2kYhQHo?si=C-FBGY82902nt6TB"
    },

    {
        id: 2,
        ten: "thợ săn quỷ kpop",
        thoiLuong: 15,
        banner: "pic",
        trailer: "https://www.youtube.com/embed/mQKB6NqWtJI?si=VCfOexQAwfG67FoH&amp"
    },
    {
        id: 3,
        ten: "Swapped",
        thoiLuong: 15,
        banner: "pic",
        trailer: "https://www.youtube.com/embed/CbL4NSg0UXU?si=xu3ppkZ4niXhdDR5&amp"
    },
    {
        id: 4,
        ten: "chàng khổng lồ tí hon",
        thoiLuong: 15,
        banner: "pic",
        trailer: "https://www.youtube.com/embed/k2mnslDpvq4?si=Z050H0nGcYBqP_Zh&amp"
    },
    {
        id: 5,
        ten: "nhung con rong troi day",
        thoiLuong: 15,
        banner: "pic",
        trailer: "https://www.youtube.com/embed/uCSOjGOQOAc?si=WQ_7Drm7VOvIqjgu&amp"
    },
]

function video(id) {
    for (let i = 0; i < danhSachPhim.length; i++) {
        if (danhSachPhim[i].id == id) {
            document.getElementById("banner-anh").style.display = "none";
            document.getElementById("banner-video").style.display = "block";
            document.getElementById("banner-video").src = danhSachPhim[i].trailer;
        }
    }
}