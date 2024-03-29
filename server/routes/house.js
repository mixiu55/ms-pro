const express=require("express");
var router=express.Router();
var query=require("./query");

router.get("/",(req,res)=>{
  var output={
    count:0,
    pageSize:9,
    pageCount:0,
    pno:req.query.pno||0,
    data:[]
  };
  var kw=req.query.kw;
  if(kw){
    //"mac i5 128g"
    var kws=kw.split(" ");
    //[mac,i5,128g]
    kws.forEach((elem,i,arr)=>{
      arr[i]=`subtitle like '%${elem}%'`;
    })
    /*[
      title like '%mac%',
      title like '%i5%',
      title like '%128g%'
    ]*/
    //join(" and ");
    var where=kws.join(" and ");
    //"title like '%mac%' and title like '%i5%' and title like '%128g%'"
    var sql=`select *,(select md from yj_house_pic where house_id=hid limit 1) as md from yj_house where ${where}`;
    query(sql,[])
    .then(result=>{
      output.count=result.length;
      output.pageCount=
        Math.ceil(output.count/output.pageSize);
      sql+=` limit ?,?`;
      return query(sql,[output.pageSize*output.pno,output.pageSize]);
    })
    .then(result=>{
      output.data=result;
      res.send(output);
    })
  }else{
    res.send(output);
  }
})
router.get("/shelp",(req,res)=>{
  var kw=req.query.kw;
  var kws=kw.split(" ");
  kws.forEach((elem,i,arr)=>{
    arr[i]=`subtitle like '%${elem}%'`;
  })
  var where=kws.join(" and ");
  var sql=`select hid,subtitle from yj_house where ${where} limit 10`;
  query(sql,[]).then(result=>{
    res.send(result);
  })
})
module.exports=router;