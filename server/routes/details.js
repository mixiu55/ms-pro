const express=require("express")
const router=express.Router();
const pool=require("../pool")

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/",(req,res)=>{
  var hid=req.query.hid;
  var output={
    product:{},
    pics:[]
  }
  if(hid!==undefined){
    var sql1=`select * from yj_house where hid=?`;
    pool.query(sql1,[hid],(err,result)=>{
      if(err) throw(err);
      output.product=result[0];
      var sql2=`select * from yj_house_pic where house_id=?`
      pool.query(sql2,[hid],(err,result)=>{
        if(err) throw(err);
        output.pics=result;
        res.send(output);
      })
    })
  }else{
    res.send(output);
  }
})

module.exports=router;