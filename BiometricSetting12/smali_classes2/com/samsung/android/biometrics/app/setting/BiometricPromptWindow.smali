.class public Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "BiometricPromptWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_SysUiWindow.P"


# instance fields
.field private mBackgroundAlpha:I

.field private mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

.field private mBiometricSwitch:Landroid/widget/Switch;

.field private mBundle:Landroid/os/Bundle;

.field private mChangeBiometric:I

.field private mDialog:Landroid/widget/LinearLayout;

.field private mIsFaceAble:Z

.field private mIsFingerAble:Z

.field private mIsOnlyOneBioAble:Z

.field private mIsRequireConfirmation:Z

.field private mNeedUpdate:Z

.field private mPendingDismissReason:I

.field private mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 10

    const-string v0, "BiometricPromptWindow: "

    const-string v1, "BSS_SysUiWindow.P"

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mNeedUpdate:Z

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBundle:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getAvailableBiometric(Landroid/os/Bundle;)I

    move-result v4

    and-int/lit8 v5, v4, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsFingerAble:Z

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsFaceAble:Z

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBundle:Landroid/os/Bundle;

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->getNumberOfAvailableBiometricInPrompt(Landroid/os/Bundle;)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsOnlyOneBioAble:Z

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v5}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsRequireConfirmation:Z

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFingerprintPrompt()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0006

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBackgroundAlpha:I

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0005

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBackgroundAlpha:I

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d0024

    invoke-virtual {v5, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    const v5, 0x7f0a00c3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mDialog:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFacePrompt()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mContext:Landroid/content/Context;

    const v7, 0x7f100058

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mH:Landroid/os/Handler;

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFingerprintPrompt()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mContext:Landroid/content/Context;

    const v7, 0x7f100085

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mH:Landroid/os/Handler;

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    goto :goto_4

    :cond_5
    const-string v5, "BiometricPromptWindow: Unknown Prompt Type"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    sget-boolean v5, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DESKTOP_MODE:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->handleWakeLockForDexIfNeeded(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v5}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->initPrompt()V

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->initAvailableBioTypes(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->checkWindowFocus()V

    invoke-virtual {p0, v6}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->setCloseSystemDialogBroadcast(Z)V

    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->DEBUG:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    goto :goto_5

    :catch_0
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mNeedUpdate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mNeedUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mChangeBiometric:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mChangeBiometric:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->changePromptGUIHelper(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mDialog:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    return-object v0
.end method

.method private authCompleteEffect()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsOnlyOneBioAble:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a00d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private changePromptGUIHelper(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->cleanUpPrompt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePromptGUIHelper : Wrong biometric type ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiWindow.P"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mH:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mH:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->initPrompt()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->show()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private initAvailableBioTypes(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAbleBioTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiWindow.P"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsOnlyOneBioAble:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;-><init>(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->removeView()V

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mPendingDismissReason:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mPendingDismissReason:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->cleanUpPrompt()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    const v0, 0x1080102

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isTpaMode()Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x2000

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isCheckToEnrollMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0xa3a

    const/4 v6, -0x3

    move-object v1, v7

    move v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBackgroundAlpha:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "BiometricPrompt"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BSS_SysUiWindow.P"

    return-object v0
.end method

.method public handleAuthenticationError(IILjava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0x9

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/16 v5, 0x64

    if-eq p1, v5, :cond_3

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v4

    :goto_3
    if-eqz v5, :cond_4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleAuthenticationError(IILjava/lang/String;)Z

    goto :goto_6

    :cond_4
    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsOnlyOneBioAble:Z

    const/16 v7, 0x66

    if-eqz v6, :cond_7

    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleAuthenticationError(IILjava/lang/String;)Z

    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleAuthenticationError(IILjava/lang/String;)Z

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v6, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleAuthenticationError(IILjava/lang/String;)Z

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->getPromptType()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_8

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsFingerAble:Z

    goto :goto_5

    :cond_8
    const/16 v8, 0x1000

    if-ne v6, v8, :cond_9

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsFaceAble:Z

    :cond_9
    :goto_5
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsFingerAble:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsFaceAble:Z

    if-nez v3, :cond_c

    if-eqz v1, :cond_b

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3, v7, v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_6
    if-eqz v0, :cond_e

    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mPendingDismissReason:I

    :cond_e
    return v0
.end method

.method public handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleAuthenticationFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleAuthenticationHelp(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleAuthenticationSucceeded(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsRequireConfirmation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->getPromptType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->authCompleteEffect()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mIsRequireConfirmation:Z

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleAuthenticationSucceeded(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public handleEvent(IILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleEvent(IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public handleTspBlock(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->handleTspBlock(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->onRotationInfoChanged(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->mBiometricPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->addView()V

    return-void
.end method
