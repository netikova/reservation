<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

</head>

<body>

<div class="body">

    <hr class="mt-0 mb-2">
    <div role="main" class="main">
        <div class="container py-4">
            <%--만약에 크롬에서 오류가 발생하며 나오지 않을 경우에는 인터넷 임시데이터 삭제 후 재시도--%>
            <div id="map" style="width:100%;height:550px;"></div>

        </div>

    </div>



</div>
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=fa67cd57ef8559bc1dbaadf61bec7e01&libraries=services,clusterer,drawing"></script>

<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    // 지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch('대전광역시 동구 우암로 352-21', function(result, status) {

        // 정상적으로 검색이 완료됐으면
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
            console.log(coords);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">학교</div>'
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        }
    });
</script>

</body>
</html>
