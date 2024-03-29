import { Component, EventEmitter, Input, Output } from '@angular/core';
import { AuthFormComponent } from '../auth-form/auth-form.component';
import { CommonModule } from '@angular/common';
import { CardComponent } from '../../../components/card/card.component';

@Component({
  selector: 'app-auth-view',
  standalone: true,
  imports: [CommonModule, AuthFormComponent, CardComponent],
  templateUrl: './auth-view.component.html',
  styleUrl: './auth-view.component.scss'
})
export class AuthViewComponent {
  @Input() currentUser: any;

  @Input() formError: boolean = false;

  public titleForm = 'Log In';

  public instructionAction = '';

  @Output() onSignin = new EventEmitter<any>();
}
