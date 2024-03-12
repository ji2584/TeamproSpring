<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
  .table-container {
    font-family: Arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
  }
  .table-container, .table-container th, .table-container td {
    border: 1px solid black;
  }
  .table-container th {
    background-color: #f2f2f2;
    padding: 8px;
  }
  .table-container td {
    padding: 8px;
  }
  .image-container {
    display: flex;
    align-items: center;
  }
  .image-container img {
    width: 50px;
    height: auto;
    margin-right: 10px;
  }
  .red-btn {
    background-color: #ff0000;
    color: white;
    padding: 6px 12px;
    border: none;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
  }
  .center-text {
    text-align: center;
  }
  .checkbox-container {
    text-align: center;
  }
</style>
</head>
<body>
<table class="table-container">
  <thead>
    <tr>
      <th rowspan="2" class="checkbox-container"><input type="checkbox"></th>
      <th span="2">상품정보</th>
      <th colspan="2">계약현황</th>
      <th rowspan="2">일차</th>
      <th rowspan="2"></th>
    </tr>
    <tr>
      <th>참여자</th>
      <th>2,260평</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="2" class="center-text"><input type="checkbox"></td>
      <td class="image-container">
        <img src="path-to-your-image.jpg" alt="상품 이미지">
        <span>x1005617422</span>
      </td>
      <td class="center-text">참여가</td>
      <td class="center-text">2,260평</td>
      <td class="center-text">17</td>
      <td rowspan="2" class="center-text"><button class="red-btn">입찰</button></td>
    </tr>
    <tr>
      <td colspan="4">직접 등록 나의 라벨링 데이터 1920-30 네덜란드계획주의 A CAPTIVE WAT</td>
    </tr>
    <!-- Repeat for each set of rows needed -->
  </tbody>
</table>
</body>
</html>
