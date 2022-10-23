import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Redirection2Component } from './redirection2.component';

describe('Redirection2Component', () => {
  let component: Redirection2Component;
  let fixture: ComponentFixture<Redirection2Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Redirection2Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Redirection2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
