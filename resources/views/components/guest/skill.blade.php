@if ($skills)

    <section id="skills" class="skills">
        <div class="container" data-aos="fade-up">

            <div class="row skills-content">

                @foreach ($skills as $skill)

                    <div class="col-md-6">

                        <div class="progress">

                            <span class="skill">{{ $skill->title }}<i
                                    class="val">{{ $skill->value }}%</i></span>

                            <div class="progress-bar-wrap">

                                <div class="progress-bar" role="progressbar" aria-valuenow="{{ $skill->value }}"
                                    aria-valuemin="0" aria-valuemax="100"></div>

                            </div>

                        </div>

                    </div>

                @endforeach

            </div>

        </div>

    </section>

@endif
