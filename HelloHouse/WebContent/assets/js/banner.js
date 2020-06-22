const banner = document.querySelector('.banner');

const maxPage = 4;
let nowPage = 1;

setInterval(() => {
    nextPage();
}, 3000);


function nextPage() {

    nowPage++;
    if (nowPage == maxPage + 1) {
        nowPage = 1;
    }
    banner.style.backgroundImage = `url(assets/img/banner${nowPage}.png)`;
}

