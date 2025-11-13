.class public Lcom/android/settings/widget/SeekBarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public mContinuousUpdates:Z

.field public final mDefaultProgress:I

.field public mHapticFeedbackMode:I

.field public final mIsTalkBackEnabled:Z

.field public final mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public mMax:I

.field public mMin:I

.field public mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public mOverrideSeekBarStateDescription:Ljava/lang/CharSequence;

.field public mProgress:I

.field public final mProgressBarMode:I

.field public mSeekBar:Landroid/widget/SeekBar;

.field public mSeekBarContentDescription:Ljava/lang/CharSequence;

.field public mSeekBarStateDescription:Ljava/lang/CharSequence;

.field public mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f040543

    const v1, 0x112015d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mIsTalkBackEnabled:Z

    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgressBarMode:I

    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    const/16 v3, 0x1a

    iget v4, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, 0x1090111

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    sget-object v2, Lcom/android/settings/R$styleable;->SecSeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgressBarMode:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mIsTalkBackEnabled:Z

    return-void
.end method


# virtual methods
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

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v0, 0x102053c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgressBarMode:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->semSetMode(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMin(I)V

    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarStateDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v0, p1, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    :cond_4
    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settings/widget/SeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SeekBarPreference$1;-><init>(Lcom/android/settings/widget/SeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

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

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/16 p2, 0x9

    const/4 v0, 0x0

    if-eq p0, p2, :cond_1

    const/16 p2, 0xa

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setHovered(Z)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setHovered(Z)V

    :goto_0
    return v0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const p0, 0x102053c

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iget v0, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    iget p1, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

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
    new-instance v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    iput p0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    return-object v1
.end method

.method public final onSetInitialValue(Ljava/lang/Object;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v1, 0x35

    invoke-static {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x35

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public final setMax(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setMin(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method public final setProgress(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public final setSeekBarContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mIsTalkBackEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final syncProgress(Landroid/widget/SeekBar;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-ne v0, p0, :cond_4

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_4
    :goto_0
    return-void
.end method
