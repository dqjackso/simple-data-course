(require 2htdp/image)
(require test-engine/racket-tests)

; Design a function that consumes two images and produces true if the first is larger than the second

; produce true if the first img is larger than the second img

(check-expect (larger? (rectangle 3 3 "solid" "red") (rectangle 2 2 "solid" "blue")) true)
(check-expect (larger? (rectangle 3 3 "solid" "red") (rectangle 4 4 "solid" "blue")) false)
(check-expect (larger? (rectangle 3 3 "solid" "red") (rectangle 3 4 "solid" "blue")) false)
(check-expect (larger? (rectangle 3 3 "solid" "red") (rectangle 3 2 "solid" "blue")) false)

 (define (larger? img1 img2)
     (and (> (image-width img1) (image-width img2))
          (> (image-height img1) (image-height img2))))