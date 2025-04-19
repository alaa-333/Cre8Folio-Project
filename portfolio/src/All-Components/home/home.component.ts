import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

export interface homeObg {
  jobTitle: string,
  name: string,
  about: string,
  imgUrl: string,
  hyperLinks: string[]
}

@Component({
  selector: 'app-home',
  imports: [FormsModule],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

  homePage: homeObg =
  {
    jobTitle : "Frontend Developer",
    name : " ",
    about: "I passionate to creating visually appealing designs and optimizing SEO for your bussines with modern tools... ",

    imgUrl: "/pro.svg",
    hyperLinks: ["links"]
  }

}
