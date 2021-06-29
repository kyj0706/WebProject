package com.site.ex;

public class Student {
	
	private int stuNo;
	private	String name;
	private int kor;
	private int eng;
	private int math;
	private int total;
	private double avg;
	
	
	
	
	
	public Student() {
		super();
	}


	public Student(int stuNo, String name, int kor, int eng, int math) {
		super();
		this.stuNo = stuNo;
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.total = kor+eng+math;
		//소수점 2쟤자리로 집어 넣기 위함 
		this.avg = Double.parseDouble(String.format("%.2f", this.total/3.0)) ;
	}


	public int getStuNo() {
		return stuNo;
	}


	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getKor() {
		return kor;
	}


	public void setKor(int kor) {
		this.kor = kor;
	}


	public int getEng() {
		return eng;
	}


	public void setEng(int eng) {
		this.eng = eng;
	}


	public int getMath() {
		return math;
	}


	public void setMath(int math) {
		this.math = math;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public double getAvg() {
		return avg;
	}


	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	
	
	
	
}
