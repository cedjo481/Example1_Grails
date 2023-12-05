package com.example

class BootStrap {

    def init = { servletContext ->
        def team1= new Team (name: "AAAAAA",city: "AAAAAAAA", stadium: "aaazzzzz",logo: "AZZZZZ", manager: "ZGGKFNUU" )
        def team2= new Team (name: "BBBBBBB",city: "AANNNBVAAAAAA", stadium: "aaaUIUUIOPzzzzz", logo: "AZZZZZ", manager: "ZGGKFNUU"  )
        def teamList =[team1,team2]
        teamList.each {it.save()}
        Team.saveAll(teamList)
    }
    def destroy = {
    }
}
