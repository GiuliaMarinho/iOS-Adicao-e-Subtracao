//
//  ViewController.swift
//  Adicao-e-subtracao-iOS
//
//  Created by Giulia Marinho on 20/04/24.
//

import UIKit

//  Criar dois buttom e uma label = os button vao ter 150 de largura e 50 de altura 1 dos button vai ter o titulo ADICAO e o outro SUBRTRACAO a uilabel texto inicial numero 0 os tres elementos centralizaados no eixo x, o button de adicao vai estar 20 a cima do topo colocar safe area a label vai estar 20 a baixo do button de adicao colocar safearea e o subtracao 20 da label colocar safe area a view pai vai ter a cor laranja o button adcao cor verde e o button de subtracao cor vermelha obs: criar uma var com valor 0.

class ViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var labelNumero: UILabel!
    @IBOutlet weak var subButton: UIButton!
    var numero0 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.backgroundColor = .green
        
        labelNumero.translatesAutoresizingMaskIntoConstraints = false
        
        subButton.translatesAutoresizingMaskIntoConstraints = false
        subButton.backgroundColor = .red
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            addButton.widthAnchor.constraint(equalToConstant: 150),
            addButton.heightAnchor.constraint(equalToConstant: 50),
            addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            labelNumero.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelNumero.topAnchor.constraint(equalTo: addButton.safeAreaLayoutGuide.bottomAnchor, constant: 20),
            
            subButton.widthAnchor.constraint(equalToConstant: 150),
            subButton.heightAnchor.constraint(equalToConstant: 50),
            subButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subButton.topAnchor.constraint(equalTo: labelNumero.safeAreaLayoutGuide.bottomAnchor, constant: 20),
        ])
    }
    
    @IBAction func addButtonTarget(_ sender: Any) {
        numero0 += 1
        labelNumero.text = "\(numero0)"
    }
    
    
    @IBAction func subButtonTarget(_ sender: Any) {
        numero0 -= 1
        labelNumero.text = "\(numero0)"
    }
}
