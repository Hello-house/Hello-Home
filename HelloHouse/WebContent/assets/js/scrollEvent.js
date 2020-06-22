let scrollpos = window.scrollY
const header1 = document.querySelector(".header-1-menu");
const header2 = document.querySelector(".header-2-menu");
const header1_height = header1.offsetHeight;



const set_class_on_scroll = () => header1.classList.add("set-fixed");
const remove_Set_class_on_scroll = () => header1.classList.remove("set-fixed");
const add_class_on_scroll = () => header2.classList.add("fade-in");
const remove_class_on_scroll = () => header2.classList.remove("fade-in");


window.addEventListener('scroll', function () {
    let header2_height = scrollpos;
    scrollpos = window.scrollY;


    // console.log(`위치:${header2_heigth}`)

    if (scrollpos < header2_height) {
        remove_class_on_scroll()
    } else if (scrollpos > header1_height) {
        set_class_on_scroll()
        add_class_on_scroll()
    } else {

        remove_Set_class_on_scroll()
        remove_class_on_scroll()
    }
    console.log(`scrollpos:${scrollpos}`)
})