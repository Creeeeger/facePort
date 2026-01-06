.class public Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "AuthCredentialWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_SysUiWindow.C"


# instance fields
.field private mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mSbm:Landroid/app/StatusBarManager;

.field private mScreenOffBR:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mSbm:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mBaseView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->setCredentialView()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->setEventListener()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mBaseView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mBaseView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method private hideStatusBarBtn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mSbm:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 v1, 0x1200000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mH:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerBroadcastReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setCredentialView()V
    .locals 8

    const-string v0, "BSS_SysUiWindow.C"

    const-string v1, "setCredentialView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d0023

    goto :goto_0

    :cond_0
    const v4, 0x7f0d0022

    :goto_0
    nop

    goto :goto_3

    :cond_1
    const v4, 0x7f0d0021

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0d0020

    goto :goto_1

    :cond_2
    const v4, 0x7f0d001f

    :goto_1
    nop

    goto :goto_2

    :cond_3
    const v4, 0x7f0d001e

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    iget-boolean v5, v5, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mIsPasswordShown:Z

    move v2, v5

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v5, v6}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->setInjector(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    invoke-virtual {v5, v3}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->setCredentialType(I)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    invoke-virtual {v5, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->setPassword(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    invoke-virtual {v5, v2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->setPasswordShown(Z)V

    :cond_6
    goto :goto_5

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown credential type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AuthCredentialWindow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mBaseView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterBroadcastReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->unregisterBroadcastReceiver()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->hideStatusBarBtn(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    const v0, 0x1000002

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isTpaMode()Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x2000

    :cond_0
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x7e1

    const/4 v6, -0x3

    move-object v1, v7

    move v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "BiometricPrompt3P"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BSS_SysUiWindow.C"

    return-object v0
.end method

.method public handleAuthenticationError(IILjava/lang/String;)Z
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    invoke-virtual {v0, p3}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->showError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->setCredentialView()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->addView()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->setCloseSystemDialogBroadcast(Z)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->registerBroadcastReceiver()V

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;->hideStatusBarBtn(Z)V

    return-void
.end method
