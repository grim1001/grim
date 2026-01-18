
;StrawX by grim

;{"Name":"Strawberry","Pattern":"StrawX","DriftCheck":1,"PatternInvertFB":0,"PatternInvertLR":0,"PatternReps":9,"PatternShift":1,"PatternSize":"M","ReturnType":"Walk","RotateDirection":"None","RotateTimes":1,"SprinklerDist":10,"SprinklerLoc":"Upper Right","UntilMins":10,"UntilPack":95}
g_Walk(t,d,s:=0) => ((s!=0) ? (nm_Walk(t,d,s),Sleep(35),0):(nm_Walk(t,d),Sleep(35),0))
;^^^^^^ Credits to Dully176 for making this function this is slighty modified to have a different name, and longer sleep time.
g_cameraRotation(Dir, count) => (nm_CameraRotation(Dir, count), Sleep(45), 0)

g_cameraRotation("Up", 4)
cornerStart() {
    g_Walk(15, FwdKey)
    g_Walk(19, RightKey)
    g_cameraRotation("up", 4)
}

cornerStart()

xPass(){
    g_Walk(6 * size, BackKey, LeftKey)
    g_Walk(3 * size, FwdKey, RightKey)
    g_Walk(3 * size, FwdKey, LeftKey)
    g_Walk(3 * size, BackKey, RightKey)
    g_Walk(3 * size, BackKey, LeftKey)
    g_Walk(3 * size, FwdKey, RightKey)
    g_Walk(4 * size, FwdKey, LeftKey)
    g_Walk(3 * size, BackKey, RightKey)
    g_Walk(3 * size, FwdKey, RightKey)
    g_Walk(3 * size, BackKey, LeftKey)
    g_Walk(3 * size, BackKey, RightKey)
    g_Walk(3 * size, FwdKey, LeftKey)
    g_Walk(3 * size, FwdKey, RightKey)
    g_Walk(3 * size, BackKey, LeftKey)
    g_Walk(3 * size, BackKey, RightKey)
    g_walk(4 * size, RightKey)
    g_Walk(5 * size, FwdKey)
}

secondPass(){
    loop reps {
    g_Walk(4 * size, BackKey)
    g_Walk(1.5 * size, LeftKey)
    g_Walk(4 * size, FwdKey)
    g_Walk(1.5 * size, LeftKey)
    g_Walk(4 * size, BackKey)
    g_Walk(1.5 * size, LeftKey)
    g_Walk(4 * size, FwdKey)
    g_Walk(6 * size, RightKey)
    }
}

loop reps {
    xPass()
    secondPass()
}

g_cameraRotation("down", 4)



