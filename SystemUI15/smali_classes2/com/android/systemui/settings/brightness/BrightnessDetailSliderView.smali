.class public Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAppUsingBrightness:Ljava/lang/String;

.field public mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

.field public final mContext:Landroid/content/Context;

.field public mDualSeekBarThreshold:I

.field public mHighBrightnessModeEnter:Z

.field public mHighBrightnessModeToast:Landroid/widget/Toast;

.field public mIsSliderWarning:Z

.field public mIsThumbShowing:Z

.field public mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

.field public mOutdoorMode:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

.field public mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field public mSliderDisableToast:Landroid/widget/Toast;

.field public mSliderEnabled:Z

.field public mSystemBrightnessEnabled:Z

.field public mThumb:Landroid/graphics/drawable/Drawable;

.field public mThumbAnimator:Landroid/animation/ValueAnimator;

.field public mThumbThreshold:I

.field public mTracking:Z

.field public mTransparentThumb:Landroid/graphics/drawable/Drawable;

.field public mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public mUsingHighBrightnessDialogEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsThumbShowing:Z

    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getMax()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public final isAutoChecked$1()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final mirrorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    const v1, 0x7f0a01cd

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    const v0, 0x7f0a035f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0810a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0810a2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTransparentThumb:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xff

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumbAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumbAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumbAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "pms_notification_panel_brightness_adjustment"

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mAppUsingBrightness:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    iget-boolean v4, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    if-eq v4, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    iget-object v4, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "shown_max_brightness_dialog"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "high_brightness_mode_pms_enter"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    const-string/jumbo v5, "updateHighBrightnessModeEnter : "

    const-string v6, "BrightnessDetailSlider"

    invoke-static {v5, v6, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeEnter:Z

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "display_outdoor_mode"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mOutdoorMode:Z

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    xor-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateSliderEnabled() = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mSystemBrightnessEnabled = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    invoke-static {v3, v5, v6}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    if-eqz v0, :cond_6

    move v1, v4

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    if-eq v0, v1, :cond_8

    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    const v2, 0x7f081005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->init(Landroid/content/Context;)V

    return-void
.end method

.method public final setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mOutdoorMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public final setMax(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    return-void
.end method

.method public final setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    return-void
.end method

.method public final setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    return-void
.end method
