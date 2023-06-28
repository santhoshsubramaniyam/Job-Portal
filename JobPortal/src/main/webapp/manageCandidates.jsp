<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" itemscope="" itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title> Applied Candidate</title>
<link rel="stylesheet" href="css/index.css">
  

  

  <meta name="twitter:card" content="summary_large_image">
  <link href="https://emicrotasks.com/assets/global/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://emicrotasks.com/assets/global/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/global/css/line-awesome.min.css">

  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/animate.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/slick.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/odometer.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/nice-select.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/main.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/custom.css">
  
  <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
  

  <style>
    *:focus {
      outline: none;
    }

    .form--control {
      padding-right: 2px !important;
    }
    
    .page{
  margin: 50px auto;
  width: 70%;
  background-color: #fff;
  border-radius: 5px;
  padding: 50px;
}

.page-header{
  margin-bottom: 20px;
}
  .page-header h2{
    float: left;
    font-size: 22px;
    text-transform: uppercase;
    font-weight: bold;
    color: #555;
  }

  .page-header .student-search{
    float: right;
  }

    .page-header .student-search input{
      border-radius: 5px;
      border: 1px solid #eaeaea;
      padding: 8px 15px;
      font-size: 14px;
    }

    .page-header .student-search button{
      border-radius: 5px;
      border: 1px solid #eaeaea;
      padding: 8px 15px;
      font-size: 14px;
      background-color: #4ba6c3;
      color: #fff
    }

.student-list{}

  .student-item{
    margin: 0 0 20px 0;
    padding: 0 0 20px 0;
    border-bottom: 1px solid #eaeaea;
  }

    .student-details{
      width: 50%;
      float: left;
    }

      .student-details .avatar{
        width: 40px;
        height: auto;
        border-radius: 20px;
        float: left;
        margin-right: 14px
      }

      .student-details h3{
        margin: 4px 0 2px 0;
        font-weight: bold;
        color: #4ba6c3;
      }

      .student-details .email{
        color: #888;
        font-size: 14px;
      }


    .joined-details{
      width: 50%;
      float: left;
      text-align: right;
    }

      .joined-details .date{
        margin-top: 15px;
        display: block;
        font-size: 14px;
        color: #999;
      }

  .student-item:last-child{
    margin: 0;
    padding: 0;
    border-bottom: none;
  }

.pagination{
  margin: 40px 0 0 0;
  text-align: center;
}

  .pagination li{
    display: inline;
    cursor:pointer;
  }

    .pagination li span{
      border: 1px solid #eaeaea;
      border-radius: 5px;
      padding: 3px 8px;
      text-decoration: none;
      color: #4ba6c3;
    }

    .pagination li span.active,
    .pagination li span:hover{
      background-color: #4ba6c3;
      color: #fff;
    }
/* https://meyerweb.com/eric/tools/css/reset/
   v2.0 | 20110126
   License: none (public domain)
*/



blockquote, q {
  quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
  content: '';
  content: none;
}
/*

RESPONSTABLE 2.0 by jordyvanraaij
  Designed mobile first!

If you like this solution, you might also want to check out the 1.0 version:
  https://gist.github.com/jordyvanraaij/9069194

*/
.responstable {
  margin: 1em 0;
  width: 100%;
  overflow: hidden;
  background: rgb(250, 249, 248);
  color: #024457;
  border-radius: 5px;
  border: 1px solid rgb(250, 249, 248);
  
  background-color: rgb(250, 249, 248);
}
.responstable tr {
  border: 1px solid rgb(250, 249, 248);
}
.responstable tr:nth-child(odd) {
  background-color: rgb(250, 249, 248);
}
.responstable th {
  display: none;
  border: 1px solid #FFF;
  background-color: #51b0ff;
  color: #FFF;
  padding: 1em;
  border-top-left-radius: 1rem;
  border-top-right-radius: 1rem;
  
}
.responstable th:first-child {
  display: table-cell;
  text-align: center;
}
.responstable th:nth-child(2) {
  display: table-cell;
}
.responstable th:nth-child(2) span {
  display: none;
}
.responstable th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .responstable th:nth-child(2) span {
    display: block;
  }
  .responstable th:nth-child(2):after {
    display: none;
  }
}
.responstable td {
  display: table-row;
  word-wrap: break-word;
  max-width: 7em;
  border-bottom-left-radius: 1rem;
  border-top-right-radius: 1rem;
  padding: 1.5rem 0.75rem;
    vertical-align: top;
    margin-bottom: initial;
}
.responstable td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid rgb(250, 249, 248);
}
@media (min-width: 480px) {
  .responstable td {
    border: 1px solid rgb(250, 249, 248);
  }
}
.responstable th, .responstable td {
  text-align: left;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .responstable th, .responstable td {
    display: table-cell;
    padding: 1em;
  }
}

  @media screen and (min-width: 62em){
.css-1e9se9j {
    gap: 0px;
}}
.css-1e9se9j {
    display: flex;
    box-sizing: border-box;
    margin: 0px;
    min-width: 0px;
    flex: 1 1 0%;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: start;
    justify-content: start;
    gap: 0.5rem;
}

@media screen and (min-width: 30em){
.css-1rrt8d8 {
    padding-top: 0.5625rem;
    padding-bottom: 0.5625rem;
}}
.css-1rrt8d8 {
    box-sizing: border-box;
    background: none rgb(255, 255, 255);
    
    text-align: left;
    text-decoration: none;
    border: 1px solid rgb(212, 210, 208);
    cursor: pointer;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    position: relative;
    margin: 0px;
    padding: 0.25rem 1rem;
    line-height: 1.5;
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    font-size: 1rem;
    font-weight: 700;
    border-radius: 0.5rem;
    transition: border-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, background-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, opacity 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, box-shadow 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
    display: inline-flex;
    width: auto;
    
    
    
    color: rgb(45, 45, 45);
    white-space: nowrap;
}
.css-v7l8ke {
    width: 1.5rem;
    height: 1.5rem;
    color: inherit;
    display: block;
    flex: 0 0 auto;
    margin-left: 0.5rem;
}
.css-ek18nq {
    width: 100%;
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    overflow: auto;
}
.css-ek18nq > div {
    border-block-end: none;
    padding-block-start: 0px;
}
.css-bglvc5 {
    display: flex;
    flex-direction: row;
    width: calc(100% - 0.5rem);
    border-bottom: 1px solid rgb(118, 118, 118);
    border-top-color: rgb(118, 118, 118);
    border-right-color: rgb(118, 118, 118);
    border-left-color: rgb(118, 118, 118);
    position: relative;
    -webkit-box-pack: justify;
    justify-content: space-between;
    margin: 0.25rem;
}
.css-1v1gwbc[disabled] {
    pointer-events: none;
    cursor: unset;
}
.css-ek18nq > div > button {
    background-color: rgb(243, 242, 241);
    z-index: 0;
}
.css-1v1gwbc {
    display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-flex: 0;
    flex-grow: 0;
    flex-shrink: 0;
    background-color: rgb(255, 255, 255);
    position: relative;
    cursor: pointer;
    z-index: 5;
    border: none;
    padding: 0px 0.5rem;
    transition: border-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, background-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, opacity 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, box-shadow 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
}
.css-1xqhio {
    width: 1.5rem;
    height: 1.5rem;
    color: inherit;
}
.css-ek18nq > div div[aria-hidden]:first-of-type {
    background: linear-gradient(90deg, rgb(243, 242, 241), transparent);
}
.css-bglvc5 .e64b7mo3 {
    background: linear-gradient(90deg, rgb(255, 255, 255), rgba(255, 255, 255, 0.667), rgba(255, 255, 255, 0));
}
.css-bglvc5 .e64b7mo3, .css-bglvc5 .e64b7mo2 {
    display: flex;
    width: 35px;
    z-index: 1;
    pointer-events: none;
}    .css-1d9njgn {
        display: flex;
        flex-flow: row nowrap;
        overflow-x: auto;
        padding: 0.25rem;
        -webkit-box-flex: 1;
        flex-grow: 1;
        margin: -0.25rem -1rem;
    }

    .css-ek18nq [role="tab"][aria-selected="true"] {
        color: rgb(37, 87, 167);
    }

    .css-1atbrsf[aria-selected="true"] {
        color: rgb(45, 45, 45);
        font-weight: 700;
    }

    .css-ek18nq [role="tab"] {
        color: rgb(45, 45, 45);
        font-weight: 700;
        font-size: 1rem;
        border-block-end: none;
    }

    .css-1atbrsf {
        padding: 1rem;
        border: 1px solid transparent;
        margin: -1px;
        background-color: transparent;
        cursor: pointer;
        font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
        flex-shrink: 0;
        color: rgb(118, 118, 118);
        display: flex;
        align-items: flex-end;
        overflow: visible;
        transition: border-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, background-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, opacity 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, box-shadow 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
    }

    .css-ek18nq [role="tab"][aria-selected="true"] div,
    .css-ek18nq [role="tab"][aria-selected="true"] span {
        color: rgb(37, 87, 167);
    }

    .css-ek18nq [role="tab"][aria-selected="true"]>span {
        border-block-end: 3px solid rgb(37, 87, 167);
        margin-block-end: -0.6875rem;
        padding-block-end: 0.5rem;
    }

    .css-1atbrsf[aria-selected="true"] .e1ejolor1 {
        border-bottom: 3px solid rgb(45, 45, 45);
    }

    .css-ek18nq [role="tab"] div,
    .css-ek18nq [role="tab"] span {
        color: rgb(45, 45, 45);
    }

    .css-ek18nq [role="tab"]>span {
        border-block-end: 3px solid transparent;
    }

    .css-1atbrsf .e1ejolor1 {
        box-sizing: border-box;
        display: flex;
        flex-direction: row;
        padding-top: 1rem;
        padding-bottom: 0.8125rem;
        margin-top: -1rem;
        margin-bottom: -1rem;
        border-bottom: 3px solid transparent;
    }

    .css-ek18nq [role="tab"] div,
    .css-ek18nq [role="tab"] span {
        color: rgb(45, 45, 45);
    }

    .css-1n4e2fq {
        display: flex;
        flex-direction: column;
        -webkit-box-pack: end;
        justify-content: flex-end;
        height: 100%;
    }

    .css-ek18nq [role="tab"] div,
    .css-ek18nq [role="tab"] span {
        color: rgb(45, 45, 45);
    }

    .css-smaipe {
        font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
        font-weight: inherit;
        color: rgb(89, 89, 89);
        font-size: inherit;
        line-height: inherit;
    }

    .css-ek18nq [role="tab"] {
        color: rgb(45, 45, 45);
        font-weight: 700;
        font-size: 1rem;
        border-block-end: none;
    }

    .css-1atbrsf {
        padding: 1rem;
        border: 1px solid transparent;
        margin: -1px;
        background-color: transparent;
        cursor: pointer;
        font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
        flex-shrink: 0;
        color: rgb(118, 118, 118);
        display: flex;
        align-items: flex-end;
        overflow: visible;
        transition: border-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, background-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, opacity 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, box-shadow 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
    }

    .css-ek18nq [role="tab"] div,
    .css-ek18nq [role="tab"] span {
        color: rgb(45, 45, 45);
    }

    .css-ek18nq [role="tab"]>span {
        border-block-end: 3px solid transparent;
    }

    .css-1atbrsf .e1ejolor1 {
        box-sizing: border-box;
        display: flex;
        flex-direction: row;
        padding-top: 1rem;
        padding-bottom: 0.8125rem;
        margin-top: -1rem;
        margin-bottom: -1rem;
        border-bottom: 3px solid transparent;
    }

    .css-1n4e2fq {
        display: flex;
        flex-direction: column;
        -webkit-box-pack: end;
        justify-content: flex-end;
        height: 100%;
    }

    .css-ek18nq [role="tab"] div,
    .css-ek18nq [role="tab"] span {
        color: rgb(45, 45, 45);
    }

    .css-1qv0295 {
        display: flex;
        box-sizing: border-box;
        margin: 0px;
        min-width: 0px;
    }

    .css-1boaljq {
        display: flex;
        box-sizing: border-box;
        margin: 0px;
        min-width: 0px;
        color: rgb(89, 89, 89);
    }

    @media screen and (min-width: 48em) {
        .css-qahc4h {
            display: inline-block;
        }
    }

    .css-qahc4h {
        box-sizing: border-box;
        margin: 0px 0.25rem 0px 0px;
        min-width: 0px;
        display: none;
        height: 1.25rem;
    }

    .css-1nhvvuv {
        width: 1.25rem;
        height: 1.25rem;
        color: inherit;
    }

    .css-1mnt7bn {
        font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
        font-weight: inherit;
        color: rgb(89, 89, 89);
        font-size: inherit;
        line-height: inherit;
        padding-right: 0.25rem;
    }
.css-15dtwi7 {
    display: flex;
    box-sizing: border-box;
    margin: 0px;
    min-width: 0px;
    align-items: flex-end;
    -webkit-box-pack: end;
    justify-content: flex-end;
}
.css-12f7u05 {
    display: flex;
    box-sizing: border-box;
    margin: 0px;
    min-width: 0px;
    flex-direction: column;
}
.css-2prryw {
    display: inline-flex;
    position: relative;
    flex-direction: row;
    z-index: 0;
    padding-block: 0px;
    padding-inline: 0px;
    border: none;
}
.css-2prryw label[data-value="yes"], .css-2prryw label[value="yes"], .css-2prryw button[value="yes"] {
    background-color: rgb(255, 255, 255);
    border-color: rgb(212, 210, 208);
    color: rgb(45, 45, 45);
}
.css-9splde {
    box-sizing: border-box;
    background: none rgb(255, 255, 255);
    appearance: none;
    text-align: left;
    text-decoration: none;
    border: 1px solid rgb(212, 210, 208);
    cursor: pointer;
    user-select: none;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    position: relative;
    margin: 0px -1px 0px 0px;
    line-height: 1.5;
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    font-size: 1rem;
    font-weight: 700;
    transition: border-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, background-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, opacity 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, box-shadow 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
    display: inline-flex;
    width: auto;
    color: rgb(37, 87, 167);
    border-radius: 0.5rem 0px 0px 0.5rem;
    padding: 9px;
}
.css-2prryw svg {
    margin: 0px;
}
.css-1uvoqv {
    width: 1.5rem;
    height: 1.5rem;
    color: inherit;
    margin-left: 0.5rem;
    margin-right: 0px;
}
.css-2prryw label[data-value="maybe"], .css-2prryw label[value="maybe"], .css-2prryw button[value="maybe"] {
    background-color: rgb(89, 89, 89);
    border-color: rgb(118, 118, 118);
    color: rgb(255, 255, 255);
}
.css-nwcchw {
    box-sizing: border-box;
    background: none rgb(255, 255, 255);
    appearance: none;
    text-align: left;
    text-decoration: none;
    border: 1px solid rgb(212, 210, 208);
    cursor: pointer;
    user-select: none;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    position: relative;
    margin: 0px -1px 0px 0px;
    line-height: 1.5;
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    font-size: 1rem;
    font-weight: 700;
    transition: border-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, background-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, opacity 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, box-shadow 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
    display: inline-flex;
    width: auto;
    color: rgb(37, 87, 167);
    border-radius: 0px;
    padding: 9px;
}
.css-2prryw label[data-value="no"], .css-2prryw label[value="no"], .css-2prryw button[value="no"] {
    background-color: rgb(255, 255, 255);
    border-color: rgb(212, 210, 208);
    color: rgb(45, 45, 45);
}
.css-e7nyx6 {
    box-sizing: border-box;
    background: none rgb(255, 255, 255);
    appearance: none;
    text-align: left;
    text-decoration: none;
    border: 1px solid rgb(212, 210, 208);
    cursor: pointer;
    user-select: none;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    position: relative;
    margin: 0px;
    line-height: 1.5;
    font-family: "Noto Sans", "Helvetica Neue", Helvetica, Arial, "Liberation Sans", Roboto, Noto, sans-serif;
    font-size: 1rem;
    font-weight: 700;
    transition: border-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, background-color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, opacity 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, box-shadow 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, color 200ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
    display: inline-flex;
    width: auto;
    color: rgb(37, 87, 167);
    border-radius: 0px 0.5rem 0.5rem 0px;
    padding: 9px;
}
 /* Dropdown Styles */
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-toggle {
  color: #000;
  text-decoration: none;
  padding: 10px;
  display: inline-block;
}

.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
  padding: 10px;
  display: none;
}

.dropdown-menu a {
  display: block;
  color: #000;
  text-decoration: none;
  padding: 5px 0px;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-menu {
  display: block;
}

/* Change the background color of the dropdown menu items on hover */
.dropdown-menu a:hover {
  
}
  </style>
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/color.php?color=51b0ff">
</head>

<body data-new-gr-c-s-check-loaded="14.1098.0" data-gr-ext-installed="">
<% String mail = request.getParameter("email"); %>
<%
String email = request.getParameter("email");
String firstName = null;
String lastName = null;
String Phone = null;
String Pass = null;
String photo = null;
String pwd = null;
String about = null;
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

// execute query to get user's photo
String querys = "SELECT * FROM addEmployer WHERE employerEmail=?";
PreparedStatement stmts = conn.prepareStatement(querys);
stmts.setString(1, email);
ResultSet rss = stmts.executeQuery();

// display user's photo
if (rss.next()) {
	  firstName = rss.getString("companyName");
	     lastName = rss.getString("employerName");
	     Phone = rss.getString("employerLocation");
	     Pass = rss.getString("employerPhone");
	     about = rss.getString("companyDescription");
	     pwd = rss.getString("employerPassword");
	     
	     Blob imageBlob = rss.getBlob("companyLogo");
	     byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
	     String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	     photo = "data:image/png;base64," + imageBase64; // assuming image type is png, change accordingly
}
%>




<nav>
    <section class="flex_content">
        <figure class="logo fixed_flex">
            <!-- <img src="https://i.postimg.cc/02NrFwT5/canva.png" alt=""> -->
            <figcaption>
                <strong class="title" style="letter-spacing: 0.2rem;">ARBIET</strong> 
            </figcaption>
        </figure>
    </section>
    <section class="flex_content nav_content" id="nav_content">
  <a href="employerHome.jsp?email=<%=mail%>" class="">Home</a>
  
  <div class="dropdown">
    <a href="#" class="">Job</a>
    <div class="dropdown-menu">
      <!-- Dropdown menu content for Post Job -->
      <a href="jobPost.jsp?email=<%=mail%>">Post a job</a>
      <a href="postedJobs.jsp?email=<%=mail%>">Posted Jobs</a>
      <a href="manageJobs.jsp?email=<%=mail%>">Manage Jobs</a>
    </div>
  </div>
  <div class="dropdown">
    <a href="#" class="">Candidates</a>
    <div class="dropdown-menu">
      <!-- Dropdown menu content for Post Job -->
      <a href="manageCandidates.jsp?email=<%=mail%>">Manage Candidates</a>
      
    </div>
  </div>
  
  <div class="dropdown">
    <a href="#" class="">User</a>
    <div class="dropdown-menu">
      <!-- Dropdown menu content for Post Job -->
      <a href="profileEmployer.jsp?email=<%=mail%>">Profile</a>
      <a href="employerSignup.jsp">Signout</a>
    </div>
  </div>
 
</section>  
    
</nav>


  

  <div class="banner-inner bg_img" style="background: url(https://emicrotasks.com/assets/templates/basic/images/bg/banner.png);">
    <div class="container">
      <div class="banner__inner__content">
        <h2 class="banner__inner__content-title">Manage Candidates</h2>
        <ul class="breadcums d-flex justify-content-center">
          <li><a href="employerHome.jsp?email=<%=mail%>">Home</a></li>
          <li>/</li>
          <li>My Candidate</li>
        </ul>
      </div>
    </div>
    <div class="shapes">
      <!-- <img src="https://emicrotasks.com/assets/images/frontend/breadcrumb/638eee7e81c1f1670311550.png" alt="overview" class="shape1"> -->
    </div>
  </div>
  <section class="dashboard-section padding-top padding-bottom">
    <div class="container">
      <div class="row">
  <div class="col-lg-4 col-xl-3">
          <div class="dashboard__sidebar">
            <div class="user__profile">
            
            <form action="imageUpdateEmployer" enctype="multipart/form-data" method="post">
               <input name="maill" type="hidden" value="<%=mail%>">
                  <div class="col-xl-3">
                    <div class="job-poster">
                      <div class="job-poster-header">
                        <div class="thumb">
                          <div class="avatar-preview">
                            <div class="profilePicPreview w-100" id="previewImg" style="background-image: url(<%=photo%>); width: 390%!important; border-radius: 8rem; margin-top: -1rem;">
                            </div>
                          </div>
                         <div class="avatar-edit">
                            <input type="file" class="profilePicUpload" name="employerImage" id="image" accept=".png, .jpg, .jpeg" onchange="handleFileSelect()">
                            <label for="image" style="background: #51B0FF;"><i style="color: #fff;" class="fa-solid fa-camera"></i></label>
                            
                         </div>
                         
                        </div>
                      </div>
                    </div>
                  </div>
               <button style="margin-top: -0.8rem; opacity: 0.5;"  id="ChangeLogo" class="cmn--btn btn--md" type="submit"  disabled>Select Logo First</button>
              </form>
              
              
<script>
  function handleFileSelect() {
    var fileInput = document.getElementById('image');
    var changeLogoButton = document.getElementById('ChangeLogo');

    if (fileInput.files && fileInput.files[0]) {
      changeLogoButton.disabled = false;
      changeLogoButton.innerHTML = "Change Logo";
      changeLogoButton.style = "opacity: 1";
    } else {
      changeLogoButton.disabled = true;
      
    }
  }
</script>
              
              <div class="user__profile-content">
                <h4 style="margin-top: 0.9rem;" class="user__profile-title"><%=firstName %></h4>
                <span class="designation d-block">
                  
                </span>
                <h6 id="emaill" class="text--base d-block">
                  Email Id: <%=email %>
                </h6>

              </div>
            </div>
            <ul class="dashboard__sidebar__menu">
              <li>
                <a href="profileEmployer.jsp?email=<%=email %>" class="">Profile</a>
              </li>
              <li>
                <a href="postedJobs.jsp?email=<%=email %>" class="">Posted Jobs</a>
              </li>
              <li>
                <a href="manageJobs.jsp?email=<%=email %>" class="">Manage Jobs</a>
              </li>
				<li>
                <a href="manageCandidates.jsp?email=<%=email %>" class="">Manage Candidates</a>
              </li>
              <li>
                <a href="employerSignup.jsp">
                  Sign Out </a>
              </li>
            </ul>
            <span class="btn btn-close dashboard__sidebar__close d-lg-none"></span>
          </div>
        </div>
      <% 
String status = request.getParameter("filterOption");
      String uniqueId = request.getParameter("uniqueId");
      

// Connect to the database
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew", "root", "root");

// Execute the query to retrieve candidates based on the selected status
String query = "SELECT * FROM appliedJobs WHERE status = ? and jobUniqueKey = ?";
PreparedStatement pstmt = con.prepareStatement(query);
pstmt.setString(1, status);
pstmt.setString(2, uniqueId);
ResultSet rs = pstmt.executeQuery();
%>

<div class="page">
     <%-- <a href="manageCandidates.jsp?filterOption=sortlist&email=<%= email %>">Sortlist Candidates</a> |
    <a href="manageCandidates.jsp?filterOption=rejected&email=<%= email %>">Rejected Candidates</a> |
    <a href="manageCandidates.jsp?filterOption=withhold&email=<%= email %>">Withheld Candidates</a> --%>
    
    
    <form method="post" action="manageCandidates.jsp" id="myForm">
    <input type="hidden" name="email" value="<%=email%>">
       <select name="uniqueId"   data-testid="candidate-list-header-expandFilter-button"
  class="css-1rrt8d8 e8ju0x51" id="filterButton" onchange="submitForm()">
  <option selected="">Filters</option>
  									<%
  									String jobName=null;
  									String uid=null;
		// connect to database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conz = DriverManager.getConnection("jdbc:mysql://localhost:3306/arbietNew?","root","root");

		// execute query to get new courses
// execute query to get user's photo
String queryz = "SELECT * FROM joblist WHERE email=?";
PreparedStatement stmtz = conz.prepareStatement(queryz);
stmtz.setString(1, email);
		ResultSet rsz = stmtz.executeQuery();

		// display new courses
		while (rsz.next()) {
					uid=rsz.getString(2);
			     jobName = rsz.getString("jobName");
			     
			     
			 
			
	%>
				                    <option value="<%=uid %>"><%=jobName %></option>
				                    
				                    <%
}

// close database connection
rsz.close();
stmtz.close();
conz.close();
%>
				                   
  <svg xmlns="http://www.w3.org/2000/svg" focusable="false" role="img" fill="currentColor" viewBox="0 0 24 24"
    aria-hidden="true" class="css-v7l8ke eac13zx0">
    <path d="M18.002 9.888c.2-.2.204-.521.008-.716l-.707-.708a.506.506 0 00-.716.01L12 13.06 7.413 8.474a.507.507 0 00-.716-.01l-.708.707a.507.507 0 00.01.717l5.647 5.648c.1.1.234.148.367.143a.491.491 0 00.34-.144h.001l.008-.008 5.64-5.64z">
    </path>
  </svg>
</select>
</form>

<div class="dropdown-menu" id="dropdownMenu">
  <ul id="jobsList">
    <!-- List of jobs will be populated dynamically -->
  </ul>
</div>

<script>
  function submitForm() {
    document.getElementById("myForm").submit();
  }
</script>


<!-- <script>
function fetchJobs() {
	  var xhr = new XMLHttpRequest();
	  xhr.open("GET", "jobPost", true);
	  xhr.onreadystatechange = function() {
	    if (xhr.readyState === 4 && xhr.status === 200) {
	      var jobs = JSON.parse(xhr.responseText);
	      var jobsList = document.getElementById("jobsList");
	      
	      // Clear previous options
	      jobsList.innerHTML = "";
	      
	      // Populate dropdown with fetched jobs
	      jobs.forEach(function(job) {
	        var li = document.createElement("li");
	        var a = document.createElement("a");
	        a.href = "#";
	        a.textContent = job;
	        li.appendChild(a);
	        jobsList.appendChild(li);
	      });
	    }
	  };
	  xhr.send();
	}

</script> -->

   

      <div class="css-1e9se9j e37uo190">
        <div id="ifl-Tabs-179" class="css-ek18nq e1v394w80">
            <div class="css-bglvc5 e64b7mo0"><!-- <button aria-label="Previous tab" disabled=""
                    class="css-1v1gwbc e64b7mo4"><svg xmlns="http://www.w3.org/2000/svg" focusable="false" role="img"
                        fill="currentColor" viewBox="0 0 24 24" aria-hidden="true" class="css-1xqhio eac13zx0">
                        <path
                            d="M14.112 18.002c.2.2.52.204.716.008l.707-.707a.507.507 0 00-.009-.716L10.94 12l4.587-4.587c.2-.2.205-.521.01-.716l-.708-.708a.507.507 0 00-.716.01l-5.648 5.647c-.1.1-.148.234-.143.367.002.124.05.247.143.34l.001.001a.758.758 0 00.008.008l5.64 5.64z">
                        </path>
                    </svg></button> -->
                <div role="tablist" id="ifl-Tabs-179-TabList" class="css-1d9njgn e64b7mo1">
                	<button role="tab" data-testid="Active" aria-selected="true" id="ifl-Tabs-179-ifl-Tab-0" tabindex="0" class="css-1atbrsf e1ejolor2">
                		<span class="css-1xdhyk6 e1ejolor1">
                			<span class="css-1n4e2fq e1ejolor0">
                				<span class="css-smaipe e1wnkr790" onclick="window.location.href='manageCandidates.jsp?filterOption=sortlist&email=<%= email %>'">Active</span>
                			</span>
                		</span>
                	</button>
                	<button role="tab" data-testid="Shortlist" aria-selected="false" id="ifl-Tabs-179-ifl-Tab-1" tabindex="-1" class="css-1atbrsf e1ejolor2">
                		<span class="css-1xdhyk6 e1ejolor1">
                			<span class="css-1n4e2fq e1ejolor0">
                                <div class="css-1qv0295 e37uo190">
                                    <div class="css-1boaljq e37uo190">
                                        <div class="css-qahc4h eu4oa1w0">
                                        	<svg xmlns="http://www.w3.org/2000/svg"
                                                focusable="false" role="img" fill="currentColor" viewBox="0 0 20 20"
                                                aria-hidden="true" class="css-1nhvvuv eac13zx0">
                                                <path
                                                    d="M17.069 5.935a.5.5 0 000-.708l-.354-.353a.5.5 0 00-.707 0l-8.483 8.483-3.533-3.532a.5.5 0 00-.707 0l-.353.353a.5.5 0 000 .707l3.532 3.533-.001.001.707.707a.499.499 0 00.71 0l.706-.707v-.001l8.483-8.483z">
                                                </path>
                                            </svg>
                                           </div>
                                   			<span class="css-1mnt7bn e1wnkr790" onclick="window.location.href='manageCandidates.jsp?filterOption=sortlist&email=<%= email %>&uniqueId=<%=uniqueId%>'">Shortlist</span>
                                    </div>
                                </div>
                            </span>
                        </span>
                    </button>
                    <button role="tab" data-testid="Awaiting Review" aria-selected="false" id="ifl-Tabs-179-ifl-Tab-2" tabindex="-1" class="css-1atbrsf e1ejolor2">
                    	<span class="css-1xdhyk6 e1ejolor1">
                    		<span class="css-1n4e2fq e1ejolor0">
                    			<span class="css-smaipe e1wnkr790" onclick="window.location.href='manageCandidates.jsp?filterOption=withhold&email=<%= email %>&uniqueId=<%=uniqueId%>'">Awaiting review</span>
                    		</span>
                    	</span>
                    </button>
                    <button role="tab" data-testid="Reviewed" aria-selected="false" id="ifl-Tabs-179-ifl-Tab-3" tabindex="-1" class="css-1atbrsf e1ejolor2">
                    	<span class="css-1xdhyk6 e1ejolor1">
                    		<span class="css-1n4e2fq e1ejolor0">
                    			<span class="css-smaipe e1wnkr790" onclick="window.location.href='manageCandidates.jsp?filterOption=sortlist&email=<%= email %>&uniqueId=<%=uniqueId%>'">Reviewed</span>
                    		</span>
                    	</span>
                    </button>
                    <button role="tab" data-testid="Contacting" aria-selected="false" id="ifl-Tabs-179-ifl-Tab-4" tabindex="-1" class="css-1atbrsf e1ejolor2">
                    	<span class="css-1xdhyk6 e1ejolor1">
                    		<span class="css-1n4e2fq e1ejolor0">
                    			<span class="css-smaipe e1wnkr790" onclick="window.location.href='manageCandidates.jsp?filterOption=sortlist&email=<%= email %>&uniqueId=<%=uniqueId%>'">Contacting</span>
                    		</span>
                    	</span>
                    </button>
                    <button role="tab" data-testid="Rejected" aria-selected="false" id="ifl-Tabs-179-ifl-Tab-5" tabindex="-1" class="css-1atbrsf e1ejolor2">
                    	<span class="css-1xdhyk6 e1ejolor1">
                    		<span class="css-1n4e2fq e1ejolor0">
                    			<span class="css-smaipe e1wnkr790" onclick="window.location.href='manageCandidates.jsp?filterOption=rejected&email=<%= email %>&uniqueId=<%=uniqueId%>'">Rejected</span>
                    		</span>
                    	</span>
                    </button>
                    <button role="tab" data-testid="Hired" aria-selected="false" id="ifl-Tabs-179-ifl-Tab-6" tabindex="-1" class="css-1atbrsf e1ejolor2">
                    	<span class="css-1xdhyk6 e1ejolor1">
                    		<span class="css-1n4e2fq e1ejolor0">
                    			<span class="css-smaipe e1wnkr790" onclick="window.location.href='manageCandidates.jsp?filterOption=sortlist&email=<%= email %>&uniqueId=<%=uniqueId%>'">Hired</span>
                    		</span>
                    	</span>
                    </button><!-- <button role="tab" data-testid="Withdrawn"
                        aria-selected="false" id="ifl-Tabs-179-ifl-Tab-7" tabindex="-1"
                        class="css-1atbrsf e1ejolor2"><span class="css-1xdhyk6 e1ejolor1"><span
                                class="css-1n4e2fq e1ejolor0"><span class="css-smaipe e1wnkr790">
                                    Withdrawn</span></span></span></button> --></div>
                <div aria-hidden="true" class="css-1u8qly9 e64b7mo2"></div><!-- <button aria-label="Next tab"
                    class="css-1v1gwbc e64b7mo4"><svg xmlns="http://www.w3.org/2000/svg" focusable="false" role="img"
                        fill="currentColor" viewBox="0 0 24 24" aria-hidden="true" class="css-1xqhio eac13zx0">
                        <path
                            d="M9.888 5.998a.506.506 0 00-.716-.008l-.707.707a.506.506 0 00.01.716L13.06 12l-4.587 4.587c-.2.2-.204.521-.009.716l.707.707a.507.507 0 00.717-.009l5.647-5.648c.1-.1.148-.233.144-.366a.492.492 0 00-.144-.34v-.001a.611.611 0 00-.009-.009L9.888 5.998z">
                        </path>
                    </svg></button> -->
                    
            </div>
        </div>
    </div>
    <%
    String jobNamex = null;
// connect to database
Class.forName("com.mysql.cj.jdbc.Driver");

// execute query to get user's photo
PreparedStatement stmtd = conn.prepareStatement("SELECT * FROM appliedJobs WHERE jobUniqueKey=?");
stmtd.setString(1, uniqueId);
ResultSet rssd = stmtd.executeQuery();

// display user's photo
if (rssd.next()) {
	jobNamex = rssd.getString("jobName");
	  
}
%>
    
    <h6>Filtered <%=jobNamex %> - <%= status %></h6>

    <table class="responstable" style="border-collapse: collapse;">
        <thead>
            <tr class="tr">
                <th class="th">Name</th>
                <th class="th">Job</th>
                <th class="th">Phone</th>
                <th class="th">Status</th>
            </tr>
        </thead>
        <tbody>
            <% while (rs.next()) { %>
            <tr class="tr">
                <td class="td"><%= rs.getString("applyFName")%>&nbsp;<%= rs.getString("applyLName") %></td>
                <td class="td"><%= rs.getString("jobName") %></td>
                <td id="cId" style="display: none;" class="td"><%= rs.getString("uniqueApplyId") %></td>
                <td class="td" style="padding-left: 2rem;"><%= rs.getString("applyPhone") %></td>
                <td class="td" style="padding-left: 4.5rem;">
                	<div data-heap-redact-attributes="name" class="css-12f7u05 e37uo190">
                		<div role="group" name="shortlistSentimentSelector-balaji" legend="Interest" data-testid="ApplicantSentimentSelector" data-test-size="md" class="css-2prryw erqkuc00">
                			<button onclick="selectCandidate(this)"  data-id="<%= rs.getString("uniqueApplyId") %>" data-status="sortlist" aria-label="Add to Shortlist balaji" data-testid="ApplicantSentiment-yes" data-heap-sentiment-set="POSITIVE" title="Add to Shortlist" value="yes" type="button" data-is-selected="false" class="css-9splde e8ju0x51">
                				<svg xmlns="http://www.w3.org/2000/svg" focusable="false" role="img" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true" class="css-1uvoqv eac13zx0"><path d="M20.137 7.402a.5.5 0 000-.708l-.709-.708a.5.5 0 00-.707 0L9.167 15.54l-3.892-3.892a.5.5 0 00-.707 0l-.706.706a.5.5 0 000 .707l4.953 4.954a.5.5 0 00.71-.001L20.137 7.402z"></path></svg>
                			</button>
                			<button onclick="withholdCandidate(this)"  data-id="<%= rs.getString("uniqueApplyId") %>" data-status="withhold" aria-label="Maybe balaji" data-testid="ApplicantSentiment-maybe" data-heap-sentiment-unset="MAYBE" title="Maybe" value="maybe" type="button" data-is-selected="true" class="css-nwcchw e8ju0x51">
                				<svg xmlns="http://www.w3.org/2000/svg" focusable="false" role="img" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true" class="css-1uvoqv eac13zx0"><path d="M12.198 4.996c1.064-.095 2.032.116 2.703.586.628.44 1.099 1.175 1.099 2.41 0 1.116-.516 1.763-1.246 2.31-.332.248-.68.456-1.054.678h-.002l-.198.119c-.405.242-.91.55-1.27.946-.61.668-.942 1.32-1.096 2.158-.13.709-.13.796-.13 1.828v.47a.5.5 0 00.5.5h1a.5.5 0 00.5-.5v-.169c0-1.2 0-1.241.097-1.767.082-.445.231-.76.607-1.172.13-.144.376-.313.82-.578l.177-.106c.371-.22.823-.488 1.248-.807C16.993 11.123 18 9.947 18 7.992c0-1.834-.747-3.205-1.951-4.048-1.162-.813-2.639-1.064-4.028-.94-1.407.126-2.663.632-3.579 1.506-.814.777-1.313 1.804-1.423 2.983-.026.275.201.5.477.5h1c.276 0 .495-.226.537-.499.096-.63.378-1.143.79-1.537.528-.504 1.329-.868 2.375-.96zM11.5 19a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5h-1z"></path></svg>
                			</button>
                			<button onclick="rejectCandidate(this)"  data-id="<%= rs.getString("uniqueApplyId") %>" data-status="rejected" aria-label="Reject balaji" data-testid="ApplicantSentiment-no" data-heap-sentiment-set="NEGATIVE" title="Reject" value="no" type="button" data-is-selected="false" class="css-e7nyx6 e8ju0x51">
                				<svg xmlns="http://www.w3.org/2000/svg" focusable="false" role="img" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true" class="css-1uvoqv eac13zx0"><path d="M4.575 18.01a.5.5 0 000 .707l.708.708a.5.5 0 00.707 0l6.01-6.01 6.01 6.01a.5.5 0 00.707 0l.707-.707a.5.5 0 000-.708L13.414 12l6.01-6.01a.5.5 0 000-.707l-.706-.708a.5.5 0 00-.707 0L12 10.586l-6.01-6.01a.5.5 0 00-.708 0l-.707.707a.5.5 0 000 .707l6.01 6.01-6.01 6.01z"></path></svg>
                			</button>
                		</div>
                	</div>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table> 
    
    
    


<% 
// Close the database resources
rs.close();
pstmt.close();
con.close();
%>

 <script>

 var email = document.getElementById("emaill").innerHTML;

 function selectCandidate(button) {
    // Make an AJAX request to the servlet endpoint
     var status = button.getAttribute("data-status");
    var uname = button.getAttribute("data-id");

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "updateManageStatus", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
        // Handle the response from the servlet if needed
        console.log(xhr.responseText);
        location.reload();
      }
    };
    xhr.send('id=' + uname + '&email=' + email + '&status=' + status);
  }

  function withholdCandidate(button) {
	  var status = button.getAttribute("data-status");
	    var uname = button.getAttribute("data-id");

	    // Make an AJAX request to the servlet endpoint
	    var xhr = new XMLHttpRequest();
	    xhr.open("POST", "updateManageStatus", true);
	    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	    xhr.onreadystatechange = function() {
	      if (xhr.readyState === 4 && xhr.status === 200) {
	        // Handle the response from the servlet if needed
	        console.log(xhr.responseText);
	        location.reload();
	      }
	    };
	    xhr.send('id=' + uname + '&email=' + email + '&status=' + status);
	  }

  function rejectCandidate(button) {
	  var status = button.getAttribute("data-status");
	    var uname = button.getAttribute("data-id");

    // Make an AJAX request to the servlet endpoint
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "updateManageStatus", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
        // Handle the response from the servlet if needed
        console.log(xhr.responseText);
        location.reload();
      }
    };
    xhr.send('id=' + uname + '&email=' + email + '&status=' + status);
  }
</script>  
 



   
   <!--  <input class = 'student__search' style="padding-left: 0.5rem;" type = 'text' placeholder = 'Search by status'>
    <div class="page-header cf">
      <h2>Candidates</h2>
    </div> -->
    <ul class="student-list">
    
                                <%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

 

    
	
     <%--  <li class="student-item cf">
        <div class="student-details">
          <img class="avatar" src="https://cdn-icons-png.flaticon.com/512/149/149071.png">
          <a href="candidateDetail.jsp?id=<%=idd%>&email=<%=mail%>">
          <h3><%=fname %> <%=lname %></h3>
          <span class="email"><%=email %></span>
          </a>
        </div>
        <div class="joined-details">
          <span class="date">Phone No: <%=phone %></span>
        </div>
      </li> --%>
      
     


    </ul>
    <div class = "pagination">
      <ul class = "pagination__list">
    
      </ul>
      
    </div>
  </div>
  </div>
  </div>
  </section>
  </body>
  
  <script>
  const $studentItem = $('.student-item');
  const $page = $('.page');
  const $pagination = $('.pagination');
  const $paginationList = $('.pagination__list');
  const $studentSearch = $('.student__search');
  const itemTotal = 10;

  // hide all 
  function hideAll() {
    $studentItem.hide();
  }

  hideAll();

  // display first 10
  function displayRange(a,b) {
    hideAll();
    // display 0 - 1 students
    $studentItem.slice(a,b).fadeIn();
    
  }

  displayRange(0, itemTotal);

  // create pagination links
  let pagination = '';
  for(var i = 0; i <= $studentItem.length / 10 - 1; i ++) {
    pagination += `
      <li><span class ="pagination__num">${i}</span></li>
  `;
  }
  $paginationList.append(pagination);
  // click on pagination num
  // pass into display range
  // calc and show range
  $('body').on('click', '.pagination__num', function () {

    hideAll();
    
    // get text number 1 - 5
    // get ranges for start and end
    let paginationText = Number($(this).text());
    let startFrom = paginationText * itemTotal + paginationText;
    let end = paginationText * itemTotal + paginationText + itemTotal;
    
    // display ranges
    displayRange(startFrom, end);
     
  });


  $studentSearch.on('input', function () {

   hideAll();
    
    $studentItem.each(function() {
      $(this).removeClass("result");
      
    });
    
    
      // value of searched
      var text = $(this).val().toLowerCase();
      // results of search
      var results = $("ul.student-list li:contains('" + text.toLowerCase() + "')");
    
       results.addClass("result");
        
        
    // if student has result class 
    // dispaly
    // else hide
    
    
    if($studentItem.hasClass('result')) {
        $('.result').show();
        $studentItem.removeClass('result');
        
       } 

   
  });

  $studentSearch.keyup(function()
  {
       if (!this.value) {
         hideAll();
         displayRange(0, itemTotal);
      }

  });
  </script>
  </html>
 
 
 
 
 
 
 


 
