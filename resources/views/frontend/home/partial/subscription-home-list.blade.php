<!-- Subscription Plan Section start -->
@push('style')
<link rel="stylesheet" href="{{ asset('frontend/assets/css/subscription-section.css') }}">
@endpush
@php
$recommendedPackage = $subscriptions->where('recommended', 1)->first() ?? $subscriptions->first();
@endphp
<section class="subscription-plan-area bg-light section-t-space section-b-space">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title text-center mb-50">
                    <h3 class="section-heading">{{ __('Transform Education with AI Intelligence') }}</h3>
                    <p class="section-sub-heading">{{ __('Choose your subscription plan and bring personalized, automated learning to your classrooms.') }}</p>
                </div>
            </div>
        </div>

        <!-- Monthly/Yearly Toggle -->
        <div class="row justify-content-center mb-40">
            <div class="col-auto">
                <div class="pricing-toggle-wrapper">
                    <div class="pricing-toggle-container">
                        <span class="toggle-label monthly-label {{ $subscriptions->first() && $subscriptions->first()->monthly_price > 0 ? 'active' : '' }}">{{ __('Monthly') }}</span>
                        <label class="pricing-toggle" for="pricing-toggle">
                            <input type="checkbox" id="pricing-toggle" {{ $subscriptions->first() && $subscriptions->first()->yearly_price > 0 ? 'checked' : '' }}>
                            <span class="toggle-slider"></span>
                        </label>
                        <span class="toggle-label yearly-label {{ $subscriptions->first() && $subscriptions->first()->yearly_price > 0 ? 'active' : '' }}">{{ __('Yearly') }}</span>
                        @if($subscriptions->first() && $subscriptions->first()->yearly_price > 0)
                        <div class="yearly-badge">{{ __('Save 20%') }}</div>
                        @endif
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Subscription Layout -->
        <div class="row subscription-main-layout gx-4">
            <!-- Mobile: Plan Selector at Top (Horizontal) -->
            <div class="col-12 d-lg-none">
                <div class="plan-selector-sidebar-mobile">
                    <div class="sidebar-header">
                        <h4 class="sidebar-title">{{ __('Choose Your Plan') }}</h4>
                    </div>
                    <div class="plan-buttons-mobile">
                        @foreach($subscriptions as $index => $subscription)
                        <button class="plan-button-mobile {{ $subscription->id == $recommendedPackage->id ? 'active' : '' }}"
                            data-plan="{{ $subscription->id }}"
                            data-index="{{ $index }}"
                            data-order="{{ $subscription->order ?? ($index + 1) }}"
                            data-title="{{ __($subscription->title) }}"
                            data-icon="{{ getImageFile($subscription->icon) }}"
                            data-monthly-price="{{ $subscription->discounted_monthly_price ?? $subscription->monthly_price }}"
                            data-yearly-price="{{ $subscription->discounted_yearly_price ?? $subscription->yearly_price }}"
                            data-original-monthly="{{ $subscription->monthly_price }}"
                            data-original-yearly="{{ $subscription->yearly_price }}"
                            data-course="{{ $subscription->course }}"
                            data-bundle="{{ $subscription->bundle_course }}"
                            data-consultancy="{{ $subscription->consultancy }}"
                            data-device="{{ $subscription->device }}"
                            data-type="{{ $subscription->package_type }}">
                            <div class="button-content-mobile">
                                <span class="plan-name-mobile">{{ __($subscription->title) }}</span>
                                <div class="plan-price-mobile">
                                    <span class="monthly-price {{ $subscription->monthly_price > 0 ? 'active' : '' }}">
                                        @if($subscription->monthly_price < 1)
                                            {{ __('Free') }}
                                            @else
                                            {{ $subscription->discounted_monthly_price ?? $subscription->monthly_price }}{{ $currencySymbol ?? get_currency_symbol() }}
                                            @endif
                                            </span>
                                            <span class="yearly-price {{ $subscription->yearly_price > 0 ? '' : 'hidden' }}">
                                                @if($subscription->yearly_price < 1)
                                                    {{ __('Free') }}
                                                    @else
                                                    {{ $subscription->discounted_yearly_price ?? $subscription->yearly_price }}{{ $currencySymbol ?? get_currency_symbol() }}
                                                    @endif
                                                    </span>
                                </div>
                            </div>
                        </button>
                        @endforeach
                    </div>
                </div>
            </div>

            <!-- Main Content Area -->
            <div class="">
                <div class="subscription-content-wrapper">

                    @foreach($subscriptions as $index => $subscription)
                    @if($subscription->id == $recommendedPackage->id)
                    @php $currentPlanIndex = $index; @endphp
                    @endif
                    @endforeach

                    <div class="subscription-content-card active" data-plan="{{ $recommendedPackage->id }}" data-index="{{ $currentPlanIndex }}">
                        <div class="subscription-header">
                            <div class="plan-badge">
                                <span class="badge-text">{{ __('Recommended') }}</span>
                            </div>
                            <div class="plan-icon">
                                <img src="{{ getImageFile($recommendedPackage->icon) }}" alt="{{ $recommendedPackage->title }}">
                            </div>
                            <h2 class="plan-title">{{ __($recommendedPackage->title) }}</h2>
                        </div>

                        <div class="subscription-body">
                            <div class="row gx-4">
                                <!-- Left Column - Pricing & Features -->
                                <div class="col-lg-6">
                                    <div class="pricing-section">
                                        <div class="price-display monthly-price {{ $recommendedPackage->monthly_price > 0 ? 'active' : '' }}">
                                            @if($recommendedPackage->monthly_price < 1)
                                                <div class="price-free">
                                                <span class="price-amount">{{ __('Free') }}</span>
                                        </div>
                                        @else
                                        <div class="price-amount">
                                            {{ $recommendedPackage->discounted_monthly_price ?? $recommendedPackage->monthly_price }}
                                            <span class="currency">{{ $currencySymbol ?? get_currency_symbol() }}</span>
                                        </div>
                                        <div class="price-period">{{ __('per month') }}</div>
                                        @if(($recommendedPackage->discounted_monthly_price ?? $recommendedPackage->monthly_price) != $recommendedPackage->monthly_price)
                                        <div class="original-price">
                                            {{ $recommendedPackage->monthly_price }}{{ $currencySymbol ?? get_currency_symbol() }}
                                        </div>
                                        @endif
                                        @endif
                                    </div>

                                    <div class="price-display yearly-price {{ $recommendedPackage->yearly_price > 0 ? '' : 'hidden' }}">
                                        @if($recommendedPackage->yearly_price < 1)
                                            <div class="price-free">
                                            <span class="price-amount">{{ __('Free') }}</span>
                                    </div>
                                    @else
                                    <div class="price-amount">
                                        {{ $recommendedPackage->discounted_yearly_price ?? $recommendedPackage->yearly_price }}
                                        <span class="currency">{{ $currencySymbol ?? get_currency_symbol() }}</span>
                                    </div>
                                    <div class="price-period">{{ __('per year') }}</div>
                                    @if(($recommendedPackage->discounted_yearly_price ?? $recommendedPackage->yearly_price) != $recommendedPackage->yearly_price)
                                    <div class="original-price">
                                        {{ $recommendedPackage->yearly_price }}{{ $currencySymbol ?? get_currency_symbol() }}
                                    </div>
                                    @endif
                                    @endif
                                </div>
                            </div>

                            <div class="features-section">
                                <h4 class="features-title">{{ __('What\'s Included') }}</h4>
                                <ul class="features-list">
                                    @if($recommendedPackage->package_type == PACKAGE_TYPE_SUBSCRIPTION)
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        @if(intval($recommendedPackage->course) >= 100)
                                        <span class="feature-text">{{ __('Unlimited access to') }} {{ __('courses') }}</span>
                                        @else
                                        <span class="feature-text">{{ __('Unlimited access to').' '. $recommendedPackage->course.' '.__('courses') }}</span>
                                        @endif
                                    </li>
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        @if(intval($recommendedPackage->bundle_course) >= 100)
                                        <span class="feature-text">{{ __('Unlimited') }} {{ __('bundle courses') }}</span>
                                        @else
                                        <span class="feature-text">{{ __('Access to').' '. $recommendedPackage->bundle_course.' '.__('bundle courses') }}</span>
                                        @endif
                                    </li>
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        @if(intval($recommendedPackage->consultancy) >= 100)
                                        <span class="feature-text">{{ __('Unlimited') }} {{ __('consultancy hours') }}</span>
                                        @else
                                        <span class="feature-text">{{ __('Buy').' '. $recommendedPackage->consultancy.' '.__('consultancy hours') }}</span>
                                        @endif
                                    </li>
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        <span class="feature-text">{{ $recommendedPackage->device .' '. __("device access") }}</span>
                                    </li>
                                    @elseif($recommendedPackage->package_type == PACKAGE_TYPE_SAAS_INSTRUCTOR)
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        @if(intval($recommendedPackage->course) >= 100)
                                        <span class="feature-text">{{ __('Create unlimited') }} {{ __('courses') }}</span>
                                        @else
                                        <span class="feature-text">{{ __('Create').' '. $recommendedPackage->course.' '.__('courses') }}</span>
                                        @endif
                                    </li>
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        @if(intval($recommendedPackage->bundle_course) >= 100)
                                        <span class="feature-text">{{ __('Create') }} {{ __('Unlimited') }} {{ __('bundle courses') }}</span>
                                        @else
                                        <span class="feature-text">{{ __('Create').' '. $recommendedPackage->bundle_course.' '.__('bundle courses') }}</span>
                                        @endif
                                    </li>
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        <span class="feature-text">{{ __('Enable').' '. $recommendedPackage->subscription_course.' '.__('subscription courses') }}</span>
                                    </li>
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        @if(intval($recommendedPackage->consultancy) >= 100)
                                        <span class="feature-text">{{ __('Unlimited') }} {{ __('consultancy hours') }}</span>
                                        @else
                                        <span class="feature-text">{{ $recommendedPackage->consultancy.' '.__('consultancy hours') }}</span>
                                        @endif
                                    </li>
                                    @elseif($recommendedPackage->package_type == PACKAGE_TYPE_SAAS_ORGANIZATION)
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        <span class="feature-text">{{ __('Create unlimited instructors') }}</span>
                                    </li>
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        <span class="feature-text">{{ __('Create').' '. $recommendedPackage->student.' '.__('students') }}</span>
                                    </li>
                                    <li class="feature-item">
                                        <span class="feature-icon">✓</span>
                                        <span class="feature-text">{{ __('Create unlimited courses') }}</span>
                                    </li>
                                    @endif
                                </ul>
                            </div>
                        </div>

                        <!-- Right Column - Benefits & CTA -->
                        <div class="col-lg-6">
                            <div class="benefits-section">
                                <h4 class="benefits-title">{{ __('Why Choose This Plan?') }}</h4>
                                <div class="benefits-content" id="benefits-content-wrapper">
                                    @php
                                    $recommendedOrder = $recommendedPackage->order ?? ($currentPlanIndex + 1);
                                    @endphp

                                    @if($recommendedOrder == 1)
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">🤖</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('AI-Enhanced Learning') }}</h5>
                                            <p>{{ __('Personalized recommendations powered by intelligent algorithms.') }}</p>
                                        </div>
                                    </div>
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">📊</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Guided Progress') }}</h5>
                                            <p>{{ __('Track your improvement with real-time performance insights.') }}</p>
                                        </div>
                                    </div>
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">💸</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Affordable Entry') }}</h5>
                                            <p>{{ __('Ideal for small teams getting started with AI-powered learning.') }}</p>
                                        </div>
                                    </div>
                                    @elseif($recommendedOrder == 2)
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">📈</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Data-Driven Insights') }}</h5>
                                            <p>{{ __('Unlock detailed analytics on learner engagement and progress.') }}</p>
                                        </div>
                                    </div>
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">🧠</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Adaptive Learning') }}</h5>
                                            <p>{{ __('AI tailors the course path to match each learner’s performance.') }}</p>
                                        </div>
                                    </div>
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">🤝</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Team Collaboration') }}</h5>
                                            <p>{{ __('Perfect for training teams and small institutions seeking measurable results.') }}</p>
                                        </div>
                                    </div>
                                    @elseif($recommendedOrder == 3)
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">🏢</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Enterprise-Level Control') }}</h5>
                                            <p>{{ __('Centralize learning, analytics, and automation under one intelligent dashboard.') }}</p>
                                        </div>
                                    </div>
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">⚙️</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Scalable Infrastructure') }}</h5>
                                            <p>{{ __('Seamlessly expand as your organization grows—without limits.') }}</p>
                                        </div>
                                    </div>
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">🔮</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Strategic Insights') }}</h5>
                                            <p>{{ __('Leverage predictive analytics to boost learning outcomes and ROI.') }}</p>
                                        </div>
                                    </div>
                                    @else
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">🚀</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Premium Access') }}</h5>
                                            <p>{{ __('Get unlimited access to all premium content and features') }}</p>
                                        </div>
                                    </div>
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">💡</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Expert Support') }}</h5>
                                            <p>{{ __('24/7 customer support from our expert team') }}</p>
                                        </div>
                                    </div>
                                    <div class="benefit-highlight">
                                        <div class="highlight-icon">📈</div>
                                        <div class="highlight-text">
                                            <h5>{{ __('Career Growth') }}</h5>
                                            <p>{{ __('Accelerate your learning journey with structured content') }}</p>
                                        </div>
                                    </div>
                                    @endif
                                </div>

                                <div class="cta-section">
                                    <form method="post" action="{{ route('student.subscription.checkout', $recommendedPackage->uuid) }}" class="subscription-form">
                                        @csrf
                                        <input type="hidden" name="monthly" value="1" id="monthly-input">
                                        <button type="submit" class="cta-button">
                                            <span class="button-text">{{ __('Get Started Now') }}</span>
                                            <span class="button-arrow">→</span>
                                        </button>
                                    </form>
                                    <p class="cta-note">{{ __('Cancel anytime, no hidden fees') }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Desktop: Right Sidebar - Plan Selector (moved inside row) -->
            <div class="col-lg-2 col-xl-2 d-none d-lg-block">
                <div class="plan-selector-sidebar">
                    <div class="sidebar-header">
                        <h4 class="sidebar-title">{{ __('Choose Your Plan') }}</h4>
                    </div>

                    <div class="plan-buttons">
                        @foreach($subscriptions as $index => $subscription)
                        <button class="plan-button {{ $subscription->id == $recommendedPackage->id ? 'active' : '' }}"
                            data-plan="{{ $subscription->id }}"
                            data-index="{{ $index }}"
                            data-order="{{ $subscription->order ?? ($index + 1) }}"
                            data-title="{{ __($subscription->title) }}"
                            data-icon="{{ getImageFile($subscription->icon) }}"
                            data-monthly-price="{{ $subscription->discounted_monthly_price ?? $subscription->monthly_price }}"
                            data-yearly-price="{{ $subscription->discounted_yearly_price ?? $subscription->yearly_price }}"
                            data-original-monthly="{{ $subscription->monthly_price }}"
                            data-original-yearly="{{ $subscription->yearly_price }}"
                            data-course="{{ $subscription->course }}"
                            data-bundle="{{ $subscription->bundle_course }}"
                            data-consultancy="{{ $subscription->consultancy }}"
                            data-device="{{ $subscription->device }}"
                            data-type="{{ $subscription->package_type }}">
                            <div class="button-content">
                                <span class="plan-name">{{ __($subscription->title) }}</span>
                                <div class="plan-price">
                                    <span class="monthly-price {{ $subscription->monthly_price > 0 ? 'active' : '' }}">
                                        @if($subscription->monthly_price < 1)
                                            {{ __('Free') }}
                                            @else
                                            {{ $subscription->discounted_monthly_price ?? $subscription->monthly_price }}{{ $currencySymbol ?? get_currency_symbol() }}
                                            @endif
                                            </span>
                                            <span class="yearly-price {{ $subscription->yearly_price > 0 ? '' : 'hidden' }}">
                                                @if($subscription->yearly_price < 1)
                                                    {{ __('Free') }}
                                                    @else
                                                    {{ $subscription->discounted_yearly_price ?? $subscription->yearly_price }}{{ $currencySymbol ?? get_currency_symbol() }}
                                                    @endif
                                                    </span>
                                </div>
                            </div>
                            <div class="button-indicator"></div>
                        </button>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Custom JavaScript for Plan Switching -->
    <script>
        // Translation variables for JavaScript
        const translations = {
            unlimitedAccessTo: "{{ __('Unlimited access to') }}",
            unlimited: "{{ __('Unlimited') }}",
            courses: "{{ __('courses') }}",
            accessTo: "{{ __('Access to') }}",
            bundleCourses: "{{ __('bundle courses') }}",
            buy: "{{ __('Buy') }}",
            consultancyHours: "{{ __('consultancy hours') }}",
            deviceAccess: "{{ __('device access') }}",
            createUnlimited: "{{ __('Create unlimited') }}",
            create: "{{ __('Create') }}",
            enable: "{{ __('Enable') }}",
            subscriptionCourses: "{{ __('subscription courses') }}",
            free: "{{ __('Free') }}"
        };

        // Add common period translations used in price blocks
        translations.perMonth = "{{ __('per month') }}";
        translations.perYear = "{{ __('per year') }}";

        // Recommended plan id (used to show/hide the badge when switching plans)
        const recommendedId = "{{ $recommendedPackage->id }}";
        // Currency symbol for JS-rendered prices
        const currencySymbolJs = "{{ $currencySymbol ?? get_currency_symbol() }}";

        document.addEventListener('DOMContentLoaded', function() {
            const toggle = document.getElementById('pricing-toggle');
            const monthlyLabels = document.querySelectorAll('.monthly-label');
            const yearlyLabels = document.querySelectorAll('.yearly-label');
            const monthlyPrices = document.querySelectorAll('.monthly-price');
            const yearlyPrices = document.querySelectorAll('.yearly-price');
            const monthlyInput = document.getElementById('monthly-input');
            const subscriptionContent = document.querySelector('.subscription-content-card');

            // Toggle between monthly and yearly
            toggle.addEventListener('change', function() {
                const isYearly = this.checked;

                // Update labels
                monthlyLabels.forEach(label => label.classList.toggle('active', !isYearly));
                yearlyLabels.forEach(label => label.classList.toggle('active', isYearly));

                // Update prices
                monthlyPrices.forEach(price => price.classList.toggle('active', !isYearly));
                yearlyPrices.forEach(price => price.classList.toggle('active', isYearly));

                // Update form input
                monthlyInput.value = isYearly ? '0' : '1';

                // Update current plan display
                updateCurrentPlanDisplay();
                // Ensure main content price blocks are in sync with toggle state
                const contentCard = document.querySelector('.subscription-content-card');
                if (contentCard) {
                    const monthlyWrap = contentCard.querySelector('.price-display.monthly-price');
                    const yearlyWrap = contentCard.querySelector('.price-display.yearly-price');
                    if (monthlyWrap && yearlyWrap) {
                        monthlyWrap.classList.toggle('active', !isYearly);
                        monthlyWrap.classList.toggle('hidden', isYearly);
                        yearlyWrap.classList.toggle('active', isYearly);
                        yearlyWrap.classList.toggle('hidden', !isYearly);
                    }
                }
            });

            // Plan switching functionality - both desktop and mobile buttons
            const planButtons = document.querySelectorAll('.plan-button, .plan-button-mobile');
            planButtons.forEach(button => {
                button.addEventListener('click', function() {
                    const planId = this.dataset.plan;
                    const planData = {
                        title: this.dataset.title,
                        icon: this.dataset.icon,
                        monthlyPrice: this.dataset.monthlyPrice,
                        yearlyPrice: this.dataset.yearlyPrice,
                        originalMonthly: this.dataset.originalMonthly,
                        originalYearly: this.dataset.originalYearly,
                        course: this.dataset.course,
                        bundle: this.dataset.bundle,
                        consultancy: this.dataset.consultancy,
                        device: this.dataset.device,
                        type: this.dataset.type,
                        order: this.dataset.order
                    };

                    // Update active button for both desktop and mobile
                    planButtons.forEach(btn => btn.classList.remove('active'));
                    this.classList.add('active');

                    // Update main content
                    updateSubscriptionContent(planId, planData);
                });
            });

            function updateSubscriptionContent(planId, data) {
                const contentCard = document.querySelector('.subscription-content-card');
                contentCard.setAttribute('data-plan', planId);

                // Update icon
                contentCard.querySelector('.plan-icon img').src = data.icon;
                contentCard.querySelector('.plan-icon img').alt = data.title;

                // Update title
                contentCard.querySelector('.plan-title').textContent = data.title;

                // Update prices (fully replace the inner markup of the main price-display blocks)
                const monthlyWrap = contentCard.querySelector('.price-display.monthly-price');
                const yearlyWrap = contentCard.querySelector('.price-display.yearly-price');
                const monthlyVal = Number(data.monthlyPrice || 0);
                const yearlyVal = Number(data.yearlyPrice || 0);

                if (monthlyWrap) {
                    let monthlyHtml = '';
                    if (monthlyVal < 1) {
                        monthlyHtml = `<div class="price-free"><span class="price-amount">${translations.free}</span></div>`;
                    } else {
                        monthlyHtml = `<div class="price-amount">${data.monthlyPrice}<span class="currency">${currencySymbolJs}</span></div>`;
                        monthlyHtml += `<div class="price-period">${translations.perMonth}</div>`;
                        if (data.originalMonthly && Number(data.originalMonthly) > monthlyVal) {
                            monthlyHtml += `<div class="original-price">${data.originalMonthly}${currencySymbolJs}</div>`;
                        }
                    }
                    monthlyWrap.innerHTML = monthlyHtml;
                }

                if (yearlyWrap) {
                    let yearlyHtml = '';
                    if (yearlyVal < 1) {
                        yearlyHtml = `<div class="price-free"><span class="price-amount">${translations.free}</span></div>`;
                    } else {
                        yearlyHtml = `<div class="price-amount">${data.yearlyPrice}<span class="currency">${currencySymbolJs}</span></div>`;
                        yearlyHtml += `<div class="price-period">${translations.perYear}</div>`;
                        if (data.originalYearly && Number(data.originalYearly) > yearlyVal) {
                            yearlyHtml += `<div class="original-price">${data.originalYearly}${currencySymbolJs}</div>`;
                        }
                    }
                    yearlyWrap.innerHTML = yearlyHtml;
                }

                // Sync which price block should be visible according to toggle state
                const isYearlySelected = toggle.checked;
                if (monthlyWrap && yearlyWrap) {
                    monthlyWrap.classList.toggle('active', !isYearlySelected);
                    monthlyWrap.classList.toggle('hidden', isYearlySelected);
                    yearlyWrap.classList.toggle('active', isYearlySelected);
                    yearlyWrap.classList.toggle('hidden', !isYearlySelected);
                }

                // Update features based on package type
                const featuresList = contentCard.querySelector('.features-list');
                featuresList.innerHTML = generateFeaturesHTML(data);

                // Update benefits content based on subscription order
                const benefitsWrapper = contentCard.querySelector('#benefits-content-wrapper');
                if (benefitsWrapper) {
                    benefitsWrapper.innerHTML = generateBenefitsHTML(Number(data.order) || 0);
                }

                // Show/hide recommended badge depending on selected plan
                const badge = contentCard.querySelector('.plan-badge');
                if (badge) {
                    if (String(planId) === String(recommendedId)) {
                        badge.style.display = 'inline-block';
                    } else {
                        badge.style.display = 'none';
                    }
                }

                // Update form action
                const form = contentCard.querySelector('.subscription-form');
                // Note: Would need to get the UUID for the specific plan, this is a placeholder
                // form.action = `/subscription/checkout/${planId}`;
            }

            function generateFeaturesHTML(data) {
                let features = '';

                const courseVal = Number(data.course) || 0;
                const bundleVal = Number(data.bundle) || 0;
                const consultancyVal = Number(data.consultancy) || 0;

                if (data.type == 1) { // PACKAGE_TYPE_SUBSCRIPTION
                    const courseText = courseVal >= 100 ? `${translations.unlimitedAccessTo} ${translations.courses}` : `${translations.unlimitedAccessTo} ${data.course} ${translations.courses}`;
                    const bundleText = bundleVal >= 100 ? `${translations.unlimited} ${translations.bundleCourses}` : `${translations.accessTo} ${data.bundle} ${translations.bundleCourses}`;
                    const consultancyText = consultancyVal >= 100 ? `${translations.unlimited} ${translations.consultancyHours}` : `${translations.buy} ${data.consultancy} ${translations.consultancyHours}`;

                    features += `
                        <li class="feature-item">
                            <span class="feature-icon">✓</span>
                            <span class="feature-text">${courseText}</span>
                        </li>
                        <li class="feature-item">
                            <span class="feature-icon">✓</span>
                            <span class="feature-text">${bundleText}</span>
                        </li>
                        <li class="feature-item">
                            <span class="feature-icon">✓</span>
                            <span class="feature-text">${consultancyText}</span>
                        </li>
                        <li class="feature-item">
                            <span class="feature-icon">✓</span>
                            <span class="feature-text">${data.device} ${translations.deviceAccess}</span>
                        </li>
                    `;
                } else if (data.type == 2) { // PACKAGE_TYPE_SAAS_INSTRUCTOR
                    const courseText = courseVal >= 100 ? `${translations.createUnlimited} ${translations.courses}` : `${translations.create} ${data.course} ${translations.courses}`;
                    const bundleText = bundleVal >= 100 ? `${translations.create} ${translations.unlimited} ${translations.bundleCourses}` : `${translations.create} ${data.bundle} ${translations.bundleCourses}`;
                    const consultancyText = consultancyVal >= 100 ? `${translations.unlimited} ${translations.consultancyHours}` : `${data.consultancy} ${translations.consultancyHours}`;

                    features += `
                        <li class="feature-item">
                            <span class="feature-icon">✓</span>
                            <span class="feature-text">${courseText}</span>
                        </li>
                        <li class="feature-item">
                            <span class="feature-icon">✓</span>
                            <span class="feature-text">${bundleText}</span>
                        </li>
                        <li class="feature-item">
                            <span class="feature-icon">✓</span>
                            <span class="feature-text">${translations.enable} ${data.subscription_course} ${translations.subscriptionCourses}</span>
                        </li>
                        <li class="feature-item">
                            <span class="feature-icon">✓</span>
                            <span class="feature-text">${consultancyText}</span>
                        </li>
                    `;
                }

                return features;
            }

            function generateBenefitsHTML(order) {
                let html = '';
                if (order === 1) {
                    html += `
                        <div class="benefit-highlight">
                            <div class="highlight-icon">🤖</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('AI-Enhanced Learning') }}"}</h5>
                                <p>${"{{ __('Personalized recommendations powered by intelligent algorithms.') }}"}</p>
                            </div>
                        </div>
                        <div class="benefit-highlight">
                            <div class="highlight-icon">📊</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Guided Progress') }}"}</h5>
                                <p>${"{{ __('Track your improvement with real-time performance insights.') }}"}</p>
                            </div>
                        </div>
                        <div class="benefit-highlight">
                            <div class="highlight-icon">💸</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Affordable Entry') }}"}</h5>
                                <p>${"{{ __('Ideal for small teams getting started with AI-powered learning.') }}"}</p>
                            </div>
                        </div>
                    `;
                } else if (order === 2) {
                    html += `
                        <div class="benefit-highlight">
                            <div class="highlight-icon">📈</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Data-Driven Insights') }}"}</h5>
                                <p>${"{{ __('Unlock detailed analytics on learner engagement and progress.') }}"}</p>
                            </div>
                        </div>
                        <div class="benefit-highlight">
                            <div class="highlight-icon">🧠</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Adaptive Learning') }}"}</h5>
                                <p>${"{{ __('AI tailors the course path to match each learner’s performance.') }}"}</p>
                            </div>
                        </div>
                        <div class="benefit-highlight">
                            <div class="highlight-icon">🤝</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Team Collaboration') }}"}</h5>
                                <p>${"{{ __('Perfect for training teams and small institutions seeking measurable results.') }}"}</p>
                            </div>
                        </div>
                    `;
                } else if (order === 3) {
                    html += `
                        <div class="benefit-highlight">
                            <div class="highlight-icon">🏢</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Enterprise-Level Control') }}"}</h5>
                                <p>${"{{ __('Centralize learning, analytics, and automation under one intelligent dashboard.') }}"}</p>
                            </div>
                        </div>
                        <div class="benefit-highlight">
                            <div class="highlight-icon">⚙️</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Scalable Infrastructure') }}"}</h5>
                                <p>${"{{ __('Seamlessly expand as your organization grows—without limits.') }}"}</p>
                            </div>
                        </div>
                        <div class="benefit-highlight">
                            <div class="highlight-icon">🔮</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Strategic Insights') }}"}</h5>
                                <p>${"{{ __('Leverage predictive analytics to boost learning outcomes and ROI.') }}"}</p>
                            </div>
                        </div>
                    `;
                } else {
                    html += `
                        <div class="benefit-highlight">
                            <div class="highlight-icon">🚀</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Premium Access') }}"}</h5>
                                <p>${"{{ __('Get unlimited access to all premium content and features') }}"}</p>
                            </div>
                        </div>
                        <div class="benefit-highlight">
                            <div class="highlight-icon">💡</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Expert Support') }}"}</h5>
                                <p>${"{{ __('24/7 customer support from our expert team') }}"}</p>
                            </div>
                        </div>
                        <div class="benefit-highlight">
                            <div class="highlight-icon">📈</div>
                            <div class="highlight-text">
                                <h5>${"{{ __('Career Growth') }}"}</h5>
                                <p>${"{{ __('Accelerate your learning journey with structured content') }}"}</p>
                            </div>
                        </div>
                    `;
                }
                return html;
            }

            function updateCurrentPlanDisplay() {
                // Update the displayed prices based on toggle state
                const isYearly = toggle.checked;
                const activePrices = isYearly ? yearlyPrices : monthlyPrices;
                const inactivePrices = isYearly ? monthlyPrices : yearlyPrices;

                activePrices.forEach(price => price.classList.add('active'));
                inactivePrices.forEach(price => price.classList.remove('active'));

                // Also update the main content price block visibility if present
                const contentCard = document.querySelector('.subscription-content-card');
                if (contentCard) {
                    const monthlyWrap = contentCard.querySelector('.price-display.monthly-price');
                    const yearlyWrap = contentCard.querySelector('.price-display.yearly-price');
                    if (monthlyWrap && yearlyWrap) {
                        monthlyWrap.classList.toggle('active', !isYearly);
                        monthlyWrap.classList.toggle('hidden', isYearly);
                        yearlyWrap.classList.toggle('active', isYearly);
                        yearlyWrap.classList.toggle('hidden', !isYearly);
                    }
                }
            }

            // Ensure initial sync on load
            updateCurrentPlanDisplay();
        });
    </script>
</section>
<!-- Subscription Plan Section end -->