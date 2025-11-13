.class public Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mBrightnessLevels:[I

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mIsRestricted:Z

.field public mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public final mSubBrightnessObserver:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x7f0a0f29

    const/4 v3, 0x0

    const v4, 0x7f0d0956

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    new-instance p2, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSubBrightnessObserver:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070167

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mBrightnessLevels:[I

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    const v1, 0x7f0a0f29

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mIsRestricted:Z

    if-nez v2, :cond_0

    move v0, v3

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a025c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "Brightness_icon.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v0, 0x49

    const-string/jumbo v1, "sub_screen_brightness"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setContentDescriptionForAutomationTest$3(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    return-void
.end method

.method public final onClick()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mIsRestricted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_config_brightness"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

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

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p3, "sub_screen_brightness"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mBrightnessLevels:[I

    array-length v2, v1

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget v6, v1, v4

    sub-int v7, v6, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v3, :cond_0

    move v5, v6

    move v3, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "seek bar value = "

    const-string v2, " , snap value = "

    const-string v3, "SubBrightnessSeekBarPreference"

    invoke-static {v1, v2, v0, v5, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sub_screen_brightness"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setContentDescriptionForAutomationTest$3(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    return-void
.end method

.method public final onSubBrightnessChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sub_screen_brightness"

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "onSubBrightnessChanged() brightnessValue: "

    const-string v2, "SubBrightnessSeekBarPreference"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setContentDescriptionForAutomationTest$3(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    :cond_0
    return-void
.end method

.method public final setBrightnessAnimation(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42f00000    # 120.0f

    div-float/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "animationValue : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubBrightnessSeekBarPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    return-void
.end method

.method public final setContentDescriptionForAutomationTest$3(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
