package com.imin.verifycode;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;

public class VerifyCode {
	private static String baseStr="abcdefghijkmnpqrstuvwxyzABCDEFGHIJKMNPQRSTUVWXYZ23456789";
	private String codeText;
	
	public BufferedImage getImg() {
		BufferedImage img=new BufferedImage(80, 40, BufferedImage.TYPE_INT_RGB);
		Graphics2D g=(Graphics2D)img.getGraphics();
		g.setColor(Color.GRAY);
		g.fillRect(0, 0, 80, 40);
		StringBuilder sb=new StringBuilder();
		for(int i=0;i<4;i++){
			//0~字符串长度-1的随机整数
			int index = (int)(Math.random()*baseStr.length());
			sb.append(baseStr.charAt(index));
		}
		String randomStr = sb.toString();
		codeText = randomStr;
		//写字符串到图片中
		g.setColor(Color.RED);
		g.setFont(new Font(Font.SERIF, Font.BOLD, 24));
		g.drawString(randomStr, 6, 26);
		return img;
		
	}
	
	public void printImg(OutputStream os){
		//第一个参数:图片对象 第二个参数:图片  第三个参数:图片的类型
		try {
			ImageIO.write(getImg(), "JPEG", os);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 *获取图片对应的文本
	 */
	public String getCodeText(){
		//避免直接调用getCodeText方法
		if (this.codeText == null){
			throw new RuntimeException("请先产生图片");
		}
		return this.codeText;
	}
	public static void main(String[] args) throws FileNotFoundException {
		VerifyCode vc=new VerifyCode();
		FileOutputStream fos=new FileOutputStream("d:/a.jpg");
		vc.printImg(fos);
		System.out.println(vc.getCodeText());
	}
}
