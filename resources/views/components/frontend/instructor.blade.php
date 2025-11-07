<div class="card instructor-item search-instructor-item position-relative text-center border-0 hm-glass-card rounded-4 {{ $type == INSTRUCTOR_CARD_TYPE_THREE ? 'p-20' : 'p-30' }} px-3">
    @php
    $percent = $user->hourly_rate && $user->hourly_old_rate ? (($user->hourly_old_rate -
    $user->hourly_rate) * 100) / $user->hourly_old_rate : 0;
    @endphp
    @if ($percent && $user->consultation_available == 1)
    <span class="instructor-price-cutoff badge radius-3 font-12 font-medium position-absolute bg-orange">{{
        round(@$percent) }}%
        {{ __('off') }}</span>
    @endif

    <!-- Instructor Image Container -->
    <div class="hm-instructor-image mb-3 position-relative overflow-hidden rounded-3">
        <img src="{{ getImageFile(@$user->image_path) }}" alt="instructor" class="hm-instructor-img w-100">
        <!-- Overlay with name on hover -->
        <div class="hm-instructor-overlay position-absolute bottom-0 start-0 w-100 p-3 bg-gradient-dark">
            <h6 class="mb-0 text-white">{{ $user->name }}</h6>
        </div>
    </div>

    <div class="card-body p-0 text-center">
        <!-- Designation -->
        <p class="instructor-designation font-medium mb-2 hm-text-white-80">
            {{ @$user->professional_title }}
            @if(get_instructor_ranking_level($user->badges))<span class="mx-2 text-primary">||</span>{{ get_instructor_ranking_level($user->badges) }}
        </p>@endif

        <!-- Rating -->
        <?php
        $average_rating = $user->courses->where('average_rating', '>', 0)->avg('average_rating');
        ?>
        <div class="course-rating hm-instructor-rating w-100 mb-3 d-flex align-items-center justify-content-center">
            <span class="font-medium font-14 me-2 text-warning">{{ number_format(@$average_rating, 1) }}</span>
            <div class="star-ratings">
                <div class="fill-ratings" style="width: {{ $average_rating * 20 }}%">
                    <span>★★★★★</span>
                </div>
                <div class="empty-ratings">
                    <span>★★★★★</span>
                </div>
            </div>
            <span class="rating-count font-14 ms-2 hm-text-white-70">({{ count(@$user->courses->where('average_rating', '>', 0)) }})</span>
        </div>

        <!-- Badges - shown on hover -->
        <div class="hm-instructor-badges hm-hover-reveal mb-3">
            <div class="d-flex flex-wrap justify-content-center gap-1">
                @foreach ($user->badges as $badge)
                <img src="{{ asset($badge->badge_image) }}" title="{{ $badge->name }}" alt="{{ $badge->name }}" class="hm-badge-icon rounded-circle border border-white-20">
                @endforeach
            </div>
        </div>

        <!-- Price - shown on hover -->
        <div class="hm-instructor-price hm-hover-reveal mb-3">
            @if ($user->consultation_available == 1)
            @if ($user->hourly_rate < $user->hourly_old_rate)
                <div class="d-flex align-items-center justify-content-center">
                    <span class="new-price font-medium text-success me-2">{{ $user->hourly_rate }}/{{ __('Hour') }}</span>
                    <span class="old-price text-decoration-line-through hm-text-white-60 font-13">{{ $user->hourly_old_rate }}</span>
                </div>
                @else
                <div class="price-display font-medium text-success">{{ $user->hourly_rate }}/{{ __('Hour') }}</div>
                @endif
                @endif
        </div>

        <!-- Button -->
        <div class="instructor-action">
            @if($type == INSTRUCTOR_CARD_TYPE_ONE || $type == INSTRUCTOR_CARD_TYPE_THREE)
            <a {{ $type == INSTRUCTOR_CARD_TYPE_THREE ? 'target=_blank' : '' }} href="{{ route('userProfile', $user->id) }}" class="btn btn-outline-light btn-sm w-100 rounded-pill">{{ __('View Profile') }}</a>
            @elseif($type == INSTRUCTOR_CARD_TYPE_TWO)
            @php $hourly_fee = 0; @endphp
            @if($currencyPlacement ?? get_currency_placement() == 'after')
            @php $hourly_fee = $user->hourly_rate . ' ' . $currencySymbol ?? get_currency_symbol() . '/h'; @endphp
            @else
            @php $hourly_fee = $currencySymbol ?? get_currency_symbol() . ' ' . $user->hourly_rate . '/h'; @endphp
            @endif
            <button type="button" data-type="{{ $user->available_type }}" data-booking_instructor_user_id="{{ $user->id }}" data-hourly_fee="{{ $hourly_fee }}" data-hourly_rate="{{ $user->hourly_rate }}" data-get_off_days_route="{{ route('getOffDays', $user->id) }}" class="btn btn-primary btn-sm w-100 rounded-pill bookSchedule" data-bs-toggle="modal" data-bs-target="#consultationBookingModal">{{ __('Book Schedule') }}</button>
            @endif
        </div>
    </div>
</div>