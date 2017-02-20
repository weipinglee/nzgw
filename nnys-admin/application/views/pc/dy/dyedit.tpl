<script type="text/javascript" src="{views:js/libs/jquery/1.11/jquery.min.js}"></script>
<script type="text/javascript" src="{views:js/validform/validform.js}"></script>
<script type="text/javascript" src="{views:js/validform/formacc.js}"></script>
<script type="text/javascript" src="{views:js/layer/layer.js}"></script>
<script type="text/javascript" src="{views:content/settings/main.js}"></script>
<link rel="stylesheet" href="{views:content/settings/style.css}" />
<link rel="stylesheet" type="text/css" href="{views:css/H-ui.admin.css}">
<script type="text/javascript" src="{views:js/My97DatePicker/WdatePicker.js}"></script>

<script type="text/javascript" src='{root:js/upload/ajaxfileupload.js}'></script>
<script type="text/javascript" src='{root:js/upload/upload.js}'></script>

<script type="text/javascript" src="{views:js/ueditor/ueditor.config.js}"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="{views:js/ueditor/ueditor.all.js}"></script>
<!--
      CONTENT
                -->
<div id="content" class="white">

    <h1><img src="{views:img/icons/dashboard.png}" alt="" />店铺管理

    </h1>

    <div class="bloc">
        <div class="title">
            {$oper}店铺
        </div>
        <div class="pd-20">
            
            <form action="{$url}" method="post" class="form form-horizontal" id="form-member-add" auto_submit redirect_url="{url:dy/dy/dyList}">
                <div class="row cl">
                    <label class="form-label col-3"><span class="c-red">*</span> 店铺名：</label>
                    <div class="formControls col-5">
                        <input type="text" name="name" class="input-text" value="{$info['name']}" datatype="s2-50" nullmsg="名称不能为空">
                    </div>
                    <div class="col-4"> </div>
                </div>
               
                <div class="row cl">
                    <label class="form-label col-3">封面：</label>
                    <div class="formControls col-1">
                        <input type='file' name="cover" id="cover" style="width:65px;" onchange="javascript:uploadImg(this,'{url:/index/index/upload}');" />
                    </div>
                    <div>
                        <input type="hidden" name="imgcover"  value="{$info['thump']}" />
                        <img src="{$info['thump']}" name='cover' >
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-3">简介：</label>
                    <div class="formControls col-5">
                        <input type="text" name="intro" class="input-text" value="{$info['intro']}" datatype="s2-50" nullmsg="名称不能为空">
                    </div>
                    <div class="col-4"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-3"><span class="c-red">*</span>是否启用：</label>
                    <div class="formControls col-5">
                            
                            <input type="radio" name="status" value='1' {if:(isset($info) && $info['status']==1) || !isset($info)}checked=1{/if}>是
                            <input type="radio" name="status" value='0' {if:(isset($info)&&$info['status']==0)}checked=1{/if}>否

                    </div>
                    <div class="col-4"> </div>
                </div>

                <div class="row cl">
                    <div class="col-9 col-offset-3">
                        {if:isset($info['id'])}<input type="hidden" name="id" value="{$info['id']}" />{/if}
                        
                        <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</div>


