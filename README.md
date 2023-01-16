# zookeeper

import SwiftUI

@main
struct ZookeeperApp: App 
{
    var body: some Scene 
    {
        WindowGroup 
        {
            ContentView()
        }
    }
}

import SwiftUI

struct ContentView: View
{
    let animalGroups = [ … ]
    var body: some View
    {
        List
        {
            ForEach(
                animalGroups
            ) { animalGroup in
                Section(
                    header: Text(
                        animalGroup.groupName
                    )
                ) {
                    ForEach(
                        animalGroup.animals
                    ) { animal in
                        Text(
                            animal.name
                        )
                    }
                }
            }
        }
    }
}
struct Animal: Identifiable
{
    var id = UUID()
    var name: String
}
struct AnimalGroup: Identifiable
{
    var id = UUID()
    var groupName : String
    var animals : [ Animal ]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
