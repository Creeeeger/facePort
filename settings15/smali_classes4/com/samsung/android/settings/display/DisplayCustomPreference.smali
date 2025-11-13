.class public Lcom/samsung/android/settings/display/DisplayCustomPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public mMax:I

.field public mProgress:I

.field public final mSeekBarId:I

.field public mTrackingTouch:Z

.field public seekBar:Landroidx/appcompat/widget/SeslSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v3, 0x112015d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    iget p3, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iget p3, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    if-eq p2, p3, :cond_0

    iput p2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput p5, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mSeekBarId:I

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mSeekBarId:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    iget p3, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq p2, p3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress$2(IZ)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->progress:I

    iput v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    iget p1, p1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->max:I

    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    iput v0, v1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->progress:I

    iget p0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    iput p0, v1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->max:I

    return-object v1
.end method

.method public final onSetInitialValue(Ljava/lang/Object;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress$2(IZ)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress$2(IZ)V

    return-void
.end method

.method public final setProgress$2(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method
