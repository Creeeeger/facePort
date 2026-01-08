.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;


# static fields
.field static final MAX_ALPHA:F = 0.93f


# instance fields
.field public mCurrentAlpha:I

.field public mDebugView:Landroid/widget/TextView;

.field public final mDisplayBrightnessMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

.field public final mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

.field public mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

.field public final mMaskView:Landroid/view/View;

.field final mMaskWindowLayout:Landroid/widget/FrameLayout;

.field public final mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mDisplayBrightnessMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const p2, 0x7f0d0045

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mMaskWindowLayout:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    const p2, 0x7f0a019e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mMaskView:Landroid/view/View;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 37
    .line 38
    .line 39
    sget-boolean p3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 40
    .line 41
    if-nez p3, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final addView()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->updateBackgroundColor(I)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->addView()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getCurrentAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mCurrentAlpha:I

    .line 2
    .line 3
    return p0
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 12
    .line 13
    const v5, 0x1000018

    .line 14
    .line 15
    .line 16
    const/4 v6, -0x3

    .line 17
    const/16 v4, 0xa3b

    .line 18
    .line 19
    move-object v1, v7

    .line 20
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 21
    .line 22
    .line 23
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 24
    .line 25
    const v1, -0x10001

    .line 26
    .line 27
    .line 28
    and-int/2addr v0, v1

    .line 29
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 33
    .line 34
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 35
    .line 36
    or-int/lit8 v0, v0, 0x10

    .line 37
    .line 38
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTpaMode(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    iget p0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 49
    .line 50
    const/high16 v0, 0x100000

    .line 51
    .line 52
    or-int/2addr p0, v0

    .line 53
    iput p0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 54
    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 57
    .line 58
    .line 59
    const/high16 p0, 0x40000

    .line 60
    .line 61
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 62
    .line 63
    .line 64
    const/high16 p0, 0x20000000

    .line 65
    .line 66
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 67
    .line 68
    .line 69
    const/high16 p0, 0x20000

    .line 70
    .line 71
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 72
    .line 73
    .line 74
    const/16 p0, 0x8

    .line 75
    .line 76
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 77
    .line 78
    .line 79
    const-string p0, "FP Maskview"

    .line 80
    .line 81
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x4

    .line 85
    iput p0, v7, Landroid/view/WindowManager$LayoutParams;->surfaceType:I

    .line 86
    .line 87
    return-object v7
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_UdfpsMaskWindow"

    .line 2
    .line 3
    return-object p0
.end method

.method public final initHbmProvider()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mMaskWindowLayout:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const v3, 0x7f0a019d

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    .line 24
    .line 25
    iput-object v0, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setLightSourceInfo()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->isDebugMode()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mMaskWindowLayout:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    const v1, 0x7f0a019f

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mDebugView:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const/4 v0, 0x4

    .line 56
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mDisplayBrightnessMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->registerListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->addView()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public isDebugMode()Z
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v0, "fingerprint_maskview_debug_mode"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {p0, v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    move v1, v2

    .line 22
    :cond_1
    return v1
.end method

.method public final onBrightnessChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->updateBackgroundColor(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final removeView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mDisplayBrightnessMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->unregisterListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setVisibility(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setVisibility: ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "]"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "BSS_UdfpsMaskWindow"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final turnOffCalibrationLightSource()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "#ff"

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mCalibrationLightColor:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->handleLightSource(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final turnOffHBM()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final turnOffLightSource()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->handleLightSource(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final turnOnCalibrationLightSource()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "#ff"

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mCalibrationLightColor:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->handleLightSource(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final turnOnHBM()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->updateBackgroundColor(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final turnOnLightSource()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->handleLightSource(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public updateBackgroundColor(I)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "updateBackgroundColor: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "BSS_UdfpsMaskWindow"

    .line 16
    .line 17
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mDisplayBrightnessMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->getBrightnessFromFile()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget v4, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 37
    .line 38
    if-eq v4, v3, :cond_0

    .line 39
    .line 40
    if-eq v3, v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->getBrightnessFromFile()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iput v3, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 47
    .line 48
    :cond_0
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 49
    .line 50
    :cond_1
    if-gez p1, :cond_2

    .line 51
    .line 52
    const-string p1, "updateBackgroundColor: invalid brightness value, set to default"

    .line 53
    .line 54
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/16 p1, 0x7f

    .line 58
    .line 59
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD:Z

    .line 65
    .line 66
    const/high16 v5, 0x3f800000    # 1.0f

    .line 67
    .line 68
    if-eqz v4, :cond_b

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_b

    .line 75
    .line 76
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 77
    .line 78
    int-to-float p1, p1

    .line 79
    iget-object v6, v3, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mAodBrightnessValues:[I

    .line 80
    .line 81
    const/16 v7, 0x3c

    .line 82
    .line 83
    const/4 v8, 0x2

    .line 84
    if-eqz v6, :cond_7

    .line 85
    .line 86
    array-length v6, v6

    .line 87
    const/4 v9, 0x1

    .line 88
    sub-int/2addr v6, v9

    .line 89
    :goto_0
    if-ltz v6, :cond_7

    .line 90
    .line 91
    const/16 v10, 0xa

    .line 92
    .line 93
    const/16 v11, 0x1e

    .line 94
    .line 95
    if-nez v6, :cond_5

    .line 96
    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    if-eq v6, v9, :cond_8

    .line 100
    .line 101
    if-eq v6, v8, :cond_3

    .line 102
    .line 103
    :goto_1
    move v10, v7

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move v10, v11

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move v10, v8

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    iget-object v12, v3, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mAodBrightnessValues:[I

    .line 110
    .line 111
    aget v12, v12, v6

    .line 112
    .line 113
    if-eqz v12, :cond_6

    .line 114
    .line 115
    int-to-float v12, v12

    .line 116
    div-float v12, p1, v12

    .line 117
    .line 118
    cmpl-float v12, v12, v5

    .line 119
    .line 120
    if-ltz v12, :cond_6

    .line 121
    .line 122
    if-eqz v6, :cond_4

    .line 123
    .line 124
    if-eq v6, v9, :cond_8

    .line 125
    .line 126
    if-eq v6, v8, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_7
    move v10, v0

    .line 133
    :cond_8
    :goto_2
    if-ne v10, v0, :cond_a

    .line 134
    .line 135
    const/high16 v0, 0x42b40000    # 90.0f

    .line 136
    .line 137
    cmpl-float p1, p1, v0

    .line 138
    .line 139
    if-lez p1, :cond_9

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_9
    move v7, v8

    .line 143
    :goto_3
    move v10, v7

    .line 144
    :cond_a
    invoke-virtual {v4, v10}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    goto :goto_4

    .line 149
    :cond_b
    int-to-float p1, p1

    .line 150
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 151
    .line 152
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mBrightnessNitForOptical:F

    .line 153
    .line 154
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 155
    .line 156
    invoke-virtual {v3, p1, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getAlphaMaskLevel(FFF)F

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    const/4 v4, 0x0

    .line 161
    cmpg-float v5, v3, v4

    .line 162
    .line 163
    const/high16 v6, 0x437f0000    # 255.0f

    .line 164
    .line 165
    if-gtz v5, :cond_f

    .line 166
    .line 167
    const v3, 0x3fd26e98    # 1.644f

    .line 168
    .line 169
    .line 170
    mul-float/2addr v3, p1

    .line 171
    const/high16 v5, 0x43000000    # 128.0f

    .line 172
    .line 173
    cmpg-float v5, p1, v5

    .line 174
    .line 175
    if-gtz v5, :cond_c

    .line 176
    .line 177
    const v5, 0x3e6b851f    # 0.23f

    .line 178
    .line 179
    .line 180
    mul-float/2addr v5, p1

    .line 181
    const/high16 v7, 0x40000000    # 2.0f

    .line 182
    .line 183
    sub-float/2addr v5, v7

    .line 184
    goto :goto_5

    .line 185
    :cond_c
    cmpg-float v5, p1, v6

    .line 186
    .line 187
    if-gtz v5, :cond_d

    .line 188
    .line 189
    sub-float v5, v6, p1

    .line 190
    .line 191
    const v7, 0x3e5c28f6    # 0.215f

    .line 192
    .line 193
    .line 194
    mul-float/2addr v5, v7

    .line 195
    goto :goto_5

    .line 196
    :cond_d
    move v5, v4

    .line 197
    :goto_5
    sub-float/2addr v3, v5

    .line 198
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mNitsForOptical:F

    .line 199
    .line 200
    cmpl-float v5, v3, v0

    .line 201
    .line 202
    if-lez v5, :cond_e

    .line 203
    .line 204
    move v3, v4

    .line 205
    goto :goto_6

    .line 206
    :cond_e
    div-float/2addr v3, v0

    .line 207
    float-to-double v3, v3

    .line 208
    const-wide v7, 0x3fe14c1bacf914c1L    # 0.5405405405405405

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 214
    .line 215
    .line 216
    move-result-wide v3

    .line 217
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 218
    .line 219
    sub-double/2addr v7, v3

    .line 220
    double-to-float v0, v7

    .line 221
    move v3, v0

    .line 222
    :cond_f
    :goto_6
    const v0, 0x3f6e147b    # 0.93f

    .line 223
    .line 224
    .line 225
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    mul-float/2addr v6, v0

    .line 230
    float-to-int v3, v6

    .line 231
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mCurrentAlpha:I

    .line 232
    .line 233
    shl-int/lit8 v3, v3, 0x18

    .line 234
    .line 235
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mMaskView:Landroid/view/View;

    .line 236
    .line 237
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    .line 239
    .line 240
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;->mDebugView:Landroid/widget/TextView;

    .line 241
    .line 242
    if-eqz p0, :cond_10

    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v5, "Alpha : "

    .line 247
    .line 248
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v1, ", "

    .line 274
    .line 275
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    return-void
.end method
