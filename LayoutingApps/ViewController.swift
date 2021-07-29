//
//  ViewController.swift
//  LayoutingApps
//
//  Created by paslang on 26/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editProfile(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(
            title: "Apakah Anda berniat untuk mengubah profil", message: "Anda dapat mempebarui profil anda sekarang juga", preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Ya", style: .default){ _ in
            print("Mengganti profile.")
        })
        
        alert.addAction(UIAlertAction(title: "Tidak", style: .cancel){ _ in
            print("Membatalkan ubah profile")
        })
        
        self.present(alert, animated: true)
    }
    
}

