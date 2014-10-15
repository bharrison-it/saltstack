#!/usr/bin/php -q
<?
/*--------------------------------
功能:		PHP HTTP接口 发送短信
修改日期:	2013-05-08
说明:		http://m.5c.com.cn/api/send/?username=用户名&password=密码&mobile=手机号&content=内容&apikey=apikey
状态:
	发送成功	success:msgid
	发送失败	error:msgid

注意，需curl支持。

返回值											说明
success:msgid								提交成功，发送状态请见4.1
error:msgid								提交失败
error:Missing username						用户名为空
error:Missing password						密码为空
error:Missing apikey						APIKEY为空
error:Missing recipient					手机号码为空
error:Missing message content				短信内容为空
error:Account is blocked					帐号被禁用
error:Unrecognized encoding				编码未能识别
error:APIKEY or password error				APIKEY 或密码错误
error:Unauthorized IP address				未授权 IP 地址
error:Account balance is insufficient		余额不足
error:Black keywords is:党中央				屏蔽词
--------------------------------*/
$username = 'hdtr';		//用户账号
$password = '123456';	//密码
$apikey = '8d683e752ec57d1bf38f46ca6c562b19';	//密码
$mobile	 = $argv[1];	//号手机码
$content = $argv[2];		//内容
//即时发送
$result = sendSMS($username,$password,$mobile,$content,$apikey);
echo $result;


function sendSMS($username,$password,$mobile,$content,$apikey)
{
	$url = 'http://m.5c.com.cn/api/send/?';
	$data = array
		(
		'username'=>$username,					//用户账号
		'password'=>$password,				//密码
		'mobile'=>$mobile,					//号码
		'content'=>$content,				//内容
		'apikey'=>$apikey,				    //apikey
		);
	$result= curlSMS($url,$data);			//POST方式提交
	return $result;
}

function curlSMS($url,$post_fields=array()){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch, CURLOPT_TIMEOUT, 3600); //60秒 
        curl_setopt($ch, CURLOPT_HEADER,1);
        curl_setopt($ch, CURLOPT_REFERER,'http://www.yourdomain.com');
        curl_setopt($ch,CURLOPT_POST,1);
        curl_setopt($ch, CURLOPT_POSTFIELDS,$post_fields);
        $data = curl_exec($ch);
        curl_close($ch);
        $res = explode("\r\n\r\n",$data);
        return $res[2]; 
}
?>
