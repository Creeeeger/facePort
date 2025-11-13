.class public Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "SubBrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBrightnessLevels:[I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIsRestricted:Z

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mSubBrightnessObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 51
    sget v5, Lcom/android/settings/R$layout;->sec_preference_seekbar_sub_brightness:I

    sget v6, Lcom/android/settings/R$id;->sub_brightness_seekbar:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    .line 43
    new-instance p2, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSubBrightnessObserver:Landroid/database/ContentObserver;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070122

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mBrightnessLevels:[I

    return-void
.end method

.method private getSubBrightness()I
    .locals 2

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "sub_screen_brightness"

    const/16 v1, 0x49

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private onProgressSnap(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 8

    .line 101
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mBrightnessLevels:[I

    array-length v2, v1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move v5, v4

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget v6, v1, v3

    sub-int v7, v6, v0

    .line 106
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v5, :cond_0

    move v4, v6

    move v5, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek bar value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , snap value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubBrightnessSeekBarPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->updateSubBrightness(I)V

    .line 115
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 116
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    .line 117
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    return-void
.end method

.method private setBrightnessAnimation(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42f00000    # 120.0f

    div-float/2addr p1, v0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubBrightnessSeekBarPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private setContentDescriptionForAutomationTest(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateSubBrightness(I)V
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "sub_screen_brightness"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 68
    sget v1, Lcom/android/settings/R$id;->sub_brightness_seekbar:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslSeekBar;

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mIsRestricted:Z

    if-nez v2, :cond_0

    move v0, v3

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-ne v1, v0, :cond_1

    return-void

    .line 75
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x5

    .line 76
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 82
    sget v0, Lcom/android/settings/R$id;->brightness_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "Brightness_icon.json"

    .line 83
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->getSubBrightness()I

    move-result p1

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->updateSubBrightness(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 88
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    .line 192
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_brightness"

    .line 191
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 152
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    const/16 p1, 0x15

    if-eq p2, p1, :cond_1

    const/16 p1, 0x16

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_2

    .line 157
    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    if-nez p3, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->updateSubBrightness(I)V

    .line 136
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->onProgressSnap(Landroidx/appcompat/widget/SeslSeekBar;)V

    return-void
.end method

.method public onSubBrightnessChanged()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->getSubBrightness()I

    move-result v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubBrightnessChanged() brightnessValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubBrightnessSeekBarPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 145
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    .line 146
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    :cond_0
    return-void
.end method

.method public registerSubBrightnessObserver()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sub_screen_brightness"

    .line 203
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSubBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setRestrictedBrightness(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mIsRestricted:Z

    .line 185
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public unRegisterSubBrightnessObserver()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSubBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
