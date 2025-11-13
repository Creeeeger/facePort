.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;
.super Lcom/samsung/android/biometrics/app/setting/FocusableWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mIsRegistered:Z

.field public final mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mIsRegistered:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v2, 0x7f0d001c

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 26
    .line 27
    const v2, 0x7f0a00f3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/FrameLayout;

    .line 35
    .line 36
    iget v2, p2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 37
    .line 38
    const/4 v4, 0x6

    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    .line 41
    const v2, 0x7f0d0040

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 59
    .line 60
    iget-object p2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mOnKeyListener:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string p1, "Unknown credential type: "

    .line 80
    .line 81
    invoke-static {v2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method


# virtual methods
.method public final addView()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->addView()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mIsRegistered:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow$1;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow$1;

    .line 19
    .line 20
    :cond_1
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow$1;

    .line 33
    .line 34
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 35
    .line 36
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "registerBroadcastReceiver: "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "BSS_SysUiWindow.U"

    .line 66
    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const-string v0, "statusbar"

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Landroid/app/StatusBarManager;

    .line 79
    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    const/high16 v0, 0x1200000

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const v4, 0x1002002

    .line 4
    .line 5
    .line 6
    const/4 v5, -0x3

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, -0x2

    .line 9
    const/16 v3, 0x7e1

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x10

    .line 18
    .line 19
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 20
    .line 21
    const v0, 0x3f4ccccd    # 0.8f

    .line 22
    .line 23
    .line 24
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 25
    .line 26
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 27
    .line 28
    or-int/lit8 v0, v0, 0x10

    .line 29
    .line 30
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 31
    .line 32
    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_SysUiWindow.U"

    .line 2
    .line 3
    return-object p0
.end method

.method public final onFocusLost()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-interface {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSystemDialogClosed()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-interface {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->removeView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow$1;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "unregisterBroadcastReceiver: "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "BSS_SysUiWindow.U"

    .line 35
    .line 36
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const-string v1, "statusbar"

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroid/app/StatusBarManager;

    .line 48
    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
