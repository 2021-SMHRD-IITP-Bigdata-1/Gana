package com.controller;

public class certVO {

   private String count;
   private String cert_name;

   public certVO(String count, String cert_name) {

      this.count = count;
      this.cert_name = cert_name;
   }

   public String getCount() {
      return count;
   }

   public String getCert_name() {
      return cert_name;
   }

}
