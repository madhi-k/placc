//
//  PLACCGuideView.swift
//  PLACC
//
//  Created by Klaudia Madhi on 16.10.21.
//

import SwiftUI

struct PLACCGuideView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Welcome to PLACC!")
                    .foregroundColor(Color("placc_purple"))
                    .font(.alata(size: 25))
                Text("\nThis application was build as part of a master thesis that aims at unveiling the relation between behaviours in a virtual software development project and the attributions that are created upon these behaviours. PLACC itself stands for Project Leader Attribution Consultant and Companion. As the name suggests, this app serves exactly the purpose of supporting project leaders (PLs) in situations in which a behaviour is unpleasant or inappropriate. \n\nThe data displayed in this app is retrieved by different means and presents different aspects. To help with the navigation and readability of such data, we invite you to read the following paragraphs that explain the information architecture of the app.")
                Text("\nBehaviours")
                    .foregroundColor(Color("placc_purple"))
                    .font(.alata(size: 25))
                Text("\nBehaviours are a compilation of the main behaviours perceived negatively by the projects leaders. Every behaviour though might have variations to it, which are presented in the detail view of a behaviour. The more extreme behaviours were made part of a survey, in which qualitative data was retrieved on the attributions more commonly made towards the behaviours. In such cases, the behaviours are equiped with personas, survey attribution data and suggestions on how to deal with such behaviour. \n\nOther variations were retrieved from open questions of interviews. These were not part of the survey questionnaire, but they represent interesting data for the reader. These are accompanied by attributions and again, by suggestions. From the attributions the reader can understand not only the perception of previous project leaders, but also where they stand with these perceptions. We want to remind the reader though that such perceptions are often subjective, and we wish for the reader to not be biased.")
            }.navigationTitle("PLACC Guide")
                .font(.alata())
                .padding()
        }
    }
}

struct PLACCGuideView_Previews: PreviewProvider {
    static var previews: some View {
        PLACCGuideView()
    }
}
