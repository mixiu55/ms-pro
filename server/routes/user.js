const express=require("express");
const router=express.Router();
const pool=require("../pool");

//1.用户注册
router.post('/reg',function(req,res){
  //获取post请求的数据
  var obj=req.body;
  // console.log(obj);
  //执行SQL语句
  pool.query('SELECT * FROM yj_user WHERE uname=?',[obj.uname],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:-1,msg:"user exist"});
      return;
    }else{
      pool.query('INSERT INTO yj_user SET ?',[obj],(err,result)=>{
      if(err) throw err;
      // console.log(result);
      //判断是否插入成功
      if(result.affectedRows>0){
        res.send({code:1,msg:'reg success'});
      }
      });
    }
  })
});

//2.用户登录
router.post('/login',function(req,res){
  //2.1获取数据
  var obj=req.body;
  // console.log(obj);
  pool.query('SELECT * FROM yj_user WHERE uname=? AND upwd=?',[obj.uname,obj.upwd],(err,result)=>{
    if(err) throw err;
	// console.log(result);
	//判断数据长度是否大于0
	if(result.length>0){
    //登录成功
    // 1：将登录成功的凭据保存在session中
    req.session.uid=result[0].uid;
    // console.log(req.session);
    // 2：将成功消息发送脚手架
    res.send({code:1,msg:'login success'});
	}else{
	  res.send({code:-1,msg:'login error'});
	}
  });

});

module.exports=router;