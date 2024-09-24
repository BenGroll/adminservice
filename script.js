document.addEventListener("DOMContentLoaded", function () {
    
    const admin = document.getElementById("admin");

    if (!admin) {
        return;
    }

    admin.addEventListener("click", function (event) {

        const date = new Date();

        const formattedDate = date.toLocaleString('de-DE');

        event.target.dispatchEvent(new CustomEvent("notify", {
            bubbles: true,
            detail: {
                text: formattedDate + " - Admin!"
            },
        }));

    });

});
