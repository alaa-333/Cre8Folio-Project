import { Routes } from '@angular/router';
import { HomeComponent } from '../All-Components/home/home.component';
import { CVComponent } from '../All-Components/cv/cv.component';
import { ProjectComponent } from '../All-Components/project/project.component';
import { ContactComponent } from '../All-Components/contact/contact.component';

export const routes: Routes = [
  {path:'',redirectTo:'Home',pathMatch:'full'},
  {path:"Home",component:HomeComponent},
  {path:"CV",component:CVComponent},
  {path:"Project",component:ProjectComponent},
  {path:"contact",component:ContactComponent}
];
