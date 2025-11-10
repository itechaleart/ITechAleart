<div class="tab-pane fade show active" id="Overview" role="tabpanel" aria-labelledby="Overview-tab">
    <div class="course-details-overview overview-content">
        @if(count($course->keyPoints) > 0)
        <div class="course-details-what-you-learn what-you-will-learn mb-4">
            <h4 class="pb-30 font-weight-bold">{{ __('What you will learn') }}</h4>

            <div class="course-details-learn-list what-you-learn-list-wrap row">
                <div class="col-12 col-md-6">
                    <ul class="list-unstyled">
                        @foreach(@$course->keyPoints as $key => $point)
                        @if($key % 2 == 0)
                        <li class="d-flex align-items-start mb-3">
                            <div class="check-wrap flex-shrink-0 me-3"><span class="course-details-learn-item-check check-icon iconify text-success fs-5" data-icon="akar-icons:check"></span></div>
                            <p class="flex-grow-1 mb-0 text-muted">{{ $point->name }}</p>
                        </li>
                        @endif
                        @endforeach
                    </ul>
                </div>

                <div class="col-12 col-md-6">
                    <ul class="list-unstyled">
                        @foreach(@$course->keyPoints as $key=> $point)
                        @if($key % 2 == 1)
                        <li class="d-flex align-items-start mb-3">
                            <div class="check-wrap flex-shrink-0 me-3"><span class="course-details-learn-item-check check-icon iconify text-success fs-5" data-icon="akar-icons:check"></span></div>
                            <p class="flex-grow-1 mb-0 text-muted">{{ $point->name }}</p>
                        </li>
                        @endif
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        @endif
        <div class="course-description">
            <p class="text-muted lh-base fs-6">{!! nl2br($course->description) !!}</p>
        </div>
    </div>
</div>