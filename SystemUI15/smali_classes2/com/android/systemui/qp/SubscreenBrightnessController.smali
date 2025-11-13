.class public final Lcom/android/systemui/qp/SubscreenBrightnessController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

.field public static mControlValueInitialized:Z

.field public static mExternalChange:Z

.field public static mIsHighBrightnessMode:Z

.field public static mTracking:Z

.field public static mUsingHighBrightnessDialogEnabled:Z


# instance fields
.field public final mBackgroundHandler:Landroid/os/Handler;

.field public mBrightness:F

.field public mBrightnessMax:F

.field public mBrightnessMin:F

.field public final mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

.field public final mContext:Landroid/content/Context;

.field public mDetailActivity:Z

.field public mDisplay:Landroid/view/Display;

.field public mDisplayId:I

.field public final mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

.field public mListening:Z

.field public final mMaximumBacklight:F

.field public final mMinimumBacklight:F

.field public final mSeekListener:Lcom/android/systemui/qp/SubscreenBrightnessController$4;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSliderAnimationDuration:I

.field public mSliderAnimator:Landroid/animation/ValueAnimator;

.field public final mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

.field public final mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qp/SubscreenBrightnessController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static -$$Nest$monProgressSnap(Lcom/android/systemui/qp/SubscreenBrightnessController;Landroid/widget/SeekBar;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v0, v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightnessLevels:[I

    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v5, v0, v2

    sub-int v6, v5, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_0

    move v3, v5

    move v4, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p1, v3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setSubscreenBrightness(I)V

    return-void
.end method

.method public static -$$Nest$mupdateSlider(Lcom/android/systemui/qp/SubscreenBrightnessController;F)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMinimumBacklight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMinimumBacklight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mMaximumBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMaximumBacklight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mBrightnessMin="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMin:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mBrightnessMax="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMax:F

    const-string v4, "SubscreenBrightnessController"

    invoke-static {v0, v3, v4}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getAutoBrightnessTransitionTime()I

    move-result v0

    const-string v3, "animation duration: "

    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimationDuration:I

    if-eq v3, v0, :cond_1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimationDuration:I

    :cond_1
    mul-float v0, p1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateSlider() = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", brightnessValue = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", min = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " max = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    sget-boolean p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mControlValueInitialized:Z

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p1, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget p0, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    if-gt p0, v0, :cond_5

    iget-object p0, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    if-eqz p0, :cond_5

    iget-object p1, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    :cond_5
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mControlValueInitialized:Z

    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "high_brightness_mode_pms_enter"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qp/SubroomBrightnessSettingsView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMin:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMax:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimationDuration:I

    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$1;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$2;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$3;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$4;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSeekListener:Lcom/android/systemui/qp/SubscreenBrightnessController$4;

    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$6;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$7;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMinimumBacklight:F

    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMaximumBacklight:F

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p1, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    return-void
.end method


# virtual methods
.method public final onChanged(IZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChanged: mExternalChange="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    const-string v2, " stopTracking="

    const-string v3, "SubscreenBrightnessController"

    invoke-static {v0, v1, v2, p3, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    sget-boolean p3, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const-string/jumbo p3, "tracking : "

    const-string v0, "mIsHighBrightnessMode : "

    invoke-static {p3, v0, p2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mIsHighBrightnessMode:Z

    invoke-static {p3, v0, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez p2, :cond_2

    sget-boolean p3, Lcom/android/systemui/qp/SubscreenBrightnessController;->mIsHighBrightnessMode:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->getSubscreenBrightnessMode()I

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p0, "TAG"

    const-string p1, "info.brightness: null aaa "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget p3, p3, Landroid/hardware/display/BrightnessInfo;->brightness:F

    iput p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightness:F

    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    int-to-float p1, p1

    iget p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMinimumBacklight:F

    add-float/2addr p1, p3

    iget p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mMaximumBacklight:F

    div-float/2addr p1, p3

    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayId:I

    invoke-virtual {p3, v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/systemui/qp/SubscreenBrightnessController$5;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qp/SubscreenBrightnessController$5;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;F)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final onViewAttached()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSeekListener:Lcom/android/systemui/qp/SubscreenBrightnessController$4;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v1, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->getSubDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDisplay = :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayId:I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getShownMaxBrightnessDialog()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialogEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    const-wide/16 v4, 0x8

    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/systemui/qp/SubscreenBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v0, v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
