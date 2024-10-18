@extends('frontend.layout.master')
@section('site_title',__('Talents'))
@section('style')
    <x-select2.select2-css />
    <style>
        .single-freelancer.center-text .single-freelancer-author-name {
            justify-content: center;
        }
        .single-freelancer.center-text .single-freelancer-bottom {
            justify-content: center;
        }
        .single-freelancer {
            flex-direction: column;
            display: flex;
            justify-content: space-between;
            height: 100%;
            background: var(--white);
        }
    </style>
@endsection
@section('content')
    <main>
        <x-frontend.category.category/>
        <x-breadcrumb.user-profile-breadcrumb :title="__('Talents') ?? __('Talents')" :innerTitle="__('Talents') ?? '' "/>
        <!-- Project preview area Starts -->
        <div class="preview-area section-bg-2 pat-100 pab-100">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="categoryWrap-wrapper">
                            <div class="shop-contents-wrapper responsive-lg">
                                <div class="shop-icon">
                                    <div class="shop-icon-sidebar">
                                        <i class="fas fa-bars"></i>
                                    </div>
                                </div>

                                @include('frontend.pages.talent.sidebar')

                                <div class="shop-contents-wrapper-right search_talent_result">
                                    @include('frontend.pages.talent.search-talent-result')
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Project preview area end -->
    </main>

@endsection

@section('script')
    @include('frontend.pages.talent.talent-filter-js')
    <x-select2.select2-js />
@endsection
