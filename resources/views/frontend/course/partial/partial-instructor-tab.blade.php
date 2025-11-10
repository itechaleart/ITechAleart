<div class="tab-pane fade" id="Instructor" role="tabpanel" aria-labelledby="Instructor-tab">
    <div class="row">
        <h4 class="mb-4 col-12 course-details-instructor-heading font-weight-bold">{{ __('Meet Your Instructor') }}</h4>

        <div class="course-details-instructor-wrap meet-instructor-item-wrap">
            @php
            $instructors = $course->course_instructors->where('status', STATUS_APPROVED);
            // Add course author if not already in instructors list
            if($course->user && !$instructors->contains('instructor_id', $course->user->id)){
            $instructors = $instructors->push((object)['user' => $course->user, 'instructor_id' => $course->user->id]);
            }
            @endphp
            @foreach ($instructors as $course_instructor)
            @if($course_instructor->user)
            <div class="col-12">
                <div class="course-details-instructor-item meet-instructor-item theme-border mb-25 pb-20 radius-8 shadow-sm bg-white">
                    @php
                    if($course_instructor->user->role == USER_ROLE_INSTRUCTOR){
                    $userType = 'instructor';
                    }
                    else{
                    $userType = 'organization';
                    }
                    @endphp

                    <div class="course-details-instructor-top-title mb-25 p-20 bg-light border-bottom radius-8">
                        <h6 class="font-18"><a href="{{ route('userProfile',$course_instructor->user->id) }}" class="text-decoration-none">{{ @$course_instructor->user->name }}</a></h6>
                    </div>
                    <div class="course-details-instructor-top-part row px-20">
                        <div class="col-md-7 col-lg-7 col-xl-7">
                            <div class="meet-your-instructor-left d-flex">
                                <div class="course-details-instructor-img meet-instructor-img-wrap flex-shrink-0">
                                    <a href="{{ route('userProfile',$course_instructor->user->id) }}">
                                        <img src="{{ getImageFile(@$course_instructor->user->image_path) }}" alt="img" class="img-fluid rounded-circle" style="width:80px;height:80px;object-fit:cover;">
                                    </a>
                                </div>
                                <div class="flex-grow-1">
                                    {{-- <p class="font-medium color-heading mb-1">{{ @$course_instructor->user->name }}</p> --}}
                                    <p class="course-details-instructor-title font-12 mb-2"><a href="{{ route('userProfile',$course_instructor->user->id) }}">{{ @$course_instructor->user->professional_title }}</a></p>
                                    <div class="course-details-instructor-badge teacher-tag font-medium font-14 radius-4 px-3 py-1">{{
                                        __('Instructor') }}</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-lg-5 col-xl-5">
                            <div class="meet-your-instructor-right">
                                <div class="course-details-instructor-stats d-flex justify-content-between">
                                    @php
                                    $total_instructor_course = count($course_instructor->user->$userType->courses);
                                    $total_instructor_students = $course_instructor->user->$userType->enrollments->count();
                                    @endphp
                                    <div class="stat-item text-center p-2 bg-light rounded">
                                        <div class="course-details-instructor-stat meet-instructor-extra-info-item color-heading fw-bold"><span class="iconify text-warning me-1"
                                                data-icon="bi:star"></span>{{ number_format(getUserAverageRating($course_instructor->instructor_id), 1) }}</div>
                                        <small class="text-muted">{{ __('Rating') }}</small>
                                    </div>
                                    <div class="stat-item text-center p-2 bg-light rounded">
                                        <div class="course-details-instructor-stat meet-instructor-extra-info-item color-heading fw-bold"><span class="iconify  me-1"
                                                data-icon="ph:student"></span>{{ $total_instructor_students }}</div>
                                        <small class="text-muted">{{ __('Students') }}</small>
                                    </div>
                                    <div class="stat-item text-center p-2 bg-light rounded">
                                        <div class="course-details-instructor-stat meet-instructor-extra-info-item color-heading fw-bold"><span class="iconify text-success me-1"
                                                data-icon="cil:badge"></span>{{ get_instructor_ranking_level(@$course_instructor->user->badges) }}</div>
                                        <small class="text-muted">{{ __('Badge') }}</small>
                                    </div>
                                    <div class="stat-item text-center p-2 bg-light rounded">
                                        <div class="course-details-instructor-stat meet-instructor-extra-info-item color-heading fw-bold"><span class="iconify text-info me-1"
                                                data-icon="ph:monitor-light"></span>{{ $total_instructor_course }}</div>
                                        <small class="text-muted">{{ __('Courses') }}</small>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="course-details-instructor-about meet-your-instructor-content-part px-20 pt-3">
                            <h6 class="font-16  mb-3">{{ __('About Instructor') }}</h6>
                            <p class="text-muted lh-base">{{ @$course_instructor->user->$userType->about_me }}</p>

                        </div>
                    </div>
                </div>

                @endif
                @endforeach
            </div>

        </div>
    </div>