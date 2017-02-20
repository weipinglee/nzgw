<div class="yd-img-box" data-find="_5">
        <div class="yd_banner" style="background:url({views:upload/20161212584e1c38c8cde.jpg}) center bottom no-repeat;"></div>
        <div class="yd" data-find="_4">
            <div class="yd1" data-find="_3">
                <div class="dq_bj">
                    <div class="dq">当前位置：<a href="#">耐装工厂店</a> &gt; <a href="#">关于耐装</a> &gt; 装修课堂</div>
                </div>
                <div class="about_left">
    <img src="{views:home/img/about_left.jpg}" width="185" height="112" style="float:left">
    <div class="about_left1">
       
            {foreach:items=$list}
                <li {if:$item['name'] == '装修课堂'}class='present'{/if}>
                    <a href='{$item['href']}'>{$item['name']}</a>
                </li>
            {/foreach}
        
    </div>
    
</div>

                <div class="about_right">
                	<div class="about_new">
                        <ul>
                            <li class="present">装修课堂</li>
                        
                        </ul>

                    </div>
                    
                    <div class="about_new1">{$zxdetail['name']}</div>
                    <div class="about_new2">时间：{$zxdetail['create_time']}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：耐耐资讯</div>
                    <div class="about_right2">
					   {$zxdetail['content']}	
                    </div>
                  
                </div>
            </div>
        </div>
        </div>


    <script>
        jQuery(document).ready(function ($){
            $('.js-right>li:nth-child(4)').addClass('present');
            $('.about_left1>li:nth-child(5)').addClass('present');
        })
    </script>
