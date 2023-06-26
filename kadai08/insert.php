<?php

echo('hello world');

//1. POSTデータ取得
$divingNumber = $_POST['divingNumber'];
$date = $_POST['date'];
$location = $_POST['location'];
$diveSite = $_POST['diveSite'];
$rating = $_POST['rating'];
$comment = $_POST['comment'];

//2. DB接続します
try {
  //ID:'root', Password: xamppは 空白 ''
  $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}

//３．データ登録SQL作成

// 1. SQL文を用意
// $name などにしないのは、DBに直接悪意のコードを読み込まないため
$stmt = $pdo->prepare("INSERT INTO 
gs_dive_table(
  id, divingNumber, date, location, diveSite, rating, comment
   ) VALUES (
    NULL, :divingNumber, :date, :location, :diveSite, :rating, :comment
   )");

//  2. バインド変数を用意
// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR

$stmt->bindValue(':divingNumber', $divingNumber, PDO::PARAM_INT);
$stmt->bindValue(':date', $date, PDO::PARAM_STR);
$stmt->bindValue(':location', $location, PDO::PARAM_STR);
$stmt->bindValue(':diveSite', $diveSite, PDO::PARAM_STR);
$stmt->bindValue(':rating', $rating, PDO::PARAM_STR);
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR);

//  3. 実行
$status = $stmt->execute();

//４．データ登録処理後
if($status === false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit('ErrorMessage:'.$error[2]);
}else{
  //５．登録が成功した場合の処理select.phpへリダイレクト
  header('Location: select.php');
  


}
?>

