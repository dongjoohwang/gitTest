package com.ezen.ex01;

import java.util.*;
import java.util.ArrayList;
import java.util.LinkedList;

public class ArraylistLinked {

	public static void main(String[] args) {
		
		ArrayList al = new ArrayList(2000000);
		LinkedList ll = new LinkedList();
		
		System.out.println("순차적으로 추가하기");
		System.out.println("arraylist : " + add1(al));
		System.out.println("linkedlist : " + add1(ll));
		System.out.println();
		System.out.println("중간에 추가하기");
		System.out.println("arraylist : " + add2(al));
		System.out.println("linkedlist : " + add2(ll));
		System.out.println();
		System.out.println("중간에서 삭제하기");
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
	}


	public static long add1(List list) {
		long start = System.currentTimeMillis();
		for (int i = 0; i < 1000000; i++) {
			list.add(i+"");
		}
		long end = System.currentTimeMillis();
		return end - start;
	}
	
	public static long add2(List list) {
		long start = System.currentTimeMillis();
		for (int i = 0; i < 1000000; i++) {
			list.add(500, "X");
		}
		long end = System.currentTimeMillis();
		return end - start;
	}
	
	
}






