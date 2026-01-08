.class public abstract Lcom/samsung/android/biometrics/app/setting/FocusableWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

.field public final mRunnableHandleWindowFocus:Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/FocusableWindow;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mRunnableHandleWindowFocus:Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addView()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/FocusableWindow;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 24
    .line 25
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 29
    .line 30
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

    .line 36
    .line 37
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 38
    .line 39
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "registerBroadcastReceiverForSystemDialog: "

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->addView()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mRunnableHandleWindowFocus:Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x1f4

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public abstract onFocusLost()V
.end method

.method public abstract onSystemDialogClosed()V
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onWindowFocusChanged: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mRunnableHandleWindowFocus:Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mHasPendingRemove:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "onWindowFocusChanged: ignore, Pending Remove"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mRunnableHandleWindowFocus:Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    const-wide/16 v1, 0x3e8

    .line 49
    .line 50
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public removeView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mRunnableHandleWindowFocus:Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "unregisterBroadcastReceiverForSystemDialog: "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
