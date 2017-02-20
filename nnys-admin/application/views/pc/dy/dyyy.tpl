

<div id="content" class="white">
    <h1><img src="{views:img/icons/posts.png}" alt="" /> 预约管理</h1>
    <div class="bloc">
        <div class="title">
            预约列表
        </div>
        <div class="content">
            <div class="pd-20">
                <div class="mt-20">
                    <table class="table table-border table-bordered table-hover table-bg table-sort">
                        <thead>
                        <tr class="text-c">
                            <!-- <th width="25"><input type="checkbox" name="checkall" value=""></th> -->

                            <th width="50">ID</th>
                            <th width="100">店铺名称</th>
                            <th width="100">客户名</th>
                            <th width="100">手机号</th>
                            <th width="50">预约时间</th>
                            <th width='200'>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        {foreach:items=$list}
                            <tr class="text-c">
                                <!-- <td><input type="checkbox" value="" name="check"></td> -->
                                <td><span>{$item['id']}</span></td>
                                <td><span>{$item['dyname']}</span></td>
                                <td><span>{$item['name']}</span></td>
                                <td><span>{$item['phone']}</span></td>
                                <td>{$item['create_time']}</td>
                                <td class="td-manage">
                                   {if:$item['status'] == 0}
                                        <a style="text-decoration:none" href="javascript:;" title="标记为已处理" ajax_url="{url:dy/dy/setyyStatus?id=$item['id']}">标记为已处理</a>
                                    {/if}</td>

                            </tr>
                        {/foreach}
                        </tbody>
                        <script type="text/javascript">
                            function delFundOut(name,obj){
                                var obj=$(obj);
                                var name=name;
                                var url="{url:/dy/dy/del}";
                                if(confirm("确定要删除吗")){
                                    $.ajax({
                                        type:'get',
                                        cache:false,
                                        data:{id:name},
                                        url:url,
                                        dataType:'json',
                                        success:function(msg){
                                            if(msg['success']==1){

                                                obj.parents("tr").remove();
                                            }else{
                                                alert(msg['info']);
                                            }
                                        }
                                    });
                                }
                            }
                        </script>
                    </table>
                    {$pageBar}
                </div>
            </div>

            <script type="text/javascript">
                $(function(){
                    $('a[ajax_url]').click(function(){
                        var ajax_url = $(this).attr('ajax_url');
                        var status = 1;
                        var _this = this;
                        $.post(ajax_url,{status:status},function(data){
                            if(data.success == 1){
                                layer.msg('已标记');
                                $(_this).remove();
                            }else{
                                layer.msg('操作失败');
                            }
                        },'json');
                    });
                })
            </script>