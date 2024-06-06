//
//  ViewControllerCrearCurso.swift
//  tarea08
//
//  Created by Mireya Esthefany Apaza Cuicapuza  on 6/06/24.
//

import UIKit

class ViewControllerCrearCurso: UIViewController {
    
    var anteriorVC = ViewController()

    @IBOutlet weak var txtNombreCurso: UITextField!
    @IBOutlet weak var txtPromPracticas: UITextField!
    @IBOutlet weak var txtPromLaboratorios: UITextField!
    @IBOutlet weak var txtExamFinal: UITextField!
    
    @IBAction func agregar(_ sender: Any) {
        let curso = Curso()
        curso.nombre = txtNombreCurso.text!
        curso.promPracticas = txtPromPracticas.text!
        curso.promLabotatorios = txtPromLaboratorios.text!
        curso.examFinal = txtExamFinal.text!
        anteriorVC.cursos.append(curso)
        anteriorVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
