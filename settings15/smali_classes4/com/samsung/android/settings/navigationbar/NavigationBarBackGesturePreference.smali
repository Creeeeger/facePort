.class public Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public mAccessibilityDelegate:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;

.field public mBackGestureInset:I

.field public mBottomGestureInset:I

.field public mDetailType:I

.field public mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

.field public mIsSubDisplay:Z

.field public mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field public mSeekByTouch:Z

.field public mSensitivitySeekBar:Landroid/widget/SeekBar;

.field public mSupportBottomGesture:Z

.field public mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    return-void
.end method


# virtual methods
.method public final applyBackGestureSensitivity()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIsSubDisplay:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "navigation_bar_back_gesture_sensitivity_sub"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "navigation_bar_back_gesture_sensitivity"

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0xb6dcb

    goto :goto_1

    :cond_1
    const v0, 0xb6dc9

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->setSensitivityInsetScale(Landroid/content/Context;)V

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    int-to-long v1, p0

    const/16 p0, 0x1d2e

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    :cond_0
    const v0, 0x102053c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a06cb

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mAccessibilityDelegate:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;

    if-nez p1, :cond_1

    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mAccessibilityDelegate:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "navigation_bar_gesture_hint"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportSearcle()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSupportBottomGesture:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->updateDetailInfo()V

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    if-eqz p3, :cond_a

    const/16 p3, 0x29

    invoke-static {p3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    iget p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mBackGestureInset:I

    int-to-float p3, p3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    aget v0, v0, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSupportBottomGesture:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mBottomGestureInset:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10700ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    :cond_1
    sget-object v4, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    aget p2, v4, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    iget v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mDetailType:I

    if-ne v4, v3, :cond_2

    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget v5, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutL:I

    add-int/2addr v5, p3

    invoke-virtual {v4, v5, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget v5, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutR:I

    add-int/2addr p3, v5

    invoke-virtual {v4, p3, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    :cond_2
    iget-boolean p3, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mNavBarCanMove:Z

    if-eqz p3, :cond_6

    iget p3, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRotation:I

    if-eqz p3, :cond_5

    if-eq p3, v3, :cond_4

    const/4 v3, 0x2

    if-eq p3, v3, :cond_5

    if-eq p3, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p3, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    goto :goto_1

    :cond_4
    iget-object p3, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    goto :goto_1

    :cond_5
    iget-object p3, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p3, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    :goto_1
    invoke-virtual {p3, p2, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    iget-object v0, p2, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget v4, p2, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutL:I

    add-int/2addr v4, p3

    if-nez v4, :cond_8

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_8
    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    iget-object v0, p2, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget p2, p2, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutR:I

    add-int/2addr p3, p2

    if-nez p3, :cond_9

    iget-object p2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_9
    iget-object p2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->mHandler:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable$1;

    invoke-virtual {p2, v3, p3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    iget-boolean p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSeekByTouch:Z

    if-nez p2, :cond_a

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->applyBackGestureSensitivity()V

    :cond_a
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSeekByTouch:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->applyBackGestureSensitivity()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSeekByTouch:Z

    return-void
.end method

.method public final updateDetailInfo()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIsSubDisplay:Z

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "navigation_bar_back_gesture_sensitivity_sub"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "navigation_bar_back_gesture_sensitivity"

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSupportBottomGesture:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_detail_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mDetailType:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mBottomGestureInset:I

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mBackGestureInset:I

    return-void
.end method
