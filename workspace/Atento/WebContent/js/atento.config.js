requirejs.config({
    //baseUrl : '/js',
    "paths": {
        "jquery": [
            "jquery-1.11.3.min"
        ],
        "bootstrap": [
            "bootstrap.min"
        ],
        "owl": [
            "owl.carousel.min"
        ],
        "owl2": [
            "owl.carousel.min.2"
        ],
        "mmenu": [
            "jquery.mmenu.min.all"
        ],
        'fancybox' : [
            "jquery.fancybox.pack"
        ],
        "async": [
            "async"
        ],
        "goog": [
            "goog"
        ],
        "propertyParser": [
            "propertyParser"
        ],
        "recaptcha": [
            "//www.google.com/recaptcha/api"
        ],
        "pagination": [
            "jquery-simple-pagination-plugin"
        ]

    },

    "shim" : {
        "bootstrap" : {
            deps : ['jquery']
        },
        "owl" : {
            deps : ['jquery']
        },
        "owl2" : {
            deps : ['jquery']
        },
        "mmenu" : {
            deps : ['jquery']   
        },
        "fancybox" : {
            deps : ['jquery'],
            exports : 'fancybox'
        },
        "pagination" : {
            deps : ['jquery']   
        }
    }
});

require(['atento.menu']);
require(['atento.cookies']);