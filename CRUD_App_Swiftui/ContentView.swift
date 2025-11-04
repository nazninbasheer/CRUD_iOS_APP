
import SwiftUI

struct ContentView: View {
    @State private var list : [String] = []
    @State private var items : String = ""
    var body: some View {
        ZStack{
            Color.brown.opacity(0.3)
                .ignoresSafeArea(.all)
    VStack{
        Text("ADD ITEMS").font(.title)
            .fontWeight(.heavy)
            .padding()
        
        TextField("Add items",text:$items)
            .shadow(color: Color.brown, radius:5)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.brown,lineWidth: 4))
            .padding()
    HStack{
        Image(systemName: "plus")
        Button("ADD"){
            if !items .isEmpty{
                list.append(items)
                items = ""
            }
        }
        }.padding()
            .font(.headline)
            .foregroundColor(Color.white)
            .background(.brown.opacity(0.7))
            .cornerRadius(15)
        Spacer()
        
        Text("ITEMS")
            .underline()
            .font(.headline)
            .fontWeight(.heavy)
            .padding()
            
        List{
        ForEach(list.indices, id: \.self){
                index in
            TextField( "" ,text: $list[index])
                .padding(8)
                .foregroundColor(Color.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .listRowBackground((index % 2 == 0 ) ? Color.brown.opacity(0.2)
                    :Color.brown.opacity(0.4))
              
        }.onDelete{
            list.remove(atOffsets: $0)}
            
        }.cornerRadius(30)
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.brown,lineWidth: 2))
            .padding()
            
            
        }
    }
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
