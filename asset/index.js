define(['oxjs'], function(OXJS) {
    return {
        init: function($mod) {
            var forward = $mod.attr('data-forward');
            var productRest = OXJS.useREST('product').setDevHost('http://dev.openxsl.com/'); //md5('saomachetie')
            $('.J_mainform', $mod).on('submit', function(e) {
                var data = OXJS.formToJSON(e.target);
                if (data._id) {
                    productRest.put(data, function(r) {
                        if (r.code == 0) {
                            //console.log('gggood!')
                            location.href = forward;
                        } else {
                            OXJS.toast(r.message)
                        }
                    });
                } else {
                    productRest.post(data, function(r) {
                        if (r.code == 0) {
                            //console.log('gggood!')
                            location.href = forward;
                        } else {
                            OXJS.toast(r.message)
                        }
                    });
                }

                return false
            })



        }
    }
})