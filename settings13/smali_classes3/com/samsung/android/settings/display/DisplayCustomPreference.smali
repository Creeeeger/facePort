.class public Lcom/samsung/android/settings/display/DisplayCustomPreference;
.super Landroidx/preference/Preference;
.source "DisplayCustomPreference.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mSeekBarId:I

.field private mTrackingTouch:Z

.field seekBar:Landroidx/appcompat/widget/SeslSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1120124

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    sget-object v0, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    iget p2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setMax(I)V

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    iput p6, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mSeekBarId:I

    .line 34
    invoke-virtual {p0, p5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private setProgress(IZ)V
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 136
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 137
    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    .line 138
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_2

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 58
    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mSeekBarId:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 77
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 267
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_1

    .line 272
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

    if-eqz p3, :cond_0

    .line 166
    iget-boolean p2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    if-nez p2, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->syncProgress(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 214
    :cond_0
    check-cast p1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    .line 215
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    iget v0, p1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->progress:I

    iput v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    .line 217
    iget p1, p1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->max:I

    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    .line 218
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 192
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 199
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 200
    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    iput v0, v1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->progress:I

    .line 201
    iget p0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    iput p0, v1, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->max:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 71
    iget p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    .line 72
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 71
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    .line 179
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->syncProgress(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 119
    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 120
    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    .line 121
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(IZ)V

    return-void
.end method

.method syncProgress(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    .line 154
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    .line 155
    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(IZ)V

    goto :goto_0

    .line 159
    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
