//
//  ViewController.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 02.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmented: UISegmentedControl!
    
    private let urlSessionApi = Network()
    private var posts = [Post]()
    private let segueId = "detailPost"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        showData()
    }
    
    @IBAction func segmentedAction(_ sender: Any) {
        switch segmented.selectedSegmentIndex {
        case 0:
            showData()
        case 1:
            sortedByLikes()
            reloadCollectionView()
        case 2:
            sortedByDate()
            reloadCollectionView()
        default:
            break
        }
    }
    
}

extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate  {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PostCell
        let posts = posts[indexPath.row]
        cell.setup(post: posts)
        
        return cell
        
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let cell = sender as? UICollectionViewCell,
        let indexPath = self.collectionView.indexPath(for: cell) {
        let vc = segue.destination as! DetailViewController
            vc.post = posts[indexPath.row]
                 
        }
    }
    
    // MARK: сортировка по лайкам
    private func sortedByLikes() {posts.sort{$0.likes_count > $1.likes_count}}
    
    // MARK: сортировка по дате
    private func sortedByDate() {posts.sort{$0.timeshamp > $1.timeshamp}}
    
    // MARK: обновление collectionView
    private func reloadCollectionView() {collectionView.reloadSections(IndexSet(integer: 0))}
    
    private func showData() {
        urlSessionApi.fetchPost {data in
            self.posts = data
            DispatchQueue.main.async {
            self.collectionView.reloadData()}
    }
        
        }
    
    
    
    }
    
