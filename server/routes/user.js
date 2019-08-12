const express=require("express");
const router=express.Router();
const pool=require("../pool");

//1.用户注册
router.post('/reg',function(req,res){
  //获取post请求的数据
  var obj=req.body;
  //验证每一项的数据是否为空
  if(!obj.uname){
    res.send({code:401,msg:'uname require'});
	//return 阻止往后执行
	return;
  }
  if(!obj.upwd){
    res.send({code:402,msg:'upwd required'});
	return;
  }
  if(!obj.email){
    res.send({code:403,msg:'email required'});
	return;
  }
  if(!obj.phone){
    res.send({code:404,msg:'phone required'});
	return;
  }
  //执行SQL语句
  pool.query('INSERT INTO yj_user SET ?',[obj],function(err,result){
    if(err) throw err;
	console.log(result);
	//判断是否插入成功
	if(result.affectedRows>0){
	  res.send({code:200,msg:'reg success'});
	}
  });
});

//2.用户登录
router.post('/login',function(req,res){
  //2.1获取数据
  var obj=req.body;
  console.log(obj);
  pool.query('SELECT * FROM yj_user WHERE uname=? AND upwd=?',[obj.uname,obj.upwd],(err,result)=>{
    if(err) throw err;
	console.log(result);
	//判断数据长度是否大于0
	if(result.length>0){
	  res.send({code:1,msg:'login success'});
	}else{
	  res.send({code:-1,msg:'login error'});
	}
  });

});

module.exports=router;