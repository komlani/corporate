<div class="col-lg-6">

    <form action="{{ route('visitor_request') }}" method="post" role="form" class="php-email-form" id="main_form">

        @csrf

        <div class="row">

            <div class="col form-group">

                <input type="text" name="first_name" class="form-control" id="first_name" placeholder="Your First Name"
                   >
                    <span class="text-danger error-text first_name_error"></span>


            </div>

            <div class="col form-group">

                <input type="text" name="last_name" class="form-control" id="last_name" placeholder="Your Last Name"
                   >
                    <span class="text-danger error-text last_name_error"></span>


            </div>

        </div>

        <div class="form-group">

            <div class="col form-group">

                <input type="text" class="form-control" name="email" id="email" placeholder="Your Email"
                     >
                    <span class="text-danger error-text email_error"></span>
            </div>

        </div>

        <div class="form-group">
            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject"
                >
                <span class="text-danger error-text subject_error"></span>

        </div>
        <div class="form-group">
            <textarea class="form-control" name="message" rows="5" placeholder="Message"
                ></textarea>
                <span class="text-danger error-text message_error"></span>

        </div>

        <div class="my-3" id="message"></div>

        <div class="text-center"><button type="submit">Send Message</button></div>

    </form>

</div>
