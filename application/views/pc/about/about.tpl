


    <div class="yd-img-box" data-find="_5">
        <div class="yd_banner" style="background:url({views:upload/20161212584e1bbcace12.jpg}) center bottom no-repeat;"></div>
        <div class="yd" data-find="_4">
            <div class="yd1" data-find="_3">
                <div class="dq_bj">
                    <div class="dq">当前位置：<a href="index.html">耐装工厂店</a> &gt; <a href="about.html">关于耐装</a> &gt; {$info['cate_name']}</div>
                </div>
				<div class="about_left">
    <img src="{views:home/img/about_left.jpg}" width="185" height="112" style="float:left">
    <div class="about_left1">
            {foreach:items=$list}
                <li {if:$item['id'] == $id}class='present'{/if}>
                    <a href='{$item['href']}'>{$item['name']}</a>
                </li>
            {/foreach}
        
    </div>
    
</div>
               
                <div class="about_right" data-find="_2">
                    <div class="about_right1">{$info['cate_name']}</div>
                    <div class="about_right2" data-find="_1">{$info['content']}</div>
                </div>
            </div>
        </div>
</div>
    <script>
        jQuery(document).ready(function ($){
            $('.js-right>li:nth-child(4)').addClass('present');
             // $('.about_left1>li:nth-child(1)').addClass('present');
        })
    </script>

  