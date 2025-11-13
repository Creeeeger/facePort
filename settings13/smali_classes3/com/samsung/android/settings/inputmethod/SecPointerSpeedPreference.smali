.class public Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;
.super Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;
.source "SecPointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference$Callback;

.field private mFromTouch:Z

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mOldSpeed:I

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method private onSpeedChanged()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 46
    sget v0, Lcom/android/settings/R$id;->custom_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eq p1, v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 50
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mOldSpeed:I

    .line 51
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 52
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->onSpeedChanged()V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    .line 61
    iput-boolean p3, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mFromTouch:Z

    .line 62
    iget-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mTouchInProgress:Z

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    add-int/lit8 p2, p2, -0x7

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    const-string p0, "SecPointerSpeedPreference"

    const-string p1, "PointerSpeed change not touched"

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mTouchInProgress:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mTouchInProgress:Z

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    add-int/lit8 p0, p0, -0x7

    .line 79
    invoke-virtual {p1, v0, p0}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference$Callback;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mCallback:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference$Callback;

    const-string p0, "SecPointerSpeedPreference"

    const-string p1, "setCallback called"

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
