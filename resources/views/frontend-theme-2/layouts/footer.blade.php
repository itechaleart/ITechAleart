<footer class="footer-area footer-gradient-bg position-relative landing-footer sf-landing-footer">
    <div class="section-overlay">
        <div class="container">
            <!-- footer-widget-area -->
            <div class="row footer-top-part section-p-t-b-90">
                <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                    <div class="footer-widget footer-about">
                        <img src="{{ asset(get_option('app_logo')) }}" alt="Logo">
                        <p>{{ __(get_option('footer_quote')) }}</p>
                        <div class="footer-social mt-30">
                            <ul class="d-flex align-items-center">
                                @if (get_option('facebook_url'))
                                <li><a href="{{ get_option('facebook_url') }}"><span class="iconify"
                                            data-icon="ant-design:facebook-filled"></span></a></li>
                                @endif
                                @if (get_option('twitter_url'))
                                <li><a href="{{ get_option('twitter_url') }}"><span class="iconify"
                                            data-icon="ant-design:twitter-square-filled"></span></a></li>
                                @endif
                                @if (get_option('linkedin_url'))
                                <li><a href="{{ get_option('linkedin_url') }}"><span class="iconify"
                                            data-icon="ant-design:linkedin-filled"></span></a></li>
                                @endif
                                @if (get_option('pinterest_url'))
                                <li><a href="{{ get_option('pinterest_url') }}"><span class="iconify"
                                            data-icon="fa-brands:pinterest-square" data-width="1em"
                                            data-height="1em"></span></a></li>
                                @endif
                                @if (get_option('youtuberl'))
                                <li><a href="{{ get_option('youtube_url') }}"><span class="iconify"
                                            data-icon="fa-brands:youtube-square" data-width="1em"
                                            data-height="1em"></span></a></li>
                                @endif
                                @if (get_option('tiktok_url'))
                                <li><a href="{{ get_option('tiktok_url') }}"><span class="iconify"
                                            data-icon="iconoir:tiktok" data-width="1em"
                                            data-height="1em"></span></a></li>
                                @endif
                                @if (get_option('f6s_url'))
                                <li>
                                    <a href="{{ get_option('f6s_url') }}">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="100 100 600 600" class="w-6 h-6 iconify" style="width:1em;height:1em;">
                                            <path fill="currentColor" d="M156.9 180.1h136.8v57.8h-79.1v124.9h45.8v57.8h-45.8v199.3h-57.8V180.1z" />
                                            <path fill="currentColor" d="M372.4 237.9v124.9h68.5c16.6 0 31.1 14.5 31.1 31v194.7c0 16.7-14.5 31.4-31.1 31.4h-95c-16.6 0-31.1-14.3-31.1-30.6V212.3c0-16.8 14.4-32.2 30.3-32.2h95.9c16.6 0 31.1 14.5 31.1 31v72.7h-57.8v-45.8zm0 182.7v141.5h41.9V420.6h-41.9z" />
                                            <path fill="currentColor" d="M647.1 283.7h-57.8v-45.8h-41.9v124.9l69.1 0.02c16.4 0 30.5 19.7 30.5 35.8v189.7c0 16.8-14.3 31.6-30.5 31.6h-92.9c-16.3 0-30.5-14.4-30.5-30.7v-106l54.3-0.1v79.1h41.9v-141.5l-65.7 0.02c-16.2 0-30.5-14.6-30.5-31.1V211.3c0-16.6 14.3-31.2 30.5-31.2h92.9c16.3 0 30.5 14.6 30.5 31.2v72.4z" />
                                        </svg>
                                    </a>
                                </li>
                                @endif
                                @if (get_option('crunchbase_url'))
                                <li>
                                    <a href="{{ get_option('crunchbase_url') }}">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70 70" class="w-6 h-6 iconify" style="width:1em;height:1em;">
                                            <path class="fill-current" d="M13.94 33.658a2.962 2.962 0 110.034-2.44h2.296a5.167 5.167 0 100 2.44h-2.296zM23.51 27.257h-.379a5.098 5.098 0 00-2.526.89v-5.752h-2.095v14.794h2.107v-.54a5.167 5.167 0 102.893-9.392zm2.962 5.534v.092a2.94 2.94 0 01-.08.362 2.934 2.934 0 01-.144.373v.046a2.98 2.98 0 01-2.072 1.625l-.281.046h-.063a2.916 2.916 0 01-.322 0 2.962 2.962 0 01-.402-.029h-.057a2.934 2.934 0 01-.752-.23h-.057a2.974 2.974 0 01-.666-.447 2.991 2.991 0 01-.522-.626 2.962 2.962 0 01-.19-.367 2.945 2.945 0 01.035-2.44 2.968 2.968 0 012.377-1.682 2.934 2.934 0 01.304 0 2.968 2.968 0 012.928 2.882 2.957 2.957 0 010 .396z" transform="matrix(3 0 0 3 -17 -60)" />
                                        </svg>
                                    </a>
                                </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-2 offset-lg-2">
                    <div class="footer-widget">
                        <h6 class="footer-widget-title">{{ __('Company') }}</h6>
                        <div class="footer-links d-flex">
                            <ul>
                                @foreach ($footerLeftMenus ?? [] as $footerLeftMenu)
                                <li><a href="{{ $footerLeftMenu->url }}">{{ __($footerLeftMenu->name) }}</a></li>
                                @endforeach
                                {{-- <li><a href="{{ route('about') }}">{{ __('About')  }}</a></li>
                                <li><a href="{{ route('faq') }}">{{__('FAQ')}}</a></li>
                                <li><a href="{{ route('blogs') }}">{{ __('Blogs') }}</a></li> --}}
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-2">
                    <div class="footer-widget">
                        <h6 class="footer-widget-title">{{ __('Support') }}</h6>
                        <div class="footer-links d-flex">
                            <ul>
                                @foreach ($footerRightMenus ?? [] as $footerRightMenu)
                                <li><a href="{{ $footerRightMenu->url }}">{{ __($footerRightMenu->name) }}</a>
                                </li>
                                @endforeach

                                {{-- <li><a href="{{ route('contact') }}">{{ __('Contact')  }}</a></li>
                                <li><a href="{{ route('support-ticket-faq') }}">{{ __('Support')  }}</a></li>
                                @if (!get_option('private_mode') || !auth()->guest())
                                <li><a href="{{ route('courses') }}">{{ __('Courses')  }}</a></li>
                                @endif --}}
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                    <div class="footer-widget footer-contact-info">
                        <h6 class="footer-widget-title">{{ __('Contact Info') }}</h6>

                        <div class="footer-links d-flex">
                            <ul>
                                <li><span class="iconify"
                                        data-icon="carbon:location-filled"></span><span>{{ __(get_option('app_location')) }}</span>
                                </li>
                                <li><span class="iconify"
                                        data-icon="fluent-emoji-high-contrast:telephone-receiver"></span><a
                                        href="tel:{{ get_option('app_contact_number') }}">{{ __(get_option('app_contact_number')) }}</a>
                                </li>
                                <li><span class="iconify" data-icon="ic:round-email"></span><a
                                        href="mailto:{{ get_option('app_email') }}">{{ __(get_option('app_email')) }}</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!--copyright-text-->
            <div class="row copyright-wrapper">
                <div class="col-12 col-md-12 col-lg-4">
                    <div class="footer-payment">
                        <img src="{{ asset(get_option('app_footer_payment_image') ?? 'frontend/assets/img/payment-cards.png') }}"
                            alt="payments">
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-4">
                    <div class="copyright-text text-center">
                        <p class="text-white font-13">{{ __(get_option('app_copyright')) }}</p>
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-4 pe-lg-0">
                    <div class="footer-bottom-nav">
                        <ul class="d-flex justify-content-end">
                            <li><a href="{{ route('instructor') }}">{{ __('Instructor') }}</a></li>
                            <li><a
                                    href="{{ route('student.become-an-instructor') }}">{{ __('Become Instructor') }}</a>
                            </li>
                            <li><a href="{{ route('verify_certificate') }}">{{ __('Verify Certificate') }}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>