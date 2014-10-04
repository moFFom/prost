from graphics import*
import time
def main():
    win=GraphWin("Gaben",500,500)
    rec=Rectangle(Point(200,90),Point(200,100))
    rec.setFill("blue")
    rec.draw(win)
    h=Circle(Point(40,100),25)
    h.setFill("Green")
    h.draw(win)
    e1=Circle(Point(30,105),5)
    e1.setFill("violet")
    e1.draw(win)
    e2=Circle(Point(45,105),5)
    e2.setFill("violet")
    e2.draw(win)
    m=Oval(Point(30,90),Point(50,85))
    m.setFill("Red")
    m.draw(win)
    f=[h,e1,e2,m]
    c2=Circle(Point(150,125),25)
    c2.setFill("grey")
    c2.draw(win)
    moveallonline(f,5,0,46,0.05)
    moveallonline(f,-5,0,46,0.05)
def moveallonline(shapelist,dx,dy,reps,delay):
    for i in range(reps):
        moveall(shapelist,dx,dy)
        time.sleep(delay)
def moveall(shapelist,dx,dy):
    for i in shapelist:
        i.move(dx,dy)
main()
