.class public Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public mMax:I

.field public mMin:I

.field public mProgress:I

.field public mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mSeekBarContentDescription:Ljava/lang/CharSequence;

.field public mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x112015d

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0d0942

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isSelectable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v0, v0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a0475

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMin:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$1;-><init>(Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

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

.method public final onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    new-instance p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const p0, 0x7f0a0475

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SeslSeekBar;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mTrackingTouch:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    iget p3, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    if-eq p2, p3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress$1(IZ)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    iget v0, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->max:I

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    iget p1, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->min:I

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMin:I

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
    new-instance v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    iput v0, v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->progress:I

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    iput v0, v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->max:I

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMin:I

    iput p0, v1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference$SavedState;->min:I

    return-object v1
.end method

.method public final onSetInitialValue(Ljava/lang/Object;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress$1(IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress$1(IZ)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setProgress$1(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public final setSeekBarContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
