<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
	<!-- sub contents start -->
	
<!-- 양방향 슬라이더 css 시작 -->
<style>
.slider {
  width: 100%;
  height: 100%;
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
  position: relative;
}

.input-range {
  width: calc(100% - 2rem);
  top: 1rem;
  left: 1rem;
  position: absolute;
  border: none;
  pointer-events: none;
  z-index: 10;
  appearance: none;
  opacity: 0.5;
}

.input-range:first-child {
  top: 1rem;
}

.input-range::-webkit-slider-thumb {
  pointer-events: all;
  /* appearance, background-color는 지워도 됨 */
  appearance:none;
  background-color: red;
  width: 1.5rem;
  height: 1.5rem;
}

.track {
  position: relative;
  margin-top:5rem;
  width: 100%;
  height: 0.5rem;
  background-color: #bdc3c7;
  border-radius: 0.5rem;
}

.range {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: Aqua;
  border-radius: 0.5rem;
}

.thumb {
  position: absolute;
  top: 0;
  transform: translateY(-0.25rem);
  width: 1rem;
  height: 1rem;
  background-color: blue;
  border-radius: 50%;
}

.left {
  left: 0;
}

.right {
  right: 0;
}
</style>
<!-- 양방향 슬라이더 끝 -->

<style>
h4 { text-align: left; }
</style>

	<div class="container-fluid">
		<div class="row">
			<div class="col-3" style="height:60px; background-color: red;">
			</div>
			<div class="col-9" style="background-color: green;">
				<div class="row align-items-center h-100">
					<div class="col">
						<!-- 필터 메뉴 시작 -->
						<!-- 방종류 시작 -->
						<div class="dropdown" style="float: left; width: 15%;">
							<button class="btn btn-light" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="width: 80%;">
								원룸, 오피스텔
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li>
									<div style="padding:20px;">
										<h4>방종류</h4>
										<h6>중복선택이 가능합니다.</h6>
		            
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
											<label class="form-check-label" for="flexCheckDefault">
												원룸
											</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
											<label class="form-check-label" for="flexCheckChecked">
												오피스텔
											</label>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- 방종류 끝 -->
         
         				<!-- 가격 시작 -->
						<div class="dropdown" style="float: left; width: 15%;">
							<button class="btn btn-light" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="width: 80%;">
							    월세
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li>
									<div style="padding:20px;">
									
										<h4>가격</h4>
										
										<label for="customRange3" class="form-label">보증금</label>
										<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
										
										<label for="customRange3" class="form-label">월세</label>
										<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
									
									</div>
								</li>
							</ul>
						</div>
						<!-- 가격 끝 -->
						
						<!-- 관리비 시작 -->
						<div class="dropdown" style="float: left; width: 15%;">
							<button class="btn btn-light" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="width: 80%;">
							    관리비
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li>
									<div style="padding:20px;">
									
										<h4>관리비</h4> <span id="manage_value"></span>
										
										<input type="range" class="form-range" min="0" max="5" step="0.5" id="manage">
										
										<div class="slider">
											<input type="range" class="input-range" id="input-left" min="1" max="100" value="1" />
											<input type="range" class="input-range" id="input-right" min="1" max="100" value="100" />
											<div class="track">
												<div class="range"></div>
												<div class="thumb left"></div>
												<div class="thumb right"></div>
											</div>
										</div>
										
										<button type="button" class="btn btn-light" style="float: right;">조건 삭제</button>
									
									</div>
								</li>
							</ul>
						</div>
						<!-- 관리비 끝 -->
						
						<!-- 방크기 시작 -->
						<div class="dropdown" style="float: left; width: 15%;">
							<button class="btn btn-light" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="width: 80%;">
							    방크기
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li>
									<div style="padding:20px;">
									
									<h4>방크기</h4>
									
									<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
									
									<button type="button" class="btn btn-light" style="float: right;">조건 삭제</button>
									
									</div>
								</li>
							</ul>
						</div>
						<!-- 방크기 끝 -->
						
						<!-- 추가 필터 시작 -->
						<div class="dropdown" style="float: left; width: 15%;">
							<button class="btn btn-light" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="width: 80%;">
							    추가필터
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li>
									<div style="padding:20px;">
									
										<div class="row" style="width:650px;">
											<div class="col-4" style="padding:10px;">
												<h4>층수</h4>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">전체</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">1층</label><br>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">2층</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">3층</label><br>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">4층</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">5층</label><br>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">6층</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">7층 이상</label><br>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">반지층</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width:35%">옥탑방</label><br>
											</div>
										
											<div class="col-8">
												<div class="container-fluid">
													<div class="row">
														<div class="col-6" style="padding:10px;">
															<h4>방수</h4>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
															<label class="form-check-label" for="flexCheckChecked" style="width:35%">전체</label>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
															<label class="form-check-label" for="flexCheckChecked" style="width:35%">1개</label><br>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
															<label class="form-check-label" for="flexCheckChecked" style="width:35%">2개</label>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
															<label class="form-check-label" for="flexCheckChecked">3개 이상</label>
														</div>
													
														<div class="col-6" style="padding:10px;">
															<h4>욕실수</h4>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
															<label class="form-check-label" for="flexCheckChecked" style="width:35%">전체</label>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
															<label class="form-check-label" for="flexCheckChecked" style="width:35%">1개</label><br>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
															<label class="form-check-label" for="flexCheckChecked" style="width:35%">2개</label>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
															<label class="form-check-label" for="flexCheckChecked">3개 이상</label>
														</div>
													</div>
													<div class="row">
														<div class="col" style="padding:20px;">
															<h4>풀옵션 여부</h4>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
															<label class="form-check-label" for="flexCheckChecked" style="width:35%">선택</label>
															<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
															<label class="form-check-label" for="flexCheckChecked" style="width:35%">미선택</label>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- 추가필터 끝 -->
         
						<div class="dropdown" style="float:right; width: 4%;">
							<button class="btn btn-light" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
								ㅇ
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li>
									<div style="padding:20px;">
										<h4>초기화 하는데 사용하는용도</h4>
									</div>
								</li>
							</ul>
						</div>
						
						<div class="dropdown" style="float:right; width: 4%;">
							<button class="btn btn-light" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
								ㅁ
							</button>
							
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li>
									<div style="padding:20px; width:1000px;">
										<div class="container-fluid">
										
											<h3>상세속성</h3>
											
											<div class="border-bottom" style="border-bottom:1px; margin:20px;">
												<h4>방종류</h4>
												<div class="form-check" style="padding:40px; float:left">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
													<label class="form-check-label" for="flexCheckDefault">
														원룸
													</label>
												</div>
												<div class="form-check"  style="padding:40px;">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
													<label class="form-check-label" for="flexCheckChecked">
														오피스텔
													</label>
												</div>
											</div>
										
										
											<div class="border-bottom" style="border-bottom:1px; margin:20px;">
												<h4>가격</h4>
												<div style="padding:20px;">
												
													<label for="customRange3" class="form-label">보증금</label>
													<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
													
													<label for="customRange3" class="form-label">월세</label>
													<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
												</div>
											
											</div>
										
										
											<div class="border-bottom" style="border-bottom:1px; margin:20px;">
												<h4>방크기(전용면적)</h4>
												<div style="padding:20px;">
												
													<label for="customRange3" class="form-label">방크기</label>
													<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
												</div>
											
											</div>
										
											<div class="border-bottom" style="border-bottom:1px; margin:20px;">
												<h4>층수</h4>
												<div style="padding:20px;">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
													<label class="form-check-label" for="flexCheckChecked" style="width:5%">전체</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:5%">1층</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:5%">2층</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:5%">3층</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:5%">4층</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:5%">5층</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:5%">6층</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:8%">7층 이상</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:8%">반지층</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:8%">옥탑방</label>
												</div>
											</div>
										
										
											<div class="border-bottom" style="border-bottom:1px; margin:20px;">
												<h4>방수</h4>
												<div style="padding:20px;">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
													<label class="form-check-label" for="flexCheckChecked" style="width:15%">전체</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:15%">1개</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:15%">2개</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked">3개 이상</label>
												</div>
											</div>
										
										
											<div class="border-bottom" style="border-bottom:1px; margin:20px;">
												<h4>욕실수</h4>
												<div style="padding:20px;">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
													<label class="form-check-label" for="flexCheckChecked" style="width:15%">전체</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:15%">1개</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked" style="width:15%">2개</label>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
													<label class="form-check-label" for="flexCheckChecked">3개 이상</label>
												</div>
											</div>
										
										
										
											<div class="border-bottom" style="border-bottom:1px; margin:20px;">
												<h4>풀옵션 여부</h4>
												<div class="form-check" style="padding:40px; float:left">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
													<label class="form-check-label" for="flexCheckDefault">
														선택
													</label>
												</div>
												<div class="form-check"  style="padding:40px;">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
													<label class="form-check-label" for="flexCheckChecked">
														미선택
													</label>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						
						</div>
         
         <!-- 필터 메뉴 끝 -->
         
         
					</div>
				</div>
         
         
         
         
			</div>
		</div>
	</div>
	<div class="container-fluid" >
		<div class="row">
			<div class="col-3 p-0" >
				<nav>
					<div class="nav nav-tabs ps-3" id="nav-tab" role="tablist">
    					<button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">전체 방</button>
						<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">중개사무소</button>
					</div>
				</nav>
				<div class="tab-content overflow-auto" id="nav-tabContent" style="height: calc(100vh - 211px);">
					<div class="tab-pane fade show active h-100" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
						<!-- 지도에 표시되는 방 목록 시작-->
						<div class="card w-100" >
							<div class="card-body">
								<div class="row m-0 gx-3">
									<div class="col-5" style="background: blue; background-clip:content-box; height: calc(200px - 32px);"></div>
									<div class="col-7" style="background: aqua; background-clip:content-box;"></div>
								</div>
							</div>
						</div>
						<div class="card w-100" >
							<div class="card-body">
								<div class="row m-0 gx-3">
									<div class="col-5" style="background: blue; background-clip:content-box; height: calc(200px - 32px);"></div>
									<div class="col-7" style="background: aqua; background-clip:content-box;"></div>
								</div>
							</div>
						</div>
						<div class="card w-100" >
							<div class="card-body">
								<div class="row m-0 gx-3">
									<div class="col-5" style="background: blue; background-clip:content-box; height: calc(200px - 32px);"></div>
									<div class="col-7" style="background: aqua; background-clip:content-box;"></div>
								</div>
							</div>
						</div>
						<div class="card w-100" >
							<div class="card-body">
								<div class="row m-0 gx-3">
									<div class="col-5" style="background: blue; background-clip:content-box; height: calc(200px - 32px);"></div>
									<div class="col-7" style="background: aqua; background-clip:content-box;"></div>
								</div>
							</div>
						</div>
						<div class="card w-100" >
							<div class="card-body">
								<div class="row m-0 gx-3">
									<div class="col-5" style="background: blue; background-clip:content-box; height: calc(200px - 32px);"></div>
									<div class="col-7" style="background: aqua; background-clip:content-box;"></div>
								</div>
							</div>
						</div>
						<!-- 페이징 시작 -->
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</ul>
						</nav>
						<!-- 페이징 끝 -->
						<!-- 지도에 표시되는 방 목록 끝 -->
					</div>
					<div class="tab-pane fade h-100" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
						<!-- 지도에 표시되는 중개사무소 목록 시작 -->
						<!-- 없을때 시작 -->
						<div class="container-fluid h-100">
							<div class="row h-100">
								<div class="col align-self-center">
									<!--
										조건에 맞는 방이 없습니다.
										위치 및 맞춤필터를 조정해보세요. 
									 -->
									 <p class="text-center"><i class="fa-solid fa-circle-exclamation fa-2xl"></i></p>
									 <p class="text-center fs-6">
									 이 지역에 안내 가능한 중개사무소가 없습니다.<br>
									 다른 지역으로 검색해보세요.<p>
								</div>
							</div>
						</div>
						<!-- 없을때 끝 -->
						<!-- 지도에 표시되는 중개사무소 목록 끝 -->
					</div>
				</div>
			</div>
			<div id="map" class="col-9" style="background-color: yellow;">
				
			</div>
		</div>
	</div>

<script>
	$(function(){
		$("body").css("padding-bottom", "0");
		$("#manage").on("input", function(){
			$("#manage_value").html($(this).val());
		});
	});

	$(function (){
		const inputLeft = document.getElementById("input-left");
		const inputRight = document.getElementById("input-right");

		const thumbLeft = document.querySelector(".thumb.left");
		const thumbRight = document.querySelector(".thumb.right");

		const range = document.querySelector(".range");

		console.log(inputLeft);
		console.log(inputRight);
		console.log(thumbLeft);
		console.log(thumbRight);
		console.log(range);
		
		const setLeftValue = e => {
		  const _this = e.target;
		  const { value, min, max } = _this;

		  if (+inputRight.value - +value < 10) {
		    _this.value = +inputRight.value - 10;
		  }

		  const percent = ((+_this.value - +min) / (+max - +min)) * 100;

		  thumbLeft.style.left = percent+"%";
		  range.style.left = percent+"%";
			console.log("left : ",thumbLeft.style.left);
			console.log("right : ", thumbRight.style.right);
		};

		const setRightValue = e => {
		  const _this = e.target;
		  const { value, min, max } = _this;

		  if (+value - +inputLeft.value < 10) {
		    _this.value = +inputLeft.value + 10;
		  }

		  const percent = ((+_this.value - +min) / (+max - +min)) * 100;

		  thumbRight.style.right = (100 - percent)+"%";
		  range.style.right = (100 - percent)+"%";

		  console.log("left : ",thumbLeft.style.left);
			console.log("right : ", thumbRight.style.right);
		};

		if (inputLeft && inputRight) {
		  inputLeft.addEventListener("input", setLeftValue);
		  inputRight.addEventListener("input", setRightValue);
		  console.log("적용");
		}
	});
</script>

<!-- 구글 지도 스크립트 시작 -->
<script>
	mapsApiKey = ; // 구글 맵 api key 입력
</script>
<script src="https://maps.googleapis.com/maps/api/js?key="+mapsApiKey+"=initMap&v=weekly"
  async></script>
<script>
  function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: 36.32843039, lng: 127.40531874 },
      zoom: 17,
    });
  }
</script>
<!-- 구글 지도 스크립트 끝 -->
	<!-- sub contents end -->
<%--	
	<%@ include file="../include/footer.jsp"%>
 --%>
</body>
</html>
