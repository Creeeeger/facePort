.class public final Lcom/samsung/android/biometrics/app/setting/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sInstance:Lcom/samsung/android/biometrics/app/setting/BackgroundThread;


# direct methods
.method public static get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 13
    .line 14
    const-string v2, "BioSysUi.bg"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/os/Handler;

    .line 26
    .line 27
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    goto :goto_2

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v1

    .line 45
    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sInstance:Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 46
    .line 47
    return-object v0
.end method
