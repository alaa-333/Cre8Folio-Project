
import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { HomeComponent } from "../All-Components/home/home.component";
import { NavbarComponent } from "../All-Components/navbar/navbar.component";
import { FooterComponent } from "../All-Components/footer/footer.component";

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, FormsModule, HomeComponent, NavbarComponent, FooterComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {


}
