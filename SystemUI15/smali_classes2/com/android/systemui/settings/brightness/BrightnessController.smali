.class public final Lcom/android/systemui/settings/brightness/BrightnessController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;


# static fields
.field public static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;


# instance fields
.field public volatile mAutomatic:Z

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

.field public mBrightnessMax:F

.field public mBrightnessMin:F

.field public final mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

.field public final mContext:Landroid/content/Context;

.field public final mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field public mControlValueInitialized:Z

.field public final mDisplayId:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mExternalChange:Z

.field public final mHandlerCallback:Lcom/android/systemui/settings/brightness/BrightnessController$7;

.field public volatile mIsVrModeEnabled:Z

.field public mListening:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mSliderAnimator:Landroid/animation/ValueAnimator;

.field public final mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

.field public final mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

.field public mTrackingTouch:Z

.field public final mUpdateModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$4;

.field public final mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$5;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVrManager:Landroid/service/vr/IVrManager;

.field public final mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;


# direct methods
.method public static -$$Nest$mupdateSlider(Lcom/android/systemui/settings/brightness/BrightnessController;F)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    if-eqz v2, :cond_5

    iget v3, v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->sliderAnimationDuration:I

    iget v4, v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->transitionTime:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-gez v4, :cond_2

    const/4 v4, 0x0

    :cond_2
    iput v4, v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->sliderAnimationDuration:I

    :goto_0
    const-string v3, "SecBrightnessController"

    const-string/jumbo v4, "updateSlider() - BrightnessDialog resetTimer()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->brightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/android/systemui/settings/brightness/BrightnessDialog;->secBrightnessDialogController:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    :cond_3
    iget-object v3, v2, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4
    iget-object v2, v2, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    if-eqz v2, :cond_6

    iget v0, v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->maximumBacklight:F

    mul-float/2addr p1, v0

    iget v0, v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->minimumBacklight:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_1

    :cond_6
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result p1

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mTrackingTouch:Z

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v0

    filled-new-array {v0, p1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->sliderAnimationDuration:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v2}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getMax()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_2

    :cond_9
    const-wide/16 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v3}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long v3, p1

    mul-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/settings/SecureSettings;Landroid/service/vr/IVrManager;Ljava/util/concurrent/Executor;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mTrackingTouch:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$4;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$5;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$5;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$6;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$7;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$8;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    iput-object p8, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p10, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iput-object p6, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p7, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    new-instance p4, Lcom/android/systemui/settings/brightness/SecBrightnessController;

    invoke-direct {p4, p3, p2, p1, p10}, Lcom/android/systemui/settings/brightness/SecBrightnessController;-><init>(Landroid/os/Handler;Lcom/android/systemui/settings/brightness/ToggleSlider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    return-void
.end method


# virtual methods
.method public final onChanged(IZZ)V
    .locals 6

    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mTrackingTouch:Z

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xdb

    goto :goto_0

    :cond_2
    const/16 v0, 0xda

    :goto_0
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    if-eqz v3, :cond_3

    int-to-float p1, p1

    iget v1, v3, Lcom/android/systemui/settings/brightness/SecBrightnessController;->minimumBacklight:F

    add-float/2addr p1, v1

    iget v1, v3, Lcom/android/systemui/settings/brightness/SecBrightnessController;->maximumBacklight:F

    div-float/2addr p1, v1

    goto :goto_2

    :cond_3
    const v3, 0x477fff00    # 65535.0f

    int-to-float p1, p1

    const/4 v4, 0x0

    invoke-static {v4, v3, p1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v3

    if-gtz v5, :cond_4

    div-float/2addr p1, v3

    invoke-static {p1}, Landroid/util/MathUtils;->sq(F)F

    move-result p1

    goto :goto_1

    :cond_4
    const v3, 0x3f0f564f

    sub-float/2addr p1, v3

    const v3, 0x3e371ff0

    div-float/2addr p1, v3

    invoke-static {p1}, Landroid/util/MathUtils;->exp(F)F

    move-result p1

    const v3, 0x3e91c020

    add-float/2addr p1, v3

    :goto_1
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p1, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    div-float/2addr p1, v3

    invoke-static {v1, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-static {p1, v2}, Landroid/util/MathUtils;->min(FF)F

    move-result p1

    :goto_2
    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_5
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    invoke-virtual {p3, v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    if-nez p2, :cond_6

    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessController$9;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController$9;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;F)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method
