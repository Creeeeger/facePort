.class public Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "KnoxAuthCredentialWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_SysUiWindow.K"


# instance fields
.field private mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mScreenOffBR:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0033

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mBaseView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mBaseView:Landroid/view/View;

    const v3, 0x7f0a00cf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    nop

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    goto :goto_1

    :pswitch_0
    const v4, 0x7f0d0035

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    goto :goto_0

    :pswitch_1
    const v4, 0x7f0d0034

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mBaseView:Landroid/view/View;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->changeCredentialViewIfNeeded(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setInjector(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setCredentialType(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->setEventListener()V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mBaseView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    nop

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown credential type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxAuthCredentialWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BSS_SysUiWindow.K"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mBaseView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mH:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->getLogTag()Ljava/lang/String;

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

.method private setEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mBaseView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->getLogTag()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->unregisterBroadcastReceiver()V

    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    const v0, 0x1002000

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7e1

    const v5, 0x1002000

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "BiometricPrompt3PK"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->modifyLayoutParamsIfNeeded(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-object v1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BSS_SysUiWindow.K"

    return-object v0
.end method

.method public handleAuthenticationError(IILjava/lang/String;)Z
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-virtual {v0, p3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->showError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->onConfigurationChanged(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->addView()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->setCloseSystemDialogBroadcast(Z)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->registerBroadcastReceiver()V

    return-void
.end method
