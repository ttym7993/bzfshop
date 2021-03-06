{{extends file='misc_layout.tpl'}}
{{block name=misc_main_body}}

    <!-- 用 JS 设置页面的导航菜单 -->
    <script>
        window.bz_set_nav_status.push(function ($) {
            $("#misc_tabbar li:has(a[href='{{bzf_make_url controller='/Misc/Express'}}'])").addClass("active");
        });
        window.bz_set_breadcrumb_status.push({index: 2, text: '快递详情', link: window.location.href});
    </script>
    <!-- 页面主体内容 -->
    <div class="row">
        <h4>快递详情</h4>

        <!-- 更新管理员信息的表单  -->
        <form class="form-horizontal" method="POST" action="Edit?meta_id={{$meta_id|default}}">

            <!-- 管理员详细信息 -->
            <div class="row">

                <div class="control-group">
                    <label class="control-label">快递名</label>

                    <div class="controls">
                        <input class="span3" type="text" name="meta_name" value="{{$meta_name|default}}"
                               data-validation-required="data-validation-required"/>
                        <span class="comments">(用于列表显示)</span>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">拼音名</label>

                    <div class="controls">
                        <input class="span3" type="text" name="meta_ename" value="{{$meta_ename|default}}"
                               data-validation-required="data-validation-required"/>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">是否可用</label>

                    <div class="controls">
                        <select class="span1 select2-simple" name="meta_status"
                                data-initValue="{{$meta_status|default}}">
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">排序</label>

                    <div class="controls">
                        <input class="span1" type="text" name="meta_sort_order"
                               value="{{$meta_sort_order|default}}"/>
                        <span class="comments">数字越大排序越前</span>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">备注</label>

                    <div class="controls">
                        <textarea class="span5" rows="3" cols="40"
                                  name="meta_desc">{{$meta_desc|default}}</textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">&nbsp; </label>

                    <div class="controls">
                        <button type="submit" class="btn btn-success">
                            提交
                        </button>
                    </div>
                </div>

            </div>
            <!-- /管理员详细信息 -->

        </form>
        <!-- /更新管理员信息的表单  -->

    </div>
    <!-- /页面主体内容 -->

{{/block}}