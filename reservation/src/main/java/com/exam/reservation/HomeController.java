package com.exam.reservation;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.*;
import java.util.*;


@Controller
public class HomeController {


    @Value("${env.text}")
    private String env;

    @RequestMapping("/")
    public String home(){

        return "hello";
    }

    @RequestMapping("/kakao")
    public String kakao(){
        return "kakao";  //kakao.jsp를 보여줘라
    }

    @RequestMapping("/ajax")
    public String ajax(){
        return "ajax"; //ajax.jsp를 보여줘라
    }

    @RequestMapping("/ajaxResponse")
    @ResponseBody
    public String ajaxResponse(@RequestParam String btnNum){
        System.out.println("btnNum = " + btnNum);
        return btnNum;
    }

    @RequestMapping("/ajax_time_example")
    public String ajax_time_example(){
        return "ajax_time_example"; //ajax.jsp를 보여줘라
    }
    
    @RequestMapping("/timeCheck")
    @ResponseBody
    public String timeCheck(@RequestParam String date) throws ParseException {
    	//DB에는 string으로 dataFrom, dataTo라고 숙소정보가 저장되어 있다고 가정
    	/*dateFrom: 2022-09-01
    	dateTo: 2022-09-15
    	
    	String-> Date객체로 변환할 것임(Date객체에 비교 함수가 있어서)
    	SimpleDateFormat -> 말그대로 String-> date, date-> string 변환을 형식을 정해서
    	심플하게 변환함*/
		/*
		 * System.out.println("date = " + date); //2022-09-14
		 */    	//받은 날짜 9월 14일이 예약 가능한 날짜인지 비교
    	//숙소는 9월1일부터 15일까지 예약이 가능하다고 가정
    	
    	DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//형식지정할 수 있음
    	
    	
    	
    	Date dateFrom = sdf.parse("2022-09-01 00:00:00");//DB에서 시작날짜를 가져옴
    	//DB에서 시작날짜를 String으로 가져왔다고 하고, String -> Date
    	Date dateTo = sdf.parse("2022-09-15 23:59:59");
    	//DB에서 끝날짜를 String으로 가져왔다고 하고, String -> Date
    	Date dateCheck = sdf.parse(date + " 10:00:00"); //2022-09-01 10:00:00
    	//전달받은 9월 14일 날짜 변환, String -> Date
    
    	
    	if(dateCheck.after(dateFrom) && dateCheck.before(dateTo)) {
    		return "Reservation Success";
    	}else
    		return "Reservation Failed";
    	
    	//검사를 하고 결과값을 리턴해야 함
    	//단순히 예약 성공/실패만 알고 싶음
//    	return "Reservation Success";
    }

	/*
	 * @RequestMapping("/timeAjax")
	 * 
	 * @ResponseBody public String timeAjax(){ //이 주소로 접속하면 현재 시간을 응답으로 보내줌 Date
	 * date = Calendar.getInstance().getTime(); //현재시간 DateFormat dateFormat = new
	 * SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//형식지정 String strDate =
	 * dateFormat.format(date); //date -> string으로 변환(위의 형식에맞게) return strDate;
	 * //2022-09-08 14:44:26 }
	 */
}
