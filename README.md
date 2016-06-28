# give-me-your-hand
IOS, ordering system, restaurant
``Welcome to the give-me-your-hand wiki!
##客户端登录
  客户端登陆界面：采用对话框的形式，用户输入正确的用户名和密码就可以进入，用户注册成本系统的会员后，就可以在登陆界面输入自己注册的用户名和密码实现登录。这里对输入的信息进行验证，验证主要考虑用户账号的安全，同时用户登陆后才能更方便对网站中各项功能的操作，所以网站中设置用户登录是必不可少的。
  在注册界面用户必须在文本框输入登陆账号和登录密码，登陆账号如果在数据库中有存在，系统则提示“该登陆账号已被使用，请换用其他登陆账号”的信息；如果用户名在数据库中没有存储，则系统将对前后两次输入的密码进行验证，如果密码不相符，系统重置注册信息，客户重新填写信息注册，如果密码相符，用户填写剩下的用户资料，最后“确认并提交”系统将用户信息保存到数据库中，系统提示用户注册成功。
<br />
![](http://img-menlon.oss-cn-shenzhen.aliyuncs.com/giveyoourhand/%E5%B8%AE5%E5%90%A7%E5%AE%A2%E6%88%B7%E7%AB%AF%E8%AE%BA%E6%96%87-%20%E9%99%88%E6%9F%8F%E6%88%9014166.png)
## 1.2短信验证码注册,通过网络框架 ,POST,请求短信服务, 校验手机防止恶意注册.
![](http://img-menlon.oss-cn-shenzhen.aliyuncs.com/giveyoourhand/%E5%B8%AE5%E5%90%A7%E5%AE%A2%E6%88%B7%E7%AB%AF%E8%AE%BA%E6%96%87-%20%E9%99%88%E6%9F%8F%E6%88%9014219.png)
###客户端主界面
点餐客户端主界面就是推荐的菜品信息
会员订餐功能是通过判断用户是否登录，通过获取菜品编号，并且读取菜品信息，将菜品值传入到购物车临时页面中，最后确认下单结算将菜品信息和订餐信息存入到订单表中。
具体界面如下：<br />
![](http://img-menlon.oss-cn-shenzhen.aliyuncs.com/giveyoourhand/%E5%B8%AE5%E5%90%A7%E5%AE%A2%E6%88%B7%E7%AB%AF%E8%AE%BA%E6%96%87-%20%E9%99%88%E6%9F%8F%E6%88%9014348.png)
<br />
 (1) 菜品信息查询
用户注册登录进入订餐客户端，可以进行商家查询菜品。<br />
![](http://img-menlon.oss-cn-shenzhen.aliyuncs.com/giveyoourhand/%E5%B8%AE5%E5%90%A7%E5%AE%A2%E6%88%B7%E7%AB%AF%E8%AE%BA%E6%96%87-%20%E9%99%88%E6%9F%8F%E6%88%9014445.png)
<br />
（2）用户点餐
用户可以查询菜品，并且将菜品加入购物车，然后完成订餐。 
<br />
(3)订单查询
用户完成订餐信息之后，可以查询订单状态。<br />
![](http://img-menlon.oss-cn-shenzhen.aliyuncs.com/giveyoourhand/%E5%B8%AE5%E5%90%A7%E5%AE%A2%E6%88%B7%E7%AB%AF%E8%AE%BA%E6%96%87-%20%E9%99%88%E6%9F%8F%E6%88%9014487.png)
<br />
##服务器登录
添加外卖店的商品信息,处理订单
