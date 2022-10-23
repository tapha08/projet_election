import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Res2019Component } from './res2019.component';

describe('Res2019Component', () => {
  let component: Res2019Component;
  let fixture: ComponentFixture<Res2019Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Res2019Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Res2019Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
