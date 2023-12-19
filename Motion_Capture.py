import cv2
import sys
from cvzone.PoseModule import PoseDetector

address = input("Enter Address : ")
ADDRESS = 'tcp://'+address+':2000'
cap = cv2.VideoCapture(ADDRESS)

detector = PoseDetector()

while True :
    _, frame = cap.read()
    frame = cv2.rotate(frame, 0)
    frame = detector.findPose(frame)
    lmList, bboxInfo = detector.findPosition(frame)
    cv2.imshow('frame', frame)
    cv2.waitKey(1)
