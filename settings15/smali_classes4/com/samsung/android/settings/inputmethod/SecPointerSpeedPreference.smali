.class public Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;
.super Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIm:Landroid/hardware/input/InputManager;

.field public mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0475

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->getPointerSpeed(Landroid/content/Context;)I

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->getPointerSpeed(Landroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    add-int/lit8 p1, p1, 0x7

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    iget-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mTouchInProgress:Z

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    add-int/lit8 p2, p2, -0x7

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/hardware/input/InputSettings;->setPointerSpeed(Landroid/content/Context;I)V

    invoke-static {p0, p2}, Landroid/hardware/input/InputSettings;->setTouchpadPointerSpeed(Landroid/content/Context;I)V

    const-string p0, "SecPointerSpeedPreference"

    const-string p1, "PointerSpeed change not touched"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mTouchInProgress:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mTouchInProgress:Z

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    add-int/lit8 p0, p0, -0x7

    invoke-static {p1, p0}, Landroid/hardware/input/InputSettings;->setPointerSpeed(Landroid/content/Context;I)V

    invoke-static {p1, p0}, Landroid/hardware/input/InputSettings;->setTouchpadPointerSpeed(Landroid/content/Context;I)V

    return-void
.end method
