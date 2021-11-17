$(function () {
    $("#main_form").on("submit", function (e) {
        e.preventDefault();
        $.ajax({
            url: $(this).attr("action"),
            method: $(this).attr("method"),
            data: new FormData(this),
            processData: false,
            dataType: "json",
            contentType: false,
            beforeSend: function () {
                $(document).find("span.error-text").text("");
            },
            success: function (data) {
                if (data.status == 0) {
                    $.each(data.error, function (prefix, val) {
                        $("span." + prefix + "_error").text(val[0]);
                    });
                } else if (data.status == 1) {
                    $("#main_form")[0].reset();
                    $("#message")
                        .html(
                            '<div class="sent-message d-block">Your message has been sent. Thank you!</div>'
                        )
                        .show()
                        .delay(4000)
                        .fadeOut();
                } else {
                    $("#main_form")[0].reset();
                    $("#message")
                        .html(
                            '<div class="error-message d-block">Error, retry later!</div>'
                        )
                        .show()
                        .delay(4000)
                        .fadeOut();
                }
            },
        });
    });

    $("#newsletter_form").submit(function (e) {
        e.preventDefault();
        $.ajax({
            url: $(this).attr("action"),
            method: $(this).attr("method"),
            data: new FormData(this),
            processData: false,
            dataType: "json",
            contentType: false,
            beforeSend: function () {
                $(document).find("span.error-text").text("");
            },
            success: function (data) {
                if (data.status == 0) {
                    $.each(data.error, function (prefix, val) {
                        $("span." + prefix + "_error").text(val[0]);
                    });
                } else if (data.status == 1) {
                    $("#newsletter_form")[0].reset();
                    $("#newsletter")
                        .html(
                            '<div class="newsletter-sent d-block">Your email have been saved. Thank you!</div>'
                        )
                        .show()
                        .delay(4000)
                        .fadeOut();
                } else {
                    $("#newsletter_form")[0].reset();
                    $("#newsletter")
                        .html(
                            '<div class="newsletter-error d-block">Error, retry later! </div>'
                        )
                        .show()
                        .delay(4000)
                        .fadeOut();
                }
            },
        });
    });
});
