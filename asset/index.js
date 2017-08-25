define(['oxjs'], function (OXJS) {
    return {
        init: function ($mod) {
            var dsid = $mod.attr('data-dsid'),
                uid=$mod.attr('data-uid');
            var forward=$mod.attr('data-forward');
            var productRest=OXJS.useREST('product/'+dsid+'/u/' + encodeURIComponent(uid)).setDevHost('http://local.openxsl.com/');//md5('saomachetie')
            $('.J_mainform',$mod).on('submit',function(e){
                var data=OXJS.formToJSON(e.target);
                productRest.post(data,function(r){
                    if(r.code==0){
                        //console.log('gggood!')
                        location.href=forward;
                    }else{
                        OXJS.toast(r.message)
                    }
                });
                return false
            })



        }
    }
})
