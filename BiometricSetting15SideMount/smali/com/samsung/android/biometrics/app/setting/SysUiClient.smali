.class public abstract Lcom/samsung/android/biometrics/app/setting/SysUiClient;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public mAlreadyCancelled:Z

.field public mCallback:Lcom/samsung/android/biometrics/app/setting/ClientCallback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageName:Ljava/lang/String;

.field public final mRawExtraInfo:Landroid/os/Bundle;

.field public final mSessionId:I

.field public final mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

.field public final mWindows:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$1;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mCallback:Lcom/samsung/android/biometrics/app/setting/ClientCallback;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    if-nez p5, :cond_0

    .line 21
    .line 22
    new-instance p5, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mRawExtraInfo:Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-virtual {p0, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 36
    .line 37
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPackageName:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public handleClientError()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public handleOnTaskStackListener(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleTspBlock(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDisplayStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract prepareWindows()V
.end method

.method public final sendDismissedEvent(I[B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mAlreadyCancelled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mAlreadyCancelled:Z

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 14
    .line 15
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onSysUiDismissed(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string p1, "BSS_SysUiClient"

    .line 21
    .line 22
    const-string p2, "sendDismissedEvent: error"

    .line 23
    .line 24
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendErrorEventToBioService(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 6
    .line 7
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onError(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "sendErrorEventToBioService: "

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p2, "BSS_SysUiClient"

    .line 20
    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public final sendEvent(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 6
    .line 7
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onEvent(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "sendEvent: "

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "BSS_SysUiClient"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mCallback:Lcom/samsung/android/biometrics/app/setting/ClientCallback;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->prepareWindows()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->addView()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mCallback:Lcom/samsung/android/biometrics/app/setting/ClientCallback;

    .line 29
    .line 30
    invoke-interface {p1, p0}, Lcom/samsung/android/biometrics/app/setting/ClientCallback;->onClientStarted(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mCallback:Lcom/samsung/android/biometrics/app/setting/ClientCallback;

    .line 29
    .line 30
    invoke-interface {v0, p0}, Lcom/samsung/android/biometrics/app/setting/ClientCallback;->onClientFinished(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public stopImmediate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
