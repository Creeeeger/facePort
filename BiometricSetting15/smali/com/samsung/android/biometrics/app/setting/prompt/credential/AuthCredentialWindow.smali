.class public Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;
.super Lcom/samsung/android/biometrics/app/setting/FocusableWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

.field public final mFrameLayout:Landroid/widget/FrameLayout;

.field public final mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const p2, 0x7f0d001c

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 19
    .line 20
    const p2, 0x7f0a00f3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->setCredentialView()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final addView()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->addView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow$1;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow$1;

    .line 14
    .line 15
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow$1;

    .line 28
    .line 29
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "registerBroadcastReceiver: "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "BSS_SysUiWindow.C"

    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->getStatusBarManager()Landroid/app/StatusBarManager;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    const/high16 v0, 0x1200000

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public getCredentialView()Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTpaMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const p0, 0x1002002

    .line 10
    .line 11
    .line 12
    :goto_0
    move v4, p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const p0, 0x1000002

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :goto_1
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    const/16 v3, 0x7e1

    .line 21
    .line 22
    const/4 v5, -0x3

    .line 23
    const/4 v1, -0x1

    .line 24
    const/4 v2, -0x2

    .line 25
    move-object v0, p0

    .line 26
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 30
    .line 31
    or-int/lit8 v0, v0, 0x10

    .line 32
    .line 33
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 34
    .line 35
    const v0, 0x3f19999a    # 0.6f

    .line 36
    .line 37
    .line 38
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 39
    .line 40
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 41
    .line 42
    or-int/lit8 v0, v0, 0x10

    .line 43
    .line 44
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 45
    .line 46
    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_SysUiWindow.C"

    .line 2
    .line 3
    return-object p0
.end method

.method public getPasswordLayoutId()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->isApplyingTabletGUI()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const p0, 0x7f0d001f

    .line 8
    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const p0, 0x7f0d001d

    .line 12
    .line 13
    .line 14
    return p0
.end method

.method public getPatternLayoutId()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->isApplyingTabletGUI()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const p0, 0x7f0d0023

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const p0, 0x7f0d0022

    .line 20
    .line 21
    .line 22
    :goto_0
    return p0

    .line 23
    :cond_1
    const p0, 0x7f0d0020

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "statusbar"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/StatusBarManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public isApplyingTabletGUI()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 12
    .line 13
    const/16 v0, 0x258

    .line 14
    .line 15
    if-lt p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->isTwoPaneLandScape()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->setCredentialView()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onFocusLost()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

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
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->removeView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "unregisterBroadcastReceiver: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "BSS_SysUiWindow.C"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->getStatusBarManager()Landroid/app/StatusBarManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final setCredentialView()V
    .locals 11

    .line 1
    const-string v0, "Unknown credential type: "

    .line 2
    .line 3
    const-string v1, "setCredentialView"

    .line 4
    .line 5
    const-string v2, "BSS_SysUiWindow.C"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 11
    .line 12
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v1, v4, :cond_3

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq v1, v7, :cond_1

    .line 22
    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->getPatternLayoutId()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :cond_2
    move v8, v5

    .line 51
    move v9, v8

    .line 52
    move-object v7, v6

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->getPasswordLayoutId()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 59
    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    invoke-virtual {v7}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getPassword()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 67
    .line 68
    invoke-virtual {v8}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getSelection()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 73
    .line 74
    iget-boolean v9, v9, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsPasswordShown:Z

    .line 75
    .line 76
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v10, v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    if-eq v1, v4, :cond_4

    .line 103
    .line 104
    if-ne v1, v3, :cond_5

    .line 105
    .line 106
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 107
    .line 108
    invoke-virtual {v0, v9}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setPasswordShown(Z)V

    .line 109
    .line 110
    .line 111
    if-eqz v7, :cond_5

    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 114
    .line 115
    invoke-virtual {v0, v7}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setPassword(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 119
    .line 120
    invoke-virtual {p0, v8}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "AuthCredentialWindow: "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_3
    return-void
.end method

.method public setLockoutTimer(Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setLockoutTimer(Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
