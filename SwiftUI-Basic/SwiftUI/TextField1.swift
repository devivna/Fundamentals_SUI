// $name = can change
// name = onle read 

import SwiftUI

struct TextField111: View {
    
    @State var writedtext = ""
    @State var savedText: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                TextField("Find an element", text: $writedtext)
                //.textFieldStyle(.plain) // no design
                //.textFieldStyle(.automatic) // based on context's style
                    .textFieldStyle(.roundedBorder) // with system defined rounded border
                
                    .font(.callout)
                    .foregroundColor(.black)
                    .padding(2)
                    .background(.gray.opacity(0.7))
                    .cornerRadius(10)
                    .padding()
                
                Button {
                    if isApropriate() { saveText()  }
                } label: {
                    Text("Save")
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .foregroundColor( isApropriate() ? .black : .black.opacity(0.3))
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .padding()
                }
                .disabled(!isApropriate())
                
                ForEach(savedText, id: \.self) { text in
                    Text(text)
                }
            }
        }
    } // END BODY
    
    func isApropriate() -> Bool {
        writedtext.count >= 3
    }
    
    func saveText() {
        savedText.append(writedtext)
        writedtext = ""
    }

}

struct TextField1_Previews: PreviewProvider {
    static var previews: some View {
        TextField111()
    }
}
