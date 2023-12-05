package com.example

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'team', action:'listTeam')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
