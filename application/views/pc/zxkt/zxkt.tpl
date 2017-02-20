<div class="yd-img-box">
        <div class="yd_banner" style="background:url({views:upload/20161212584e1c38c8cde.jpg}) center bottom no-repeat;"></div>
        <div class="yd">
            <div class="yd1">
                <div class="dq_bj">
                    <div class="dq">当前位置：<a href="index.html">耐装网</a> &gt; <a href="about.html">关于耐装</a> &gt;最新动态 &gt;装修课堂</div>
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
                   
                    <div class="news-list clearfix">
                        <ul>
                            {foreach:items=$classes}
                            <li>
                                <a href="{url:/zxkt/zxkt}/id/{$item['id']}/type/2">
                                    <div class="one-news">
                                        <div class="date">
                                            <h4>{$item['day']}</h4>
                                            <p>{$item['yydd']}</p>
                                        </div>
                                        <div class="tp11"><img src="{$item['url']}" width="130" height="80"></div>
                                        <div class="news-info">
                                            <p class="news-tit">{$item['name']}</p>
                                            <p class="news-nr">{$item['content_desc']}</p>
                                        </div>
                                    </div>
                                </a>
                            </li>         
                            {/foreach}
                        </ul>

                        <div class="paging_1">
                            <div class="paging_2">
                            {$pagebar}
                                                           </div>
                        </div>
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