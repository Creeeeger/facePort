.class public Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;
.super Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;
.source "SecMouseScrollingSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference$Callback;

.field private mFromTouch:Z

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mOldSpeed:I

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method private getMouseScrollingSpeed(Landroid/content/Context;)I
    .locals 1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mouse_scrolling_speed"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private onSpeedChanged()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->getMouseScrollingSpeed(Landroid/content/Context;)I

    move-result v0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return-void
.end method

.method private setMouseScrollingSpeed(Landroid/content/Context;I)V
    .locals 0

    const/4 p0, 0x1

    if-lt p2, p0, :cond_0

    const/16 p0, 0x64

    if-gt p2, p0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mouse_scrolling_speed"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 93
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scrolling speed out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 49
    sget v0, Lcom/android/settings/R$id;->custom_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eq p1, v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 53
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->getMouseScrollingSpeed(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mOldSpeed:I

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 55
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->onSpeedChanged()V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    .line 64
    iput-boolean p3, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mFromTouch:Z

    .line 65
    iget-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mTouchInProgress:Z

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->setMouseScrollingSpeed(Landroid/content/Context;I)V

    const-string p0, "SecMouseScrollingSpeedPreference"

    const-string p1, "Scrolling speed change not touched"

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mTouchInProgress:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mTouchInProgress:Z

    .line 80
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 81
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->setMouseScrollingSpeed(Landroid/content/Context;I)V

    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference$Callback;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;->mCallback:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference$Callback;

    const-string p0, "SecMouseScrollingSpeedPreference"

    const-string p1, "setCallback called"

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
