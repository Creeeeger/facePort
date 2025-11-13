.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mIconColor:Ljava/lang/String;

.field public final mIconContainerColor:Ljava/lang/String;

.field public final mLockFingerIcon:Ljava/util/function/Supplier;

.field public final mUseKeyguardIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->mIconColor:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->mIconContainerColor:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->mUseKeyguardIcon:Z

    .line 9
    .line 10
    iput-object p8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->mLockFingerIcon:Ljava/util/function/Supplier;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getContainerColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->mIconContainerColor:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7f060033

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "getContainerColor: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "BSS_UdfpsPrivilegedAuthSensorWindow"

    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public final getIconColor()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->mIconColor:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "getIconColor: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "BSS_UdfpsPrivilegedAuthSensorWindow"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const v0, 0x7f060043

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public initSensorLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->initSensorLayout()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;->mIsKeyguard:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->showSensorIcon()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setSensorIcon()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->mUseKeyguardIcon:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->getIconColor()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "BSS_UdfpsPrivilegedAuthSensorWindow"

    .line 16
    .line 17
    const-string v0, "SensorIcon: transparent color"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->mLockFingerIcon:Ljava/util/function/Supplier;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 40
    .line 41
    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setLottieViewColorFilter(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->getContainerDrawable()Landroid/graphics/drawable/InsetDrawable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->handleContainerRotation(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setSensorIcon()V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    return-void
.end method
