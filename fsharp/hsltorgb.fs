(*
MIT License

Copyright (c) 2016 Kristoffer Ryhl-Johansen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*)

let hsltorgb (h,s,l) =
  let ftic f = 255. * f |> int |> min 255 |> max 0
  let C = (1.-abs (2.*l-1.)) * s
  let H = (h+3.14159265359) * 0.95492965855
  let X = C * (1. - abs ((H - 2.*(floor (H/2.))) - 1.))
  let (r1,g1,b1) = match (floor H |> int) with
                   | 0 -> (C,  X,  0.)
                   | 1 -> (X,  C,  0.)
                   | 2 -> (0., C,  X)
                   | 3 -> (0., X,  C)
                   | 4 -> (X,  0., C)
                   | 5 -> (C,  0., X)
                   | _ -> (0., 0., 0.)
  let m = l - C/2.
  (r1 + m |> ftic, g1 + m |> ftic, b1 + m |> ftic)

