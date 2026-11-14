square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

triangle_area(Base, VerticalHeight, Area) :-
    Area is 0.5 * Base * VerticalHeight.

triangle_perimeter(A, B, C, Perimeter) :-
    Perimeter is A + B + C.

triangle(Base, VerticalHeight, SideA, SideC, Area, Perimeter) :-
    Area is 0.5 * Base * VerticalHeight,
    Perimeter is SideA + Base + SideC.
