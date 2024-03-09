//
//  Registro.swift
//  Hackathon
//
//  Created by CEDAM25 on 07/03/24.
//

import SwiftUI

struct Registro: View {
    
    enum Paises: String, CaseIterable, Identifiable {
            case Otro, Afganistán, Albania, Alemania, Andorra, Angola, Argelia, Argentina, Armenia, Australia, Austria, Azerbaiyán, Bahamas, Bangladés, Barbados, Baréin, Bélgica, Belice, Benín, Bielorrusia, Birmania, Bolivia, Bosnia , Botsuana, Brasil, Brunéi, Bulgaria,  Burundi, Bután, Camboya, Camerún, Canadá, Catar, Chad, Chile, China, Chipre,  Colombia, Comoras,  Croacia, Cuba, Dinamarca, Dominica, Ecuador, Egipto,  Eritrea, Eslovaquia, Eslovenia, España, Estonia, Etiopía, Filipinas, Finlandia, Fiyi, Francia, Gabón, Gambia, Georgia, Ghana, Granada, Grecia, Guatemala, Guyana, Guinea,  Haití, Honduras, Hungría, India, Indonesia, Irak, Irán, Irlanda, Islandia,  Israel, Italia, Jamaica, Japón, Jordania, Kazajistán, Kenia, Kirguistán, Kiribati, Kuwait, Laos, Lesoto, Letonia, Líbano, Liberia, Libia, Liechtenstein, Lituania, Luxemburgo,  Malasia, Malaui, Maldivas, Malí, Malta, Marruecos, Mauricio, Mauritania, México, Micronesia, Moldavia, Mónaco, Mongolia, Montenegro, Mozambique, Namibia, Nauru, Nepal, Nicaragua, Níger, Nigeria, Noruega,  Omán,  Pakistán, Palaos, Panamá,  Paraguay, Perú, Polonia, Portugal,  Ruanda, Rumania, Rusia, Samoa, Serbia, Seychelles,  Singapur, Siria, Somalia,  Suazilandia, Sudán,  Suecia, Suiza, Surinam, Tailandia, Tanzania, Tayikistán,  Túnez, Turkmenistán, Turquía, Tuvalu, Ucrania, Uganda, Uruguay, Uzbekistán, Vanuatu, Venezuela, Vietnam, Yemen, Yibuti, Zambia, Zimbabue
            var id: Self { self }
        }
    enum Organizacion: String, CaseIterable, Identifiable {
            case Otra, Organización1, Organización2, Organización3, Organización4, Organización5
            var id: Self { self }
        }
    @State private var selecteccionaPais: Paises = .Otro
    @State private var selecteccionaOrganizacion: Organizacion = .Otra
    @State private var date = Date()
    @State private var birth = Date.now
    @State var nombre: String = ""
    @State var apellidos: String = ""
    
    
    @State var user: String = ""
    @State var password: String = ""
    @State var email: String = ""
    @State var notifyMeAbout:  Bool = false
    @State private var showSheet: Bool = false
    @State private var pick: Bool = false
    

            
    var body: some View {
        NavigationStack{
            ZStack{
                //0xb2e0f9
                //0x48b487
                //0x3b68b0
                Color(hex: 0x48b487)
                    .ignoresSafeArea()
                VStack {
                    
                    Text("¡Únete a nosotros!")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Form{
                        
                        Section{
                            List {
                                Picker("¿De donde vienes?:", selection: $selecteccionaPais) {
                                    ForEach(Paises.allCases) { pais in
                                        Text(pais.rawValue.capitalized)
                                    }
                                }
                            }
                            
                            DatePicker(selection: $birth, in: ...Date.now, displayedComponents: .date) {
                                Text("Fecha de nacimiento")
                            }
                            Text("Nombre")
                            TextField("Nombre",text: $nombre)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 250, height: 5)
                                .padding(20)
                            
                            Text("Apellidos")
                            TextField("Apellidos",text: $apellidos)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 250, height: 5)
                                .padding(20)
                        }
                        
                        Section{
                            Text("Soy parte de una organización")
                            List {
                                Picker("Seleccione alguna:", selection: $selecteccionaOrganizacion) {
                                    ForEach(Organizacion.allCases) { org in
                                        Text(org.rawValue.capitalized)
                                    }
                                }
                            }
                        }
                        //Crear un usuario
                        Section{
                            Text("Usuario")
                            TextField("Username",text: $user)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 250, height: 5)
                                .padding(20)
                            
                            Text("Correo")
                            TextField("Email",text: $email)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 250, height: 5)
                                .padding(20)
                            
                            Text("Contraseña")
                            SecureField("Contraseña", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 250, height: 5)
                                .padding(20)
                            
                                .padding(.bottom)
                        }
                        
                        //POLITICAS DE SEGURIDAD
                        Toggle("Acepto todos los términos y condiciones", isOn: $pick)
                        Button("Políticas de Seguridad") {
                            self.showSheet = true
                        }
                        .sheet(isPresented: $showSheet) {
                            Text("Políticas de Seguridad")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .padding(.top)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur volutpat laoreet nisl sit amet porttitor. Nunc metus metus, consequat sit amet tortor vitae, porta maximus neque. Morbi est nisi, malesuada ac est at, vehicula finibus arcu. Nam diam orci, accumsan quis eleifend ut, tempor nec velit. Phasellus sed orci eu turpis facilisis tincidunt a sed libero. Aliquam rhoncus, tortor sodales dictum posuere, diam sem ultricies metus, eget volutpat mi est at neque. Proin nec congue purus, id congue justo.In odio sapien, imperdiet at iaculis et, viverra eu magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque pretium augue vitae tellus venenatis pulvinar. Duis tincidunt lacus nec urna porta tincidunt. Mauris ultrices, nisl a interdum ullamcorper, magna leo consequat eros, a blandit felis augue a sapien. Fusce ac tortor sit amet felis scelerisque luctus vitae vel felis. In euismod aliquam urna, non varius nibh rhoncus ut. Integer scelerisque at nisl sed porttitor.Duis id velit vel nisi vehicula malesuada. Sed lobortis, eros ac elementum vehicula, massa eros tristique quam, sed semper sem velit id orci. Donec condimentum, quam ut convallis rhoncus, magna dui semper ligula, in malesuada purus ante id urna. Cras congue pharetra suscipit. Aliquam a congue ante. Cras imperdiet volutpat felis et ullamcorper.")
                                .presentationDetents([.medium, .large])
                                .padding(15)
                        }
                        
                        Section{
                            
                            NavigationLink{
                                InicioUsuario()
                            } label: {
                                Text("Registrarse")
                                    .foregroundColor(.white)
                                    .frame(width:335 , height: 40)
                                    .background(Color(hex: 0x48b487))
                                    .cornerRadius(10)
                                    .padding(.leading,16)
                            }
                        }
                    }
                }
            }
        }
    }

}

#Preview {
    Registro()
}
extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
}
