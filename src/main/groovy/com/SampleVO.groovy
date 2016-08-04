package com

import grails.validation.Validateable


class SampleVO implements Validateable{

    String name
    String hobby
    String sport
    Integer age


    static constraints = {
        name(nullable: false, blank: false)
        hobby(nullable: true, blank: true)
    }
}
