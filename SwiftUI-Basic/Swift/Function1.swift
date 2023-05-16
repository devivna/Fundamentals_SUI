
import SwiftUI

/*
 
 Extract Func
 
 -> in var body: Button(action: ) -> nameFunc()
 -> under var body - func nameFunc() { }


 Extract View
 
 -> in var body: nameView (w\t parentesis)
 -> under var body: privare var nameView : View { }
  
 
 */

struct Function1: View {

    @State var backGroundColor = Color.yellow

    var body: some View {
        ZStack {
            backGroundColor
                .ignoresSafeArea()

            contentLayer
            }
        }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed() {
        backGroundColor = .mint

    }
    
}

struct Function1_Previews: PreviewProvider {
    static var previews: some View {
        Function1()
    }
}
