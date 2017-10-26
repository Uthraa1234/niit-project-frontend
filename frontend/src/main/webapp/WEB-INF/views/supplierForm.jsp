<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>New Supplier</title>
      <link rel="stylesheet" href="css/formstyle.css">
</head>
<body> 
  <center><h1 style="padding-top:20px;">Enter details of new Supplier</h1></center>
  <div class="logmod">
  <div class="logmod__wrapper">
    
    <div class="logmod__container2">
      <ul class="logmod__tabs">
        <li data-tabtar="lgm-3"><a href="#">New Supplier</a></li>
       </ul>
      <div class="logmod__tab-wrapper">
   <div class="logmod__tab lgm-3">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle">Enter your personal details</span>
        </div> 
        <form name="supplier">
        <div class="form-group">
           <input id="supname" required="required" class="form-control"/>
    <label class="form-label">Name</label>
    </div>
     <!-- <div class="form-group">
     <input id="email" type="email" required="required" class="form-control"/>
    <label class="form-label">Email id</label></div>
    
     <div class="form-group">
     <textarea rows="4" cols="30" id="address"  required="required" class="form-control"></textarea>
    <label class="form-label">Address</label></div>
    <div class="form-group">
     <input id="zipcode" type="number" required="required" class="form-control"/>
    <label class="form-label">Zipcode</label></div> -->
     
     <div class="form-group">
    <input id="supcontact" type="number" required="required" class="form-control"/>
   <label class="form-label">Contact no.</label>
   <br>
    <button class="btn3">Done!</button>
    </div>
          </form>
    </div>
  </div>
</div>
</div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/formindex.js"></script>

</body>
</html>
