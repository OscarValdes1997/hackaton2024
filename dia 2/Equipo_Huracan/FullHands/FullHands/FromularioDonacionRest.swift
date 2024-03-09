//
//  FromularioDonacionRest.swift
//  FullHands
//
//  Created by CEDAM31 on 08/03/24.
//

import UIKit
import SwiftUI
/*
class DonationViewController: UIViewController {
    
    private let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .date
        picker.preferredDatePickerStyle = .wheels
        return picker
    }()
    
    private let imagePicker: UIImagePickerController = {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        return picker
    }()
    
    private let productNameField: UITextField = {
        let field = UITextField()
        field.placeholder = "Inserte el nombre del producto"
        field.borderStyle = .roundedRect
        return field
    }()
    
    private let productTypeField: UITextField = {
        let field = UITextField()
        field.placeholder = "Seleccione una opción"
        field.borderStyle = .roundedRect
        return field
    }()
    
    private let quantityField: UITextField = {
        let field = UITextField()
        field.placeholder = "Seleccione una opción"
        field.borderStyle = .roundedRect
        return field
    }()
    
    private let unitOfMeasureField: UITextField = {
        let field = UITextField()
        field.placeholder = "Descripción general"
        field.borderStyle = .roundedRect
        return field
    }()
    
    private let commentField: UITextField = {
        let field = UITextField()
        field.placeholder = "Dejar un comentario (opcional)"
        field.borderStyle = .roundedRect
        return field
    }()
    
    private let donateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("DONAR", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.tintColor = .white
        return button
    }()
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        stackView.addArrangedSubview(productNameField)
        stackView.addArrangedSubview(productTypeField)
        stackView.addArrangedSubview(quantityField)
        stackView.addArrangedSubview(unitOfMeasureField)
        stackView.addArrangedSubview(commentField)
        stackView.addArrangedSubview(donateButton)
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        productNameField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productNameField.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        productTypeField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productTypeField.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        quantityField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            quantityField.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        unitOfMeasureField.translatesAutoresizingMaskIntoConstraints = false}}


struct FDRest: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        DonationViewController()
    }}
#Preview {
    FDRest()
}
*/
struct Donation {
    var name: String
    var productType: String
    var quantity: Int
    var unitOfMeasure: String
    var description: String
    var image: UIImage?
    var comment: String
}

struct DonationFormView: View {
    
    @State private var name = ""
    @State private var productType = ""
    @State private var quantity = 1
    @State private var unitOfMeasure = "kg"
    @State private var description = ""
    @State private var comment = ""
    @State private var showImagePicker = false
    @State private var image: UIImage?

    var body: some View {
        Form {
            Section {
                TextField("Nombre del producto", text: $name)
                Picker("Tipo de producto", selection: $productType) {
                    Text("Seleccione una opción").tag("")
                    Text("Alimentos").tag("Alimentos")
                    Text("Bebidas").tag("Bebidas")
                    // Add more options as needed
                }
                .pickerStyle(SegmentedPickerStyle())
                Stepper("Cantidad (\(unitOfMeasure))", value: $quantity, in: 1...100)
                Picker("Unidad de medida", selection: $unitOfMeasure) {
                    Text("kg").tag("kg")
                    Text("lbs").tag("lbs")
                    // Add more units as needed
                }
            }

            Section {
                TextEditor(text: $description)
                    .frame(height: 100)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5)
                if image != nil {
                    Image(uiImage: image!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                        .clipped()
                }
                Button(action: {
                    showImagePicker = true
                }) {
                    Text("Subir imagen")
                }
            }

            Section {
                TextEditor(text: $comment)
                    .frame(height: 50)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5)
                Button(action: {
                    // Handle donation submission
                    //dismiss()
                }) {
                    Text("DONAR \(quantity) \(unitOfMeasure)")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5)
                }
            }
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: $image)
        }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image: UIImage?
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.image = image
            }
        }
    }
}
struct DonadorView: View {
    @EnvironmentObject var pageManager: PageManager
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination:{
                    DonationFormView()
                },label:{
                    Text("Historial")

                        .foregroundColor(.white)  // Set the modifiers to your liking.

                        .padding(.vertical)

                        .padding(.horizontal, 50)

                        .background(.blue)

                        .cornerRadius(10)
                })
                        NavigationLink(destination: {

                            DonationFormView()

                        }, label: {

                            Text("Crear Donacion")

                                .foregroundColor(.white)  // Set the modifiers to your liking.

                                .padding(.vertical)

                                .padding(.horizontal, 50)

                                .background(.blue)

                                .cornerRadius(10)

                        })
            }
            

                    .navigationTitle("Pizza Hot")  // You can set the title that displayed at the top of the view.

                }
        Button("Log Out"){
            pageManager.page = .logout
                    }
                    .padding()
    }
}
#Preview {
    DonadorView()
}
