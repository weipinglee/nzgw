


    <div class="h_box2"></div>
    <div class="h_box3"></div>
    <div class="h_box4"></div>
    <div class="h_box_j1"></div>
    <div class="h_box5"></div>
    <div class="h_box6"></div>
    <div class="h_box7">
        <div class="h_box7_an">
            <!-- <div class="h_box7_an1">
                <button type="button" style="cursor: pointer;" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                    <img src="{views:home/images/j_07_03.jpg}" width="122" height="25">
                </button>
            </div> -->
        </div>
    </div>
    <div class="h_box8"></div>
  
 
    <div class="h_box10"></div>
       
    <div class="h_box11"></div>
    <div class="h_box_j2"></div>
     <div class="h_box_j3"></div>
    <div class="h_box12">
        <div class="h_box12_an">
            <div class="h_box12_an1">
                <button style="cursor: pointer;" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                    <img src="{views:home/images/j_07_03.jpg}" width="122" height="25">
                </button>
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" style="width:738px; margin:50px auto">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button style="cursor: pointer;" type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only"> </span></button>
                            </div>
                            <div class="modal-body">
                                <!-- 内容 -->
                                <div class="mtk_text">在线预约到店</div>
                                <div class="mtk_k">
                                    <span style=" float:left; font-size:16px; line-height:32px; padding-right:10px">姓名</span><div class="mtk_k2"> <input name="input2" style="outline: none; " type="text" size="35" value="请输入您的姓名" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-name"></div></div>
                                <div class="mtk_k4">
                                    <span style="outline: none;  float:left; font-size:16px; line-height:32px; padding-right:10px">手机号码</span><div class="mtk_k2"> <input style="outline: none;" name="input2" type="text" size="35" value="请输入您的手机号码" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-mobile"></div></div>

                            </div>
                            <div class="modal-footer">
                                <div class="mtk5"> 目前已成功预约<span style="color:#F00; font-weight:bold"> 440</span> 位业主</div>
                                <button class="js-myModal" style=" border:none; background-color:#FFF"> <img src="{views:home/img/sjs.gif}" width="124" height="34"></button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal -->

            </div>
        </div>



    </div>
    <div class="h_box13"></div>
    <div class="h_box14">
	<div class="b_djyy">
	 <div class="b_djyy1" onclick="func1()" style="cursor: pointer;">
 	<img src="{views:home/images/jjtc_djyy.png}" width="209" height="48">
 	</div>
    </div>
</div>
    <script>

    	function func1(){
    		$('#myModal').modal('toggle');

    	}

    	jQuery(document).ready(function ($) {
            $('.js-left>li:nth-child(4)').addClass('present');
        })

        jQuery(document).ready(function ($) {
            $('.js-myModal').click(function(){
                var name = Trim($('.js-name').val());
                if(name == ''){
                    alert('姓名不能为空');
                    return false;
                }
                var mobile = Trim($('.js-mobile').val());
                if(mobile == ''){
                    alert('手机号码不能为空');
                    return false;
                }
                function testMobile(mobile){
                    var phone=/^1[3|4|5|8|7][0-9]\d{8}$/;
                    if(!phone.test(mobile)) {
                        return false;
                    }else{
                        return true;
                    }
                }
                var res=testMobile(mobile);
                if(!res) {
                    alert('请输入正确的号码格式');
                    return false;
                }
                status=20;
                $.ajax({
                    type: "POST",
                    url: "/meal/order.html",
                    data: {
                        status:status,
                        name:name,
                        mobile:mobile
                    },
                    dataType:"json",
                    success: function(data){
                        if(data == 1){
                            $('#myModal').hide();
                            $('#myModal1').modal('toggle');
                        }else if(data ==3){
                            alert('您已报名');
                        }else if(data ==2){
                            alert('报名失败，请重新报名');
                        }
                    }
                })
            });

            function Trim(str) {
                return (str + '').replace(/(\s+)$/g, '').replace(/^\s+/g, '');
            }
        })
    </script>

