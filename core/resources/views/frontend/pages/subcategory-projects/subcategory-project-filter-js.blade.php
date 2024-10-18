<script>
    (function ($) {
        "use strict";
        $(document).ready(function () {
            $('.country_select2').select2();

            //star rating filter
            $(document).on('click', '.active-list .list', function() {
                $(this).siblings().removeClass('active');
                $(this).addClass('active');
                let rating = $(this).data('rating');
                let subcategory_id = $('#subcategory_id').val();
                let country = $('#country').val();
                let level = $('#level').val();
                let min_price = $('#min_price').val();
                let max_price = $('#max_price').val();
                let delivery_day = $('#delivery_day').val();
                $.ajax({
                    url:"{{ route('subcategory.projects.filter')}}",
                    method:'GET',
                    data:{rating:rating, subcategory_id:subcategory_id, country:country,level:level,min_price:min_price,max_price:max_price,delivery_day:delivery_day},
                    success:function(res){
                        if(res.status=='nothing'){
                            $('.search_subcategory_result').html(
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
                            $('.search_subcategory_result').html(res);
                        }
                    }
                });
            });

            //search by country
            $(document).on('change', '#country , #level , #delivery_day', function() {
                let subcategory_id = $('#subcategory_id').val();
                let country = $('#country').val();
                let level = $('#level').val();
                let min_price = $('#min_price').val();
                let max_price = $('#max_price').val();
                let delivery_day = $('#delivery_day').val();
                $.ajax({
                    url:"{{ route('subcategory.projects.filter')}}",
                    method:'GET',
                    data:{subcategory_id:subcategory_id,country:country,level:level,min_price:min_price,max_price:max_price,delivery_day:delivery_day},
                    success:function(res){
                        if(res.status=='nothing'){
                            $('.search_subcategory_result').html(
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
                            $('.search_subcategory_result').html(res);
                        }
                    }
                });
            });
            $(document).on('click', '#set_price_range', function() {
                let subcategory_id = $('#subcategory_id').val();
                let country = $('#country').val();
                let level = $('#level').val();
                let min_price = $('#min_price').val();
                let max_price = $('#max_price').val();
                let delivery_day = $('#delivery_day').val();
                $.ajax({
                    url:"{{ route('subcategory.projects.filter')}}",
                    method:'GET',
                    data:{subcategory_id:subcategory_id,country:country,level:level,min_price:min_price,max_price:max_price,delivery_day:delivery_day},
                    success:function(res){
                        if(res.status=='nothing'){
                            $('.search_subcategory_result').html(
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
                            $('.search_subcategory_result').html(res);
                        }
                    }
                });
            });

            // pagination
            $(document).on('click', '.pagination a', function(e){
                e.preventDefault();
                let page = $(this).attr('href').split('page=')[1];
                let subcategory_id = $('#subcategory_id').val();
                let country = $('#country').val();
                let level = $('#level').val();
                let min_price = $('#min_price').val();
                let max_price = $('#max_price').val();
                let delivery_day = $('#delivery_day').val();
                projects(page,subcategory_id,country,level,min_price,max_price,delivery_day);
            });
            function projects(page,subcategory_id,country,level,min_price,max_price,delivery_day){
                $.ajax({
                    url:"{{ route('subcategory.project.pagination').'?page='}}" + page,
                    method:'GET',
                    data:{subcategory_id:subcategory_id,country:country,level:level,min_price:min_price,max_price:max_price,delivery_day:delivery_day},
                    success:function(res){
                        if(res.status=='nothing'){
                            $('.search_subcategory_result').html(
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
                            $('.search_subcategory_result').html(res);
                        }
                    }

                });
            }

            // ilter reset
            $(document).on('click', '#subcategory_project_filter_reset', function(e){
                $('#country').val('').trigger('change');
                $('#level').val('');
                $('#min_price').val('');
                $('#max_price').val('');
                $('#delivery_day').val('');
                let subcategory_id = $('#subcategory_id').val();
                $.ajax({
                    url:"{{ route('subcategory.project.filter.reset')}}",
                    method:'GET',
                    data:{subcategory_id:subcategory_id},
                    success:function(res){
                        if(res.status=='nothing'){
                            $('.search_subcategory_result').html(`<div class="congratulation-area section-bg-2 pat-100 pab-100">
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
                            $('.search_subcategory_result').html(res);
                        }
                    }

                });
            });
        });
    }(jQuery));
</script>
