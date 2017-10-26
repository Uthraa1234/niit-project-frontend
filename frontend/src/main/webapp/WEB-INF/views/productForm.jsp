<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>New Product</title>
      <link rel="stylesheet" href="resources/css/formstyle.css">
</head>
<body> 
  <center><h1 style="padding-top:20px;">Enter details of new Product</h1></center>
  <div class="logmod">
  <div class="logmod__wrapper">
    
    <div class="logmod__container">
      <ul class="logmod__tabs">
        <li data-tabtar="lgm-3"><a href="#">New Product</a></li>
       </ul>
      <div class="logmod__tab-wrapper">
   <div class="logmod__tab lgm-3">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle">Enter your personal details</span>
        </div> 
        <form name="product">
        <div class="form-group">
           <input id="prodname" required="required" class="form-control"/>
    <label class="form-label">Name</label>
    </div>
     <div class="form-group">
    <textarea rows="4" cols="30" id="proddescription"  required="required" class="form-control"></textarea>
   <label class="form-label">Description</label>
 </div>
<div class="form-group">
        <label class="form-label" >Category</label>
           <select id="prodcategory" >
            <option></option>
           </select>
    
    </div>
<div class="form-group">
          <label class="form-label">Supplier</label>
           <select id="prodsupplier" >
            <option></option>
           </select>
    
    </div>
 <div class="form-group">
           <input type="number" id="stock" required="required" class="form-control"/>
    <label class="form-label">Stock</label>
    </div>
    <div class="form-group">
           <input type="number" id="price" required="required" class="form-control"/>
    <label class="form-label">Price</label>
    </div>
<div class="form-group">
  <label class="form-label" >Image</label>
 <input type="file"  id="pic" class="form-control" accept="image/*"/>

</div>
<div clas="form-group">
  <!-- <button type="reset" class="btn3">Reset</button> -->
   <button class="btn3" id="productback" >Back</button>
  <button class="btn3"  >Done!</button>
 </div>
   
          </form>
    </div>
  </div>
</div>
</div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="resources/js/formindex.js"></script>


</body>
</html>
