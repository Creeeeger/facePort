.class public Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;
.super Lcom/samsung/android/biometrics/app/setting/FocusableWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$OnModalityChangeListener;


# instance fields
.field public mCurrentBiometric:I

.field public final mDialog:Landroid/widget/LinearLayout;

.field public final mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

.field public final mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

.field public final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Landroid/os/Looper;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->getPrimaryBiometricAuthenticator()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mCurrentBiometric:I

    .line 18
    .line 19
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->getBaseView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 26
    .line 27
    const p3, 0x7f0a00fa

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mDialog:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    new-instance p3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow$1;

    .line 39
    .line 40
    invoke-direct {p3, p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p2, p3, p1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    const-string p2, "BSS_SysUiWindow.P"

    .line 50
    .line 51
    const-string p3, "BiometricPromptWindow: "

    .line 52
    .line 53
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 59
    .line 60
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 61
    .line 62
    const/16 p1, 0xa

    .line 63
    .line 64
    const/4 p2, -0x1

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendErrorEventToBioService(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method


# virtual methods
.method public final addView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->show()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->addView()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public createGuiHelper(I)Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 19
    .line 20
    invoke-direct {p1, v0, v2, v3, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    iput-wide v2, p1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mTimePreviousHelpMessage:J

    .line 26
    .line 27
    iput-object v1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    .line 29
    iput-object v1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    .line 30
    .line 31
    iput-object v1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 32
    .line 33
    iput-object v1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ".Fa"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iput-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    :goto_0
    move-object v1, p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 71
    .line 72
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 73
    .line 74
    move-object v0, p1

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_1
    return-object v1
.end method

.method public getBaseView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f0d0025

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTpaMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x1082102

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x1080102

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isCheckToEnrollMode()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    or-int/lit16 v0, v0, 0x80

    .line 25
    .line 26
    :cond_1
    move v5, v0

    .line 27
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    const/16 v4, 0xa3a

    .line 30
    .line 31
    const/4 v6, -0x3

    .line 32
    const/4 v2, -0x1

    .line 33
    const/4 v3, -0x1

    .line 34
    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 40
    .line 41
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v3, 0x7f0b0005

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 55
    .line 56
    instance-of v3, v3, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const v2, 0x7f0b0007

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    :cond_2
    int-to-float p0, v2

    .line 74
    const/high16 v2, 0x42c80000    # 100.0f

    .line 75
    .line 76
    div-float/2addr p0, v2

    .line 77
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 78
    .line 79
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 80
    .line 81
    or-int/lit8 p0, p0, 0x10

    .line 82
    .line 83
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    not-int v1, v1

    .line 97
    and-int/2addr p0, v1

    .line 98
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 99
    .line 100
    .line 101
    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_SysUiWindow.P"

    .line 2
    .line 3
    return-object p0
.end method

.method public final init()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mCurrentBiometric:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->createGuiHelper(I)Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "BSS_SysUiWindow.P"

    .line 12
    .line 13
    const-string v1, "BiometricPromptWindow: Unknown Prompt Type"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 21
    .line 22
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    const/4 v1, -0x2

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendErrorEventToBioService(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DESKTOP_MODE:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getToastMessageInDex()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/Utils$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    invoke-direct {v3, v1, v0}, Lcom/samsung/android/biometrics/app/setting/Utils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->initPrompt()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 67
    .line 68
    iput-object p0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mOnModalityChangeListener:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$OnModalityChangeListener;

    .line 69
    .line 70
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFocusLost()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

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

.method public final onModalitySwitched(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onModalitySwitched: oldModality = ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mCurrentBiometric:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "] -> newModality = ["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "]"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "BSS_SysUiWindow.P"

    .line 31
    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mCurrentBiometric:I

    .line 36
    .line 37
    if-ne p1, v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "changePromptGUIHelper() called with: newModality = ["

    .line 43
    .line 44
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->cleanUpPrompt()V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 73
    .line 74
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "onModalitySwitched: "

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mCurrentModality:I

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " --> "

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "BSS_BiometricPromptClient"

    .line 101
    .line 102
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mCurrentModality:I

    .line 106
    .line 107
    if-ne v1, p1, :cond_2

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    iput p1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mCurrentModality:I

    .line 111
    .line 112
    const/16 v1, 0x3e9

    .line 113
    .line 114
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mUdfpsAuthSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    if-ne p1, v1, :cond_3

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->showSensorIcon()V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mCurrentBiometric:I

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->createGuiHelper(I)Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->initPrompt()V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 144
    .line 145
    iput-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mOnModalityChangeListener:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$OnModalityChangeListener;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->show()V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    .line 151
    .line 152
    const/4 p1, 0x1

    .line 153
    const-wide/16 v0, 0x7d0

    .line 154
    .line 155
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final onRotationInfoChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->onRotationInfoChanged(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->updateScrollViewHeight()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onSystemDialogClosed()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->removeView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mUIHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->cleanUpPrompt()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mDialog:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
