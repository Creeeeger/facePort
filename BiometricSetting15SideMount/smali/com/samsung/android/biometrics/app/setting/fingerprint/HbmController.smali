.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;


# instance fields
.field public final mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

.field final mH:Landroid/os/Handler;

.field public mHasHbmRequest:Z

.field public mHbmOperatingTime:J

.field public final mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

.field mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mH:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 18
    .line 19
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState$1;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final onHbmChanged(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmOperatingTime:J

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "[[[[[ HBM operating time = "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-wide v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmOperatingTime:J

    .line 26
    .line 27
    sub-long/2addr v1, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " ms ]]]]]"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "BSS_HbmController"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmOperatingTime:J

    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 50
    .line 51
    instance-of v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;

    .line 56
    .line 57
    invoke-interface {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;->onHbmChanged(Z)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public final onLimitDisplayStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mH:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCurrentState(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setCurrentState : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->getTag()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " -> "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->getTag()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "BSS_HbmController"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHasHbmRequest:Z

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState$1;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;

    .line 51
    .line 52
    if-eq p1, v0, :cond_0

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->turnOffHbm()V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->stop()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState$1;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->setCurrentState(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOffHBM()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHbmListeners:Ljava/util/List;

    .line 25
    .line 26
    check-cast v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v2, v0, p0, v3}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    sget-boolean p0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DISPLAY_SEAMLESS_MODE:Z

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->releaseRefreshRateForSeamlessMode()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
