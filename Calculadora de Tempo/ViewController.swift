//
//  ViewController.swift
//  Calculadora de Tempo
//
//  Created by matheusvb on 24/03/22.
//

import UIKit

enum ChordType {
    case type0
    case type1
    case type2
}

class Chord {
    var name: String
    var type: ChordType
    
    init(name: String, type: ChordType){
        self.name = name
        self.type = type
    }
}

class Song {
    var chords: [Chord]
    var type0Num: Int
    var type1Num: Int
    var type2Num: Int
    
    init(chordNum: Int, type0num: Int, type1Num: Int, type2Num: Int){
        self.chords = []
        self.type0Num = 0
        self.type1Num = 0
        self.type2Num = 0
    }
    
    func addChord(name: String, type: ChordType){
        let temp = Chord(name: name, type: type)
        chords.append(temp)
        
        switch type{
            case .type0:
                self.type0Num = type0Num + 1
            case .type1:
                self.type1Num = type1Num + 1
            case .type2:
                self.type2Num = type2Num + 1
        }
    }
    
    func getTime() -> Int {
        return (5 * type0Num) + (10 * type1Num) + (15 * type2Num)
    }
}

class ViewController: UIViewController, UIPickerViewDataSource {
    
    @IBOutlet var chordPicker: UIPickerView!
    @IBAction func botaoCalc() {
    }
    @IBAction func addChordButt() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*func addChord(){
        //adicionar acorde
        chordPicker.isHidden = false
        
    }
    
    func getQtd(){
        //retornar quantidade de acordes
    }

    func getTypes(){
        //retornar quantidade de tipos de acordes
    }
    
    func getTime(){
        //calcular o tempo total
    }*/

}

extension ViewController{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
}
