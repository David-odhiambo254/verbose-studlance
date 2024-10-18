<script>
    (function ($) {
        "use strict";
        $(document).ready(function () {
            $('.country_select2').select2();

            //star rating filter
            $(document).on('click', '.active-list .list', function() {
                let ratings = $(".active-list .list");

                ratings.each(function (){
                    $(this).removeClass('active');
                });

                $(this).addClass('active');

                projects();


            {{--let rating = $('.filter-lists').attr('data-rating');--}}

                {{--let country = $('#country').val();--}}
                {{--let level = $('#level').val();--}}
                {{--let min_price = $('#min_price').val();--}}
                {{--let max_price = $('#max_price').val();--}}
                {{--let delivery_day = $('#delivery_day').val();--}}
                {{--let get_pro_projects = $('#get_pro_projects').val()--}}

                {{--$.ajax({--}}
                {{--    url:"{{ route('projects.filter')}}",--}}
                {{--    method:'GET',--}}
                {{--    data:{rating:rating, country:country, level:level, min_price:min_price, max_price:max_price, delivery_day:delivery_day,get_pro_projects:get_pro_projects},--}}
                {{--    success:function(res){--}}
                {{--        if(res.status=='nothing'){--}}
                {{--            $('.search_result').html(--}}
                {{--                `<div class="congratulation-area section-bg-2 pat-100 pab-100">--}}
                {{--                    <div class="container">--}}
                {{--                        <div class="congratulation-wrapper">--}}
                {{--                            <div class="congratulation-contents center-text">--}}
                {{--                                <div class="congratulation-contents-icon bg-danger wow  zoomIn animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">--}}
                {{--                                    <i class="fas fa-times"></i>--}}
                {{--                                </div>--}}
                {{--                                <h4 class="congratulation-contents-title"> {{ __('OPPS!') }} </h4>--}}
                {{--                                <p class="congratulation-contents-para">{{ __('Nothing') }} <strong>{{ __('Found') }}</strong> </p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>`);--}}
                {{--        }else{--}}
                {{--            $('.search_result').html(res);--}}
                {{--        }--}}
                {{--    }--}}
                {{--});--}}

            });

            //project filter
            $(document).on('change', '#country , #level , #delivery_day', function() {
                projects();

                {{--let country = $('#country').val();--}}
                {{--let level = $('#level').val();--}}
                {{--let min_price = $('#min_price').val();--}}
                {{--let max_price = $('#max_price').val();--}}
                {{--let delivery_day = $('#delivery_day').val();--}}
                {{--let get_pro_projects = $('#get_pro_projects').val()--}}
                {{--let rating = $('.filter-lists').attr('data-rating');--}}

                {{--$.ajax({--}}
                {{--    url:"{{ route('projects.filter')}}",--}}
                {{--    method:'GET',--}}
                {{--    data:{country:country,rating:rating,level:level,min_price:min_price,max_price:max_price,delivery_day:delivery_day,get_pro_projects:get_pro_projects},--}}
                {{--    success:function(res){--}}
                {{--        if(res.status=='nothing'){--}}
                {{--            $('.search_result').html(--}}
                {{--                `<div class="congratulation-area section-bg-2 pat-100 pab-100">--}}
                {{--                    <div class="container">--}}
                {{--                        <div class="congratulation-wrapper">--}}
                {{--                            <div class="congratulation-contents center-text">--}}
                {{--                                <div class="congratulation-contents-icon bg-danger wow  zoomIn animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">--}}
                {{--                                    <i class="fas fa-times"></i>--}}
                {{--                                </div>--}}
                {{--                                <h4 class="congratulation-contents-title"> {{ __('OPPS!') }} </h4>--}}
                {{--                                <p class="congratulation-contents-para">{{ __('Nothing') }} <strong>{{ __('Found') }}</strong> </p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>`);--}}
                {{--        }else{--}}
                {{--            $('.search_result').html(res);--}}
                {{--        }--}}
                {{--    }--}}
                {{--});--}}
            });

            $(document).on('click', '#set_price_range', function() {
                projects();

                {{--let country = $('#country').val();--}}
                {{--let level = $('#level').val();--}}
                {{--let min_price = $('#min_price').val();--}}
                {{--let max_price = $('#max_price').val();--}}
                {{--let delivery_day = $('#delivery_day').val();--}}
                {{--let get_pro_projects = $('#get_pro_projects').val()--}}
                {{--let rating = $('.filter-lists').attr('data-rating');--}}

                {{--$.ajax({--}}
                {{--    url:"{{ route('projects.filter')}}",--}}
                {{--    method:'GET',--}}
                {{--    data:{country:country,level:level,rating:rating,min_price:min_price,max_price:max_price,delivery_day:delivery_day,get_pro_projects:get_pro_projects},--}}
                {{--    success:function(res){--}}
                {{--        if(res.status=='nothing'){--}}
                {{--            $('.search_result').html(--}}
                {{--                `<div class="congratulation-area section-bg-2 pat-100 pab-100">--}}
                {{--                    <div class="container">--}}
                {{--                        <div class="congratulation-wrapper">--}}
                {{--                            <div class="congratulation-contents center-text">--}}
                {{--                                <div class="congratulation-contents-icon bg-danger wow  zoomIn animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">--}}
                {{--                                    <i class="fas fa-times"></i>--}}
                {{--                                </div>--}}
                {{--                                <h4 class="congratulation-contents-title"> {{ __('OPPS!') }} </h4>--}}
                {{--                                <p class="congratulation-contents-para">{{ __('Nothing') }} <strong>{{ __('Found') }}</strong> </p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>`);--}}
                {{--        }else{--}}
                {{--            $('.search_result').html(res);--}}
                {{--        }--}}
                {{--    }--}}
                {{--});--}}
            });

            // pagination
            $(document).on('click', '.pagination a', function(e){
                e.preventDefault();
                let page = $(this).attr('href').split('page=')[1];

                projects(page);
            });

            function projects(page = 1){
                let country = $('#country').val();
                let level = $('#level').val();
                let min_price = $('#min_price').val();
                let max_price = $('#max_price').val();
                let delivery_day = $('#delivery_day').val();
                let get_pro_projects;
                let rating = $('.filter-lists .list.active').attr('data-rating');

                if($('#get_pro_projects').prop('checked')){
                    $('#get_pro_projects').val('1')
                    get_pro_projects = $('#get_pro_projects').val()
                }else{
                    $('#get_pro_projects').val('0')
                    get_pro_projects = $('#get_pro_projects').val()
                }


                $.ajax({
                    url:"{{ route('projects.pagination').'?page='}}" + page,
                    method:'GET',
                    data:{country:country,level:level,min_price:min_price,rating:rating,max_price:max_price,delivery_day:delivery_day,get_pro_projects:get_pro_projects},
                    success:function(res){
                        if(res.status=='nothing'){
                            $('.search_result').html(
                                `<div class="congratulation-area section-bg-2 pat-100 pab-100">
                                    <div class="container">
                                        <div class="congratulation-wrapper">
                                            <div class="congratulation-contents center-text">
                                                <div class="congratulation-contents-icon bg-danger wow  zoomIn animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
                                                    <i class="fas fa-times"></i>
                                                </div>
                                                <h4 class="congratulation-contents-title"> {{ __('OPPS!') }} </h4>
                                                <p class="congratulation-contents-para">{{ __('Nothing') }} <strong>{{ __('Found') }}</strong> </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>`);
                        }else{
                            $('.search_result').html(res);
                        }
                    }

                });
            }

            // filter reset
            $(document).on('click', '#project_filter_reset', function(e){
                $('#country').val('').trigger('change');
                $('#level').val('');
                $('#min_price').val('');
                $('#max_price').val('');
                $('#delivery_day').val('');
                $('.active-list .list').removeClass('active');


                projects();

                {{--let category = $('#category_id').val();--}}
                {{--let get_pro_projects = $('#get_pro_projects').val()--}}

                {{--if(get_pro_projects == 1){--}}
                {{--    $.ajax({--}}
                {{--        url:"{{ route('projects.filter.reset')}}",--}}
                {{--        method:'GET',--}}
                {{--        data:{get_pro_projects:get_pro_projects},--}}
                {{--        success:function(res){--}}
                {{--            if(res.status=='nothing'){--}}
                {{--                $('.search_result').html('<h3 class="text-center text-danger">'+"{{ __('Nothing Found') }}"+'</h3>');--}}
                {{--            }else{--}}
                {{--                $('.search_result').html(res);--}}
                {{--            }--}}
                {{--        }--}}

                {{--    });--}}
                {{--}else{--}}
                {{--    $.ajax({--}}
                {{--        url:"{{ route('projects.filter.reset')}}",--}}
                {{--        method:'GET',--}}
                {{--        data:{category:category},--}}
                {{--        success:function(res){--}}
                {{--            if(res.status=='nothing'){--}}
                {{--                $('.search_result').html('<h3 class="text-center text-danger">'+"{{ __('Nothing Found') }}"+'</h3>');--}}
                {{--            }else{--}}
                {{--                $('.search_result').html(res);--}}
                {{--            }--}}
                {{--        }--}}

                {{--    });--}}
                {{--}--}}

            });

            //get pro projects
            $(document).on('change', '#get_pro_projects', function(e){
                e.preventDefault();

                projects();
                // let page = 1;
                // let country = $('#country').val();
                // let level = $('#level').val();
                // let min_price = $('#min_price').val();
                // let max_price = $('#max_price').val();
                // let delivery_day = $('#delivery_day').val();
                // let get_pro_projects;
                //
                // if($(this).prop('checked')){
                //     $('#get_pro_projects').val('1');
                //
                //     get_pro_projects = $('#get_pro_projects').val()
                // }else{
                //     $('#get_pro_projects').val('0');
                //
                //     get_pro_projects = $('#get_pro_projects').val()
                // }
                //
                // projects(page,country,level,min_price,max_price,delivery_day,get_pro_projects);



                // $('#country').val('').trigger('change');
                // $('#level').val('');
                // $('#min_price').val('');
                // $('#max_price').val('');
                // $('#delivery_day').val('');
                {{--$('.active-list .list').removeClass('active');--}}

                {{--if($(this).prop('checked')){--}}
                {{--    $('#get_pro_projects').val('1')--}}
                {{--    var get_pro_projects = $('#get_pro_projects').val()--}}
                {{--}else{--}}
                {{--    $('#get_pro_projects').val('0')--}}
                {{--    var get_pro_projects = $('#get_pro_projects').val()--}}
                {{--}--}}

                {{--$.ajax({--}}
                {{--    url:"{{ route('pro.projects.all')}}",--}}
                {{--    method:'GET',--}}
                {{--    data:{get_pro_projects:get_pro_projects},--}}
                {{--    success:function(res){--}}
                {{--        if(res.status=='nothing'){--}}
                {{--            $('.search_result').html('<h3 class="text-center text-danger">'+"{{ __('Nothing Found') }}"+'</h3>');--}}
                {{--        }else{--}}
                {{--            $('.search_result').html(res);--}}
                {{--        }--}}
                {{--    }--}}

                {{--});--}}
            });
        });
    }(jQuery));
</script>
