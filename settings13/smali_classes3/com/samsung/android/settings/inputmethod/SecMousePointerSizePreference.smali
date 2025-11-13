.class public Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;
.super Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;
.source "SecMousePointerSizePreference.java"


# instance fields
.field private mFromTouch:Z

.field private mLastProgress:I

.field private mOldValue:I

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getMousePointerSize(Landroid/content/Context;)I
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mouse_pointer_size_step"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private onPointerSizeChange()V
    .locals 1

    .line 82
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->getMousePointerSize(Landroid/content/Context;)I

    move-result v0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return-void
.end method

.method private setMousePointerSize(Landroid/content/Context;I)V
    .locals 2

    const/4 p0, 0x1

    if-lt p2, p0, :cond_0

    const/16 p0, 0x9

    if-gt p2, p0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mouse_pointer_size_step"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const p0, 0xbc039

    const p1, 0x12cda

    int-to-long v0, p2

    .line 89
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 37
    sget v0, Lcom/android/settings/R$id;->custom_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    .line 39
    sget v1, Lcom/android/settings/R$id;->left_text:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    sget v2, Lcom/android/settings/R$id;->right_text:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 41
    sget v2, Lcom/android/settings/R$string;->sec_small:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 42
    sget v1, Lcom/android/settings/R$string;->sec_large:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eq v0, p1, :cond_0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 46
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->getMousePointerSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mOldValue:I

    .line 47
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screenzoom_seekbar_tickmark_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->sec_screenzoom_seekbar_progress_drawable:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->onPointerSizeChange()V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    .line 58
    iput-boolean p3, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mFromTouch:Z

    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mTouchInProgress:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->setMousePointerSize(Landroid/content/Context;I)V

    .line 63
    :cond_0
    iget p3, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mLastProgress:I

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    .line 64
    invoke-virtual {p1, p3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 65
    iput p2, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mLastProgress:I

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mTouchInProgress:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mTouchInProgress:Z

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 78
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/inputmethod/SecMousePointerSizePreference;->setMousePointerSize(Landroid/content/Context;I)V

    return-void
.end method
