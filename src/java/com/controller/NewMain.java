/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.io.File;

/**
 *
 * @author ARPIT-PATEL
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String savePath1 = "E:" + File.separator + "netbeansideadock" + File.separator + "IdeaDockNetBeans"
                    + File.separator + "web" + File.separator + "wp-content" + File.separator + "portal" + File.separator + "profilepic";
        File fdelete = new File(savePath1+ File.separator+"a.jpg");
        
        if (fdelete.exists()) {
            if (fdelete.delete()) {
                System.out.println("file Deleted :");
            } else {
                System.out.println("file not Deleted :");
            }
        }else{
            System.out.println("File not Exist");
        }
    }

}
