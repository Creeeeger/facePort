.class public Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "NavigationBarBackGesturePreference.java"


# instance fields
.field private final HAPTIC_FEEDBACK_FOR_SEEKBAR:I

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mBackGestureInset:I

.field private mBottomGestureInset:I

.field private mDetailType:I

.field private mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

.field private mIsGestureHintOn:Z

.field private mIsSubDisplay:Z

.field private mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field private mSensitivitySeekBar:Landroid/widget/SeekBar;

.field private mSensitivityTitle:Landroid/widget/TextView;

.field private mSupportBottomGesture:Z

.field private mValue:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmSensitivitySeekBar(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmValue(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyBackGestureSensitivity(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->applyBackGestureSensitivity()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x29

    .line 30
    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->HAPTIC_FEEDBACK_FOR_SEEKBAR:I

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    return-void
.end method

.method private applyBackGestureSensitivity()V
    .locals 4

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIsSubDisplay:Z

    if-eqz v0, :cond_0

    const-string v1, "navigation_bar_back_gesture_sensitivity_sub"

    goto :goto_0

    :cond_0
    const-string v1, "navigation_bar_back_gesture_sensitivity"

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0xb6dcb

    goto :goto_1

    :cond_1
    const v0, 0xb6dc9

    .line 116
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->getProgress()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->setSensitivityInsetScale(Landroid/content/Context;)V

    const/16 v1, 0x1d2e

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->getProgress()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method private initDetailInfo()V
    .locals 3

    .line 126
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_hint"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIsGestureHintOn:Z

    xor-int/2addr v0, v2

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSupportBottomGesture:Z

    return-void
.end method

.method private updateProgress()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIsSubDisplay:Z

    if-eqz v0, :cond_0

    const-string v0, "navigation_bar_back_gesture_sensitivity_sub"

    goto :goto_0

    :cond_0
    const-string v0, "navigation_bar_back_gesture_sensitivity"

    .line 159
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_1
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .line 143
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivityTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->navigationbar_back_gesture_sensitivity_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIsSubDisplay:Z

    if-eqz v2, :cond_0

    .line 147
    sget v2, Lcom/android/settings/R$string;->navigationbar_back_gesture_sensitivity_title_fold_cover:I

    goto :goto_0

    .line 148
    :cond_0
    sget v2, Lcom/android/settings/R$string;->navigationbar_back_gesture_sensitivity_title_fold_main:I

    .line 146
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivityTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 0

    .line 106
    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    :cond_0
    const v0, 0x1020531

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    .line 52
    sget v0, Lcom/android/settings/R$id;->gesture_sensitivity_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivityTitle:Landroid/widget/TextView;

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-nez p1, :cond_1

    .line 55
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->initDetailInfo()V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->updateDetailInfo()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_2

    const/16 p3, 0x29

    .line 86
    invoke-static {p3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    .line 88
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mBackGestureInset:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getSensitivityInsetScale(Landroid/content/Context;I)F

    move-result p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 89
    iget-boolean p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSupportBottomGesture:Z

    if-eqz p3, :cond_1

    .line 90
    iget p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mBottomGestureInset:I

    int-to-float p3, p3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getBottomSensitivityInsetScale(Landroid/content/Context;I)F

    move-result p2

    mul-float/2addr p3, p2

    float-to-int p2, p3

    .line 91
    iget-object p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mDetailType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->setIndicatorWidth(IIZ)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->setIndicatorWidth(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->resetIndicator()V

    .line 101
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->applyBackGestureSensitivity()V

    return-void
.end method

.method public setIndicatorView(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    return-void
.end method

.method public updateDetailInfo()V
    .locals 3

    .line 131
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIsSubDisplay:Z

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->updateTitle()V

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->updateProgress()V

    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSupportBottomGesture:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "navigation_bar_gesture_detail_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mDetailType:I

    .line 137
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050242

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mBottomGestureInset:I

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mBackGestureInset:I

    return-void
.end method
