.class public final Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;
.super Landroid/app/TaskStackListener;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mIsWatching:Z

.field public mListener:Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;


# virtual methods
.method public final observe(Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;->mListener:Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move p1, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;->mIsWatching:Z

    .line 11
    .line 12
    if-ne v2, p1, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;->mIsWatching:Z

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;->mIsWatching:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "observe: "

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "BSS_TaskStackObserver"

    .line 58
    .line 59
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :goto_2
    return-void
.end method

.method public final onTaskFocusChanged(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;->mListener:Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 8
    .line 9
    const/16 p2, 0x9

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 15
    .line 16
    const-wide/16 v0, 0x64

    .line 17
    .line 18
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onTaskStackChanged()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;->mListener:Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 15
    .line 16
    const-wide/16 v2, 0x64

    .line 17
    .line 18
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
