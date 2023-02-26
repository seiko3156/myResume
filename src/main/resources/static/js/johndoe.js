/*!
=========================================================
* JohnDoe Landing page
=========================================================

* Copyright: 2019 DevCRUD (https://devcrud.com)
* Licensed: (https://devcrud.com/licenses)
* Coded by www.devcrud.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
*/
//
function editPwdcheck(pass,jseq){
   let pwd = prompt('비밀번호를 입력해주세요' , '비밀번호');
   if(pwd==pass) location.href = "editForm?jseq="+jseq;
   else alert("비밀번호가 맞지 않습니다");
}
function deletePwdcheck(pass,jseq){
   let result = confirm("정말 삭제하사겠습니까?");
   if(result==true){		
   let pwd = prompt('비밀번호를 입력해주세요' , '비밀번호');
   if(pwd==pass) {location.href = "delete?jseq="+jseq;}
   else {alert("비밀번호가 맞지 않습니다");}
  }else{
	  alert('삭제가 취소되었습니다.')
  }
}

function boardPwdCheck(pass,jseq){
   let pwd = prompt('비밀번호를 입력해주세요' , '비밀번호');
   if(pwd==pass) location.href = "view?jseq="+jseq;
   else alert("비밀번호가 맞지 않습니다");
}

function writeSubmit(command){
	if(command==='write'){
	document.writeform.submit();
	}else{
	document.editform.submit();	
	}	
}

function selectimg(){
	var opt = "toolbar=no,menubar=no,resizable=no,width=450,height=200";
	window.open( 'selectimg' , 'selectimg',  opt);
}
function selectEditImg(){
	var opt = "toolbar=no,menubar=no,resizable=no,width=450,height=200";
	window.open( 'selectEditImg' , 'selectEditImg',  opt);
}

function selectedimage(){
	document.frm.submit();
}
function selectedEditImage(){
	document.frmm.submit();
}

function allreturn(){
	alert('메세지가 정상적으로 발송되었습니다.')
}

// smooth scroll
$(document).ready(function(){
    $(".navbar .nav-link").on('click', function(event) {

        if (this.hash !== "") {

            event.preventDefault();

            var hash = this.hash;

            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 700, function(){
                window.location.hash = hash;
            });
        } 
    });
});

// protfolio filters
$(window).on("load", function() {
    var t = $(".portfolio-container");
    t.isotope({
        filter: ".new",
        animationOptions: {
            duration: 750,
            easing: "linear",
            queue: !1
        }
    }), $(".filters a").click(function() {
        $(".filters .active").removeClass("active"), $(this).addClass("active");
        var i = $(this).attr("data-filter");
        return t.isotope({
            filter: i,
            animationOptions: {
                duration: 750,
                easing: "linear",
                queue: !1
            }
        }), !1
    });
});


// google maps
function initMap() {
// Styles a map in night mode.
    var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 40.674, lng: -73.945},
        zoom: 12,
        scrollwheel:  false,
        navigationControl: false,
        mapTypeControl: false,
        scaleControl: false,
      styles: [
        {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
        {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
        {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
        {
          featureType: 'administrative.locality',
          elementType: 'labels.text.fill',
          stylers: [{color: '#d59563'}]
        },
        {
          featureType: 'poi',
          elementType: 'labels.text.fill',
          stylers: [{color: '#d59563'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'geometry',
          stylers: [{color: '#263c3f'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'labels.text.fill',
          stylers: [{color: '#6b9a76'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry',
          stylers: [{color: '#38414e'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry.stroke',
          stylers: [{color: '#212a37'}]
        },
        {
          featureType: 'road',
          elementType: 'labels.text.fill',
          stylers: [{color: '#9ca5b3'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry',
          stylers: [{color: '#746855'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry.stroke',
          stylers: [{color: '#1f2835'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'labels.text.fill',
          stylers: [{color: '#f3d19c'}]
        },
        {
          featureType: 'transit',
          elementType: 'geometry',
          stylers: [{color: '#2f3948'}]
        },
        {
          featureType: 'transit.station',
          elementType: 'labels.text.fill',
          stylers: [{color: '#d59563'}]
        },
        {
          featureType: 'water',
          elementType: 'geometry',
          stylers: [{color: '#17263c'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.fill',
          stylers: [{color: '#515c6d'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.stroke',
          stylers: [{color: '#17263c'}]
        }
      ]
    });
}
