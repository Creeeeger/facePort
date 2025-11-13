.class public Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "CustomSeekbarPreference.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityRangeInfoType:I

.field private mContinuousUpdates:Z

.field private mMax:I

.field private mMin:I

.field private mProgress:I

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mSeekBarContentDescription:Ljava/lang/CharSequence;

.field private mTrackingTouch:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccessibilityRangeInfoType(Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mAccessibilityRangeInfoType:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1120124

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mAccessibilityRangeInfoType:I

    .line 57
    sget-object v0, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    iget p2, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setMax(I)V

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez p5, :cond_0

    .line 63
    sget p1, Lcom/android/settings/R$layout;->sec_preference_custom_seekbar:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0, p5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1

    .line 197
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 200
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 203
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 204
    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    .line 205
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_2

    .line 207
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSelectable()Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 90
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 97
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 98
    sget v0, Lcom/android/settings/R$id;->custom_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 99
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMin:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$1;-><init>(Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 139
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 156
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 157
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 144
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 148
    :cond_0
    sget p0, Lcom/android/settings/R$id;->custom_seekbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SeslSeekBar;

    if-nez p0, :cond_1

    return v0

    .line 152
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 233
    iget-boolean p2, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mContinuousUpdates:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mTrackingTouch:Z

    if-nez p2, :cond_1

    .line 234
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->syncProgress(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 292
    :cond_0
    check-cast p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;

    .line 293
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 294
    iget v0, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    .line 295
    iget v0, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->max:I

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    .line 296
    iget p1, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->min:I

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMin:I

    .line 297
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 269
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 276
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 277
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    iput v0, v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->progress:I

    .line 278
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    iput v0, v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->max:I

    .line 279
    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMin:I

    iput p0, v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->min:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 133
    iget p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    .line 134
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 133
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mTrackingTouch:Z

    .line 246
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->syncProgress(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 161
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 162
    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    .line 163
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress(IZ)V

    return-void
.end method

.method public setSeekBarContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 252
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    .line 256
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_1

    .line 257
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method syncProgress(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    .line 221
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    .line 222
    iget v1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 224
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress(IZ)V

    goto :goto_0

    .line 226
    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
