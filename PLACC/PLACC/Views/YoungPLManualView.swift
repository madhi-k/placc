//
//  YoungPLManual.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct YoungPLManualView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hey you, welcome to the world of project management and leadership!\n\nOver the course of the last semesters, we have created a compilation of tips and tricks to help you navigate through this experience. Hope this will be useful 🤍")
                    .padding(.horizontal)
                ExpandableView(headerTitle: "Social aspect") {
                    Text("Project leaders in the iPraktikum consider a friendly atmosphere to be essential for the project's success. Therefore, special measures are often taken to create such an environment. \n\nThankfully Scrum introduces Sprint 0, a period of time in which no coding is generally involved. Instead, the goal of this sprint is for the team members to get aqcuanted with the project and most importantly, with each other. This familiarization phase is facilitated through: \n\n- Ice breakers: Find an activity which suits most of the team, expecially the more introverted participants. This will make them feel more empowered and excepted.\n-Ice breakers can take different forms; they can be scheduled or spontainous, they can last for hours or just 5 minutes. They can even be incorporated in the weekly meetings, if the team's time management skills allow for that 😉")
                }
                ExpandableView(headerTitle: "Behavioural aspects in a virtual world") {
                    Text("The virtual setting presented everyone with new situations. These situations recalibrated the way people behave and are perceived in the meetings. For many project leaders the lack of physical presence made it considerably difficult to read other people's intentions and motivation. \n\nIn lack of such information, misinterpreta-tions were also common. To minimize this error in judgement (also known as the attribution error) a project leader can: \n\n-Set together with the team a list a rules for the meetings. This should be done in cooperation with the team. E.g. during discussion, everyone should unmute themselves. \n-Set these rules especially in regards to the customers. By the beginning of the project, the project leader must have already gotten a feeling about the professionalism of the customers, and must know how the team must adjust.\n-Encourage the team to be open about what they dislike in a meeting, in order to improve week by week. \n-Color test or other fun, positive personality tests can make you and the other team members learn more about each others personality and see behaviours in a different light. You can also learn more about how a person operates in different situations simply by talking about it. \n\nThe process of building trust may be slower in distributed teams, but not unachievable. Have patience and lead with an open mind.")
                }
            }.navigationTitle("Young PL's Manual")
            .font(.alata())
        }
    }
}

struct YoungPLManualView_Previews: PreviewProvider {
    static var previews: some View {
        YoungPLManualView()
    }
}
