import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Redirection1Component } from './redirection1.component';

describe('Redirection1Component', () => {
  let component: Redirection1Component;
  let fixture: ComponentFixture<Redirection1Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Redirection1Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Redirection1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
