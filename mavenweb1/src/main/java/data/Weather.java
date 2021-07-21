package data;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class Weather {

	public String getWeatherData() {
		String address = "http://apis.data.go.kr/1360000/TourStnInfoService/getTourStnVilageFcst?serviceKey=H6cvp9T6GzttiWWSccMeX0QkcKL0HMy6aPMwngethwA%2B1KVOOAgtptlL0l569rEGwOeOah3OKcDgzIoO56AM2A%3D%3D&pageNo=1&numOfRows=10&dataType=XML&CURRENT_DATE=2021071516&HOUR=24&COURSE_ID=1";
		String data="";
		try {
			URL url = new URL(address);
			URLConnection uc = url.openConnection();
			BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));
			String line;
			while((line = in.readLine())!=null) {
				data += line;
			}
			in.close();
			//System.out.println(data);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return data;
	}

}
