//
//  ExperienceTableViewController.swift
//  Labb2
//
//  Created by Khalid Elkilany on 2019-12-01.
//  Copyright © 2019 Khalid Elkilany. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController {

   var experiences: [Experience] = []
        var educations: [Experience] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.tableFooterView = UIView()
            experiences = [
                Experience(imageName: "UppsalaKommun", titel: "samhällskommunikatör", message: "Jag jobbade på Uppsala Kommun som samhällskommunikatör"),
            ]
            educations = [
                Experience(imageName: "JUlogo", titel: "Jönköpings University", message: "Jag pluggade på Jönköpings University"),
                Experience(imageName: "linne", titel: "linné komvux uppsala", message: "Jag pluggade på linné komvux uppsala"),
               
            ]
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? DetailViewController {
                if let indexPath = sender as? IndexPath {
                    if(indexPath.section == 0)  {
                        let exp = experiences[indexPath.row]
                        destination.experience = exp
                    }   else    {
                        let edu = educations[indexPath.row]
                        destination.experience = edu
                    }
                }
            }
        }
        // MARK: - Table view data source

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if(section == 0)    {
                return experiences.count
            }   else    {
                return educations.count
            }
        }
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 2
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceTableViewCell", for: indexPath) as? ExperienceTableViewCell  {
               
                switch(indexPath.section)   {
                    case 0:
                        let Experience = experiences[indexPath.row]
                        cell.XPImage.image = UIImage(named: Experience.imageName)
                        cell.XPMessage.text = Experience.message
                        cell.XPTitel.text = Experience.titel
                        return cell
                    case 1:
                        let Education = educations[indexPath.row]
                        cell.XPImage.image = UIImage(named: Education.imageName)
                        cell.XPMessage.text = Education.message
                        cell.XPTitel.text = Education.titel
                        return cell
                    default:
                        return cell
                }
            }   else    {
                return UITableViewCell()
            }
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            if(section == 0)    {
                return "Work"
            }   else    {
                return "Education"
            }
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)   {
            performSegue(withIdentifier: "segue", sender: indexPath)
        }
        


    }
