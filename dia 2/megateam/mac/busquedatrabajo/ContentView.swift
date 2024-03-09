
import SwiftUI

struct Usuario
{
  let user: String
  let pass: String
}

struct ContentView: View {
    @State private var vistaActual = 1
    @State private var usuarioValido = false
    @State private var user: String = ""
    @State private var pass: String = ""
    
    var listaUsuarios: [Usuario] = [
        Usuario(user: "Ariel", pass: "1234"),
        Usuario(user: "Elena", pass: "5678"),
        Usuario(user: "Carlos", pass: "abcd"),
        Usuario(user: "Laura", pass: "efgh"),
        Usuario(user: "Juan", pass: "ijkl"),
        Usuario(user: "María", pass: "mnop"),
        Usuario(user: "Pedro", pass: "qrst"),
        Usuario(user: "Sofía", pass: "uvwx"),
        Usuario(user: "David", pass: "yz01"),
        Usuario(user: "Ana", pass: "2345")
    ]

    
    var body: some View {
        VStack {
            if vistaActual == 1 {
                            iniciarSesion(cambiarVista: { selectOption in
                                if selectOption == 1 {
                                    self.validarUsuario()
                                } else {
                                    self.vistaActual = 3
                                }
                            }, usuarioValido: $usuarioValido, user: $user, pass: $pass)
                        }else if vistaActual == 2 {
                            Listatrabajos(cambiarVista: {
                                self.vistaActual = 4
                            })
                        } else if vistaActual == 3 {
                            RegistroA(cambiarVista: {
                                self.vistaActual = 4
                            })
                        } else if vistaActual == 4 {
                            PerfilVista(cambiarVista: {
                                self.vistaActual = 5
                            }, nombreUsuario: user) // Pasar el nombre de usuario aquí
                        }else if vistaActual == 5 {
                            PerfilVista(cambiarVista: {
                                self.vistaActual = 121
                            }, nombreUsuario: user) // Pasar el nombre de usuario aquí
                        }
        }
    }
    func validarUsuario() {
            for usuario in listaUsuarios {
                if usuario.user == user && usuario.pass == pass {
                    self.usuarioValido = true
                    self.vistaActual = 2
                    return
                }
            }
            self.usuarioValido = false
        }
}

struct iniciarSesion: View {
    var cambiarVista: (Int) -> Void
    @Binding var usuarioValido: Bool
    @Binding var user: String
    @Binding var pass: String
    
    let FieldColor: Color = Color(red: 0.8, green: 0.8, blue: 0.8)
    let TextColor: Color = Color(red: 0.5, green: 0.5, blue: 0.5)
    let ButtonColor: Color = Color(red: 0.8, green: 0.3, blue: 0.7)
    let BackGroundColor: Color = Color(red: 0xF3 / 255.0, green: 0x2E / 255.0, blue: 0x63 / 255.0)

    var body: some View {
        //BackGroundColor.opacity(1)
            //.ignoresSafeArea()
        Image("simbolo_identikx80-2")
        //.background(BackGroundColor)
            .imageScale(.large)
            .position(x: 200, y: 160)
        Text("Iniciar Sesion")
        //.font(.custom("Montserrat-VariableFont_wght", size: 20))
        //.background(BackGroundColor)
            .foregroundStyle(.black)
            .position(x: 180, y: 120)
            .padding()
        
        TextField("Ingrese Nombre", text: $user)
        //.font(.custom("Montserrat-VariableFont_wght", size: 20))
            .position(x: 150, y: 80)
            .foregroundColor(TextColor)
            .frame(width: 300, height: 100)
            .padding()
        
        //Campo Para Ingresar Password
        SecureField("Ingrese Contraseña", text: $pass)
        //.font(.custom("Montserrat-VariableFont_wght", size: 20))
            .position(x: 150, y: -20)
            .foregroundColor(TextColor)
            .frame(width: 300,  height: 100)
            .padding()
        
        Button(action: {
                        cambiarVista(1)
                    }) {
                        Text("Acceder")
                            .padding()
                            .background(ButtonColor)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    if !usuarioValido {
                        Text("Usuario o contraseña incorrectos")
                            .foregroundColor(.red)
                            .position(x: 170, y: -180)
                    }
        
        //Accion De Boton
        Button(action:
        {
            self.cambiarVista(2)
        },
       label:
        {
            Text("Registro")
            //.font(.custom("Montserrat-VariableFont_wght", size: 20))
            //.background(BackGroundColor)
                .padding()
                .background(ButtonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
        })
        .position(x: 200, y: -80)
    }
}

struct SegundaVista: View {
    var cambiarVista: () -> Void
    
    var body: some View {
        VStack {
            Text("Segunda Vista")
            Button(action: {
                self.cambiarVista()
            }) {
                Text("Ir a la Primera Vista")
            }
        }
    }
}

struct RegistroA: View {
    var cambiarVista: () -> Void
    enum Numeros {
        case int
    }
    
    let FieldColor: Color = Color(red: 0.8, green: 0.8, blue: 0.8)
    let TextColor: Color = Color(red: 0.5, green: 0.5, blue: 0.5)
    let ButtonColor: Color = Color(red: 0.8, green: 0.3, blue: 0.7)
    let BackGroundColor: Color = Color(red: 0xF3 / 255.0, green: 0x2E / 255.0, blue: 0x63 / 255.0)

    @State private var nombre: String = ""
    @State private var apellidoM: String = ""
    @State private var apellidoP: String = ""
    @State private var edad: String = ""
    @State private var direccion: String = ""
    @State private var codigopostal: String = ""
    
    @FocusState private var focusedField: Numeros?
    
    var body: some View {
        ZStack {
            Image("simbolo_identikx80-2")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(8.0)
                .offset(y: -300)
            
            Text("Bienvenido a DenticX")
                .font(.title.italic())
                .offset(y: -320)
                .foregroundColor(ButtonColor)
            
            Text("Ingrese sus datos")
                .font(.title.bold())
                .offset(y: -280)
                .foregroundColor(ButtonColor)
            
            VStack(spacing: 20) {
                TextField("Nombre", text: $nombre)
                    .position(x: 20, y: 180)
                    .foregroundColor(TextColor)
                    .frame(width: 200, height: 100)
                    .padding()
                
                TextField("Apellido Paterno", text: $apellidoP)
                    .position(x: 20, y: 80)
                    .foregroundColor(TextColor)
                    .frame(width: 200, height: 100)
                    .padding()
                
                TextField("Apellido Materno", text: $apellidoM)
                    .position(x: 20, y: -20)
                    .foregroundColor(TextColor)
                    .frame(width: 200, height: 100)
                    .padding()
                
                TextField("Ingrese su edad", text: $edad)
                    .focused($focusedField, equals: .int)
                    .keyboardType(.numberPad)
                    .position(x: 20, y: -120)
                    .foregroundColor(TextColor)
                    .frame(width: 200, height: 100)
                    .padding()
                
                TextField("Direccion", text: $direccion)
                    .position(x: 20, y: -220)
                    .foregroundColor(TextColor)
                    .frame(width: 200, height: 100)
                    .padding()
                
                TextField("Ingrese su codigo postal", text: $codigopostal)
                    .focused($focusedField, equals: .int)
                    .keyboardType(.numberPad)
                    .position(x: 20, y: -320)
                    .foregroundColor(TextColor)
                    .frame(width: 200, height: 100)
                    .padding()
                
                Button("Iniciar"){
                    
                        self.cambiarVista()
                }
                .foregroundColor(.blue)
                .frame(width: 200, height: 50)
                .background(Color.white)
                .cornerRadius(10.0)
                .offset(y: 400)
                
            }
            .navigationBarHidden(true)
            .ignoresSafeArea()
            .offset(y: 100)
            
            Text("Generos")
                .padding()
                .frame(width: 150, height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(14.0)
                .offset(x: -100, y:150)
                .contextMenu(
                    ContextMenu(menuItems: {

                        Button("Heterosexual"){
                        }
                        Button("Homosexual"){
                        }
                        Button("Bisexual"){
                        }
                        Button("Asexual"){
                        }
                        Button("Androginosexual"){
                        }
                        Button("Antrosexual"){
                        }
                        Button("Autosexual"){
                        }
                        Button("Bicurios@"){
                        }
                        Button("Demisexual"){
                        }
                        /*Button(action: {
                            print("xd")
                        }, label: {
                            Text("Button")
                        })*/
                }))
            
            Text("Discapacidades")
                .padding()
                .frame(width: 150, height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(14.0)
                .offset(x: 100, y:250)
                .contextMenu(
                    ContextMenu(menuItems: {
                        Button("Fisica"){
                        }
                        Button("Motora o funcional"){
                        }
                        Button("Organica"){
                        }
                        Button("Mental"){
                        }
                        Button("Intelectual"){
                        }
                        Button("Sensorial"){
                        }
                        Button("Pluridiscapacidad"){
                        }
                        /*Button(action: {
                            print("xd")
                        }, label: {
                            Text("Button")
                        })*/
                }))
            
        }
        .navigationBarHidden(true)
    }
}

struct Listatrabajos: View {
    var cambiarVista: () -> Void
    
    let FieldColor: Color = Color(red: 0.8, green: 0.8, blue: 0.8)
    let TextColor: Color = Color(red: 0.5, green: 0.5, blue: 0.5)
    let ButtonColor: Color = Color(red: 0.8, green: 0.3, blue: 0.7)
    let BackGroundColor: Color = Color(red: 0xF3 / 255.0, green: 0x2E / 255.0, blue: 0x63 / 255.0)
    
    var body: some View {
        var trabajos: [String: String] = [
            "Programador": "Se requiere un programador, no importa su condición física. Trabajo de lunes a viernes. Salario: $1700 semanales.",
            
            "Oficinista": "Se requiere un oficinista. Salario: $2100 semanales.",
            
            "Asistente de atención al cliente": "Se necesita un asistente de atención al cliente para trabajo en línea. Horario flexible. Salario negociable.",
            
            "Redactor de contenido": "Se busca un redactor de contenido para trabajar desde casa. Experiencia en escritura web requerida. Salario por proyecto.",
            
            "Diseñador gráfico": "Se solicita un diseñador gráfico para trabajo remoto. Habilidades en Adobe Creative Suite preferidas. Salario negociable.",
            
            "Asistente personal": "Se busca asistente personal para ayudar en tareas diarias. Horario y salario negociables según las necesidades del cliente.",
            
            "Asistente virtual": "Se necesita un asistente virtual para realizar diversas tareas administrativas. Trabajo desde casa. Salario por hora.",
            
            "Tutor en línea": "Se busca tutor en línea para diversas materias académicas. Flexibilidad horaria. Salario por hora.",
            
            "Técnico de soporte informático": "Se requiere técnico de soporte informático para asistir a usuarios con problemas técnicos. Salario competitivo.",
            
            "Terapeuta ocupacional": "Se busca terapeuta ocupacional para trabajar con personas con discapacidades físicas o mentales. Salario según experiencia."
        ]

        
        NavigationView {
            VStack {
                List {
                    ForEach(trabajos.keys.sorted(), id:\.self) { key in
                        NavigationLink("\(key)",
                                       destination: Text("\(key): \(trabajos[key]!)"))
                    }
                }
            
                .navigationTitle("Menu De Trabajos\n")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarHidden(false)
                
                //Accion De Boton
                Button(action: {
                    print("Añadir Trabajos")
                    List {
                        ForEach(trabajos.keys.sorted(), id:\.self) { key in
                            NavigationLink("\(key)",
                                           destination: Text("\(key): \(trabajos[key]!)"))
                        }
                    }
                }) {
                    Text("Añadir Trabajos")
                        .padding()
                        .background(ButtonColor)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding() // Espaciado alrededor del botón
                
                //Accion De Boton
                Button(action: {
                    print("Revisar Perfil")
                        self.cambiarVista()
                }) {
                    Text("Revisar Perfil")
                        .padding()
                        .background(ButtonColor)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding() // Espaciado alrededor del botón
            }
        }
    }
}

struct PerfilVista: View {
    var cambiarVista: () -> Void
    var nombreUsuario: String
    
    let FieldColor: Color = Color(red: 0.8, green: 0.8, blue: 0.8)
    let TextColor: Color = Color(red: 0.5, green: 0.5, blue: 0.5)
    let ButtonColor: Color = Color(red: 0.8, green: 0.3, blue: 0.7)
    let BackGroundColor: Color = Color(red: 0xF3 / 255.0, green: 0x2E / 255.0, blue: 0x63 / 255.0)

    var body: some View {
        NavigationView {
            VStack {
                Image("fondoperfil")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: 200)
                
                Image("fotodeperfil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 175, height: 175)
                    .clipShape(Circle())
                    .offset(y: -120)
                    .padding()
                
                Text(nombreUsuario)
                    .font(.title)
                    .foregroundColor(.gray)
                    .offset(y: -140)
                    .padding()
                
                Text("Mexico CDMX")
                    .font(.body)
                    .foregroundColor(.gray)
                    .offset(y: -160)
                    .padding()
                
                Text("Programadora en Swift")
                    .font(.body)
                    .foregroundColor(.gray)
                    .offset(y: -180)
                    .padding()
                
                Text("Telefono: 5511223344")
                    .font(.body)
                    .foregroundColor(.gray)
                    .offset(y: -200)
                    .padding()
                
                Spacer()
                    .frame(height: 50) // Ajusta la altura del Spacer para mover el botón hacia arriba
                
                Button(action: {
                    // Acción cuando se presiona el botón "Enviar propuesta de trabajo"
                }) {
                    Text("Recomendaciones")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(ButtonColor)
                        .cornerRadius(10)
                        .offset(y: -75)
                }
                .padding(.bottom, 20)
            }
            .navigationBarHidden(false) // Oculta la barra de navegación
        }
        
        VStack{
            
        }
    }
}

struct Step {
    let title: String
    let description: String
    let imageName: String
}

struct ManualView: View {
    let steps: [Step] = [
        Step(title: "Personas lisiadas", description: "Mejoras en el Trabajo: \nAdaptar el mobiliario: sillas y mesas. \nEliminar barreras arquitectónicas en caso de necesitarlo. \nAjustar la iluminación para poder desempeñar su trabajo correctamente. \nFacilitar el acceso del trabajador a todas las áreas de la organización. \nInstalación de rampas para minusválidos con sonidos de advertencia al igual que para los ascensores.", imageName: "personaensilladeruedas"),
        Step(title: "Personas en Muletas", description: "Automatización de procesos. \nAplicaciones móviles para empleados. \nPlataforma de gestión de casos centralizada", imageName: "muletas1"),
        Step(title: "Personas con discapacidad visual", description: "Proporcionar una iluminación adecuada.\nEmpresas o compañías deben invertir en tecnologías de asistencia. \nFormas de comunicación accesibles, como describir visualmente los elementos importantes durante las reuniones. \nProporciona documentación y materiales de trabajo en formatos accesibles.", imageName: "step3")
    ]
    
    @State private var isExpanded = false
    @State private var imageSize: CGFloat = 100 // Tamaño inicial de la imagen
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(steps.indices, id: \.self) { index in
                    VStack(alignment: .leading, spacing: 10) {
                        Text(steps[index].title)
                            .font(.title)
                            .onTapGesture {
                                withAnimation {
                                    self.isExpanded.toggle()
                                }
                            }
                            .foregroundColor(.pink) // Cambia el color del título a rosa
                            .font(.custom("Montserrat", size: 30)) // Establece la fuente Montserrat con tamaño 30
                        if isExpanded {
                            Text(steps[index].description)
                                .font(.body) // Utiliza el tamaño de fuente predeterminado de SwiftUI
                                .frame(maxWidth: .infinity) // Limita el texto al ancho máximo disponible
                            Image(steps[index].imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: imageSize, height: imageSize) // Tamaño de la imagen ajustable
                                .onTapGesture {
                                    withAnimation {
                                        self.imageSize += 20 // Incrementa el tamaño de la imagen al tocarla
                                    }
                                }
                        }
                    }
                }
                Spacer() // Espaciador para ocupar más espacio en la dirección vertical
            }
            .padding()
        }
        .navigationBarTitle("Manual")
    }
}

#Preview {
    ContentView()
}
