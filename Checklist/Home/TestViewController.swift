//
//  TestViewController.swift
//  Checklist
//
//  Created by Berrak Taşkınsu on 7.04.2023.
//

import UIKit

import CoreEmbedded


final class TestViewController: ListViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        listView.reloadData()
        
    }
    
    override func numberOfSections(in listView: ListView) -> Int {
        
        return 2
        
    }
    
    override func listView(_ listView: ListView, viewForRowAt indexPath: IndexPath) -> View {
        
        let view = View()
            .padding(8)
            .radius(10)
            .color(.lightGray)
            .border(width: 2, color: .red)
            .shadow(color: .black, opacity: 1, offset: CGSize(width: 2, height: 2), radius: 5)
            .padding(8)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 80).isActive = true
        return view
        
    }
    
    override func listView(_ listView: ListView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
        
    }
    
}
