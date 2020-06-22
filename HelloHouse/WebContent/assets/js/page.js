let page = document.querySelector(`.research_1`);
let i =1;
let faded_in_page = () => page.classList.add("faded-in-page");
let faded_out_page = () => page.classList.remove("faded-in-page");
let addAllResearch = () => page.classList.add("all-research");
let removeAllResearch = () => page.classList.remove("all-research");
console.log("check");

let startBtn = document.querySelector('.button-start');
//nextPage
let nextBtn = document.querySelectorAll('.button-next');
//prePage
let preBtn = document.querySelectorAll('.button-pre');

let endBtn = document.querySelector('.button-end');

startBtn.addEventListener('click',function(){
    console.log('start');
    this.parentElement.parentElement.setAttribute('class','faded-in-page');
    this.parentElement.parentElement.nextElementSibling.setAttribute('class','all-research');
});

endBtn.addEventListener('click',function(){
    console.log('end');
    this.parentElement.parentElement.setAttribute('class','faded-in-page');
    this.parentElement.parentElement.nextElementSibling.setAttribute('class','all-research');
});


for (let i = 0; i < nextBtn.length; i++) {
    nextBtn[i].addEventListener('click', function () {

        let checked = this.parentElement.parentElement.querySelector('input[type=radio]:checked');

        if (checked !== null) {
            this.parentElement.parentElement.setAttribute('class', 'faded-in-page');
            this.parentElement.parentElement.nextElementSibling.setAttribute('class', 'all-research');
        } else {
            alert('체크해주세요');
        }

    });
}




for(let i=0; i<preBtn.length; i++){
    preBtn[i].addEventListener('click',function(){

        // console.log(this.parentElement.parentElement.getAttribute('class'));
        // if(this.parentElement.parentElement.getAttribute('class') !== null){
            this.parentElement.parentElement.setAttribute('class','faded-in-page');
            this.parentElement.parentElement.previousElementSibling.setAttribute('class','all-research');
        // }

    });
}



// 들어온 값 변환
const checkArr ={
    'modern': '[0,0,1,0,0]',
    'classic':'[0,1,0,0,0]',
    'natural': '[0,0,0,1,0]',
    'romantic':'[0,0,0,0,1]',
    'casual':'[1,0,0,0,0]'
   
};

// submit
let submitBtn = document.querySelector('#sendBtn');
submitBtn.addEventListener('click', function () {
    let radionBtns = document.querySelectorAll('input[type=radio]:checked');
    let answer = new Array;
    //엑셀 : 색상 순서(casual, classic, modern, natural, ro)
    //엑셀 :패턴 순서( 같음 )
    const modern = [0,0,1,0,0];
    const classic = [0,1,0,0,0];
    const natural = [0,0,0,1,0];
    const romantic = [0,0,0,0,1];
    const casual = [1,0,0,0,0];
    // 홈페이지 : 색상 순서(modern, classic , natural, romantic, casual)
    // 홈페이지 : 패턴 순서(modern, classic, natural, romantic, casual)
    for (let j = 0; j < radionBtns.length; j++) {
        if(j<=6){
            answer.push(parseInt(radionBtns[j].value));
        }else if(j>=7 && j<=11){
            if(radionBtns[j].value===1){
                for(let i = 0; i <5 ; i++){
                    answer.push(modern[i]);
                }
            }else if(radionBtns[j].value===2){
                for(let i = 0; i <5 ; i++){
                    answer.push(classic[i]);
                }
            }else if(radionBtns[j].value===3){
                for(let i = 0; i <5 ; i++){
                    answer.push(natural[i]);
                }
            }else if(radionBtns[j].valus===4){
                for(let i = 0; i <5 ; i++){
                    answer.push(romantic[i]);
                }
            }else{
                for(let i = 0; i <5 ; i++){
                    answer.push(casual[i]);
                }
            }

        }else{
            answer.push(parseInt(radionBtns[j].value));
        }
    }
    console.log(answer);
    
    
    const value = document.querySelector('.value');
    value.setAttribute('value', answer);
    const submit = document.querySelector('.submit');
    setTimeout(function(){submit.click();},3000);

    }
    // console.log(radionBtns.value);
);

//check of checkPoint


