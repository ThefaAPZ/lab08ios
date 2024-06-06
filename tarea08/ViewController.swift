//
//  ViewController.swift
//  tarea08
//
//  Created by Mireya Esthefany Apaza Cuicapuza  on 6/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBAction func agregarCurso(_ sender: Any) {
        performSegue(withIdentifier: "agregarSegue", sender: nil)
    }
    
    var cursos:[Curso] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        cursos = crearCursos()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cursos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let curso = cursos[indexPath.row]
        cell.textLabel?.text = curso.nombre
        return cell
    }
    
    func crearCursos() -> [Curso] {
        let curso1 = Curso()
        curso1.nombre = "Matemáticas"
        
        let curso2 = Curso()
        curso2.nombre = "Comunicación"
        
        let curso3 = Curso()
        curso3.nombre = "Arte"
        
        return [curso1,curso2,curso3]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let siguienteVC = segue.destination as! ViewControllerCrearCurso
        siguienteVC.anteriorVC = self
    }

}

