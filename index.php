<?php
require_once './config/database.php';
require_once './config/config.php';
spl_autoload_register(function ($className) {
    require './app/models/' . $className . '.php';
});

$categoryModel = new CategoryModel();
$categoryList = $categoryModel->getCategoryList();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tarekraafat/autocomplete.js@7.2.0/dist/css/autoComplete.min.css">
    <link rel="stylesheet" href="/<?php echo BASE_URL; ?>/public/css/bootstrap.min.css">
    <link rel="stylesheet" href="/<?php echo BASE_URL; ?>/public/css/styles.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <!-- Chi tiet san pham -->
            <div class="col-md-4">
                <h3>Danh muc</h3>
                <ul style="list-style: none;">
                <?php
                foreach ($categoryList as $item) {
                ?>
                <li>
                    <input type="checkbox" id="<?php echo $item['category_id']; ?>" value="<?php echo $item['category_id']; ?>"/>
                    <label for="<?php echo $item['category_id']; ?>"><?php echo $item['category_name']; ?></label>
                </li>                    
                <?php
                }
                ?>
                </ul>
                  <input type="text"
                    class="form-control" name="autoComplete" id="autoComplete" aria-describedby="helpId" tabindex="1" onkeyup = "autoComplete()">
                    <ul id="showName">

                    </ul>
        </div>
          


            <!-- Danh sach san pham -->
            <div class="col-md-8">
                <div id="result">
                </div>
                <button class="btn btn-primary" id="btn-loadmore">Load more</button>
                    
            </div>
        </div>
    </div>
    <div class="mymodal">
        <div class="bg-black" onclick="modalClose()"></div>
        <div class="mymodal-body">
        </div>
    </div>
    <script>
     async function autoComplete() {   
    let name = document.getElementById('autoComplete').value;
    const url = `search.php`;
    let data = {
        name1: name,
    };

  // Gửi request
    const req = await fetch(url, {
            method: "POST",
            headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
            },
            body: JSON.stringify(data)
    });
  // chuyển dữ liệu trả về theo kiểu JSON 
     let comments = await req.json();
      let elements =   comments.map((value,index)=>{ 
            return `<li>${value['product_name']}</li>`;
        });
        let showName = document.getElementById('showName').innerHTML = elements;
 }
    </script>
</body>
</html>