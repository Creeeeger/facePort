.class public Lcom/android/settings/widget/SeekBarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityRangeInfoType:I

.field private mContinuousUpdates:Z

.field private mDefaultProgress:I

.field private mHapticFeedbackMode:I

.field private mIsTalkBackEnabled:Z

.field private final mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field private mMax:I

.field private mMin:I

.field private mOverrideSeekBarStateDescription:Ljava/lang/CharSequence;

.field private mProgress:I

.field mProgressBarMode:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarContentDescription:Ljava/lang/CharSequence;

.field private mSeekBarStateDescription:Ljava/lang/CharSequence;

.field private mShouldBlink:Z

.field private mTrackingTouch:Z


# direct methods
.method public static synthetic $r8$lambda$-7Q1A8R-UpwI_wRJqRLshztauoE(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityRangeInfoType(Lcom/android/settings/widget/SeekBarPreference;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverrideSeekBarStateDescription(Lcom/android/settings/widget/SeekBarPreference;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mOverrideSeekBarStateDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 117
    sget v0, Landroidx/preference/R$attr;->seekBarPreferenceStyle:I

    const v1, 0x1120124

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    .line 69
    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mIsTalkBackEnabled:Z

    .line 75
    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgressBarMode:I

    .line 82
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 84
    iget v3, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 85
    iget v3, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    const/16 v4, 0x1a

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 86
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, 0x1090109

    .line 90
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 93
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 98
    sget-object v0, Lcom/android/settings/R$styleable;->SecSeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 100
    sget p3, Lcom/android/settings/R$styleable;->SecSeekBarPreference_progressBarMode:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgressBarMode:I

    .line 102
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 108
    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mIsTalkBackEnabled:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 3

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 178
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    return-void
.end method

.method private setProgress(IZ)V
    .locals 1

    .line 282
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 285
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 288
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 289
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    .line 290
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_2

    .line 292
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    return p0
.end method

.method public getMin()I
    .locals 0

    .line 242
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 298
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    return p0
.end method

.method public isSelectable()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 136
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 143
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x1020531

    .line 144
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 147
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgressBarMode:I

    if-ltz v1, :cond_0

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarStateDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v1, v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v1, :cond_4

    .line 166
    check-cast v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    .line 168
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    if-eqz v0, :cond_5

    .line 169
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 170
    new-instance v0, Lcom/android/settings/widget/SeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/SeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_5
    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settings/widget/SeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SeekBarPreference$1;-><init>(Lcom/android/settings/widget/SeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 207
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 212
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const p0, 0x1020531

    .line 216
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    if-nez p0, :cond_1

    return v0

    .line 220
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 328
    iget-boolean p2, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    if-nez p2, :cond_1

    .line 329
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 423
    :cond_0
    check-cast p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    .line 424
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 425
    iget v0, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    .line 426
    iget v0, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 427
    iget p1, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 428
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 400
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 407
    :cond_0
    new-instance v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 408
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    .line 409
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    .line 410
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    iput p0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 201
    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    .line 202
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 201
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    .line 336
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v1, 0x35

    .line 337
    invoke-static {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    .line 338
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 336
    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    .line 344
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 347
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x35

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public overrideSeekBarStateDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mOverrideSeekBarStateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setContinuousUpdates(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    return-void
.end method

.method public setHapticFeedbackMode(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 224
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 225
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 226
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 231
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_0

    .line 232
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 233
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method public setSeekBarContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mIsTalkBackEnabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    .line 368
    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_1

    .line 369
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 4

    .line 306
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 307
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_4

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    .line 310
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-ne v0, p0, :cond_4

    .line 316
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    goto :goto_0

    .line 321
    :cond_3
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_4
    :goto_0
    return-void
.end method
