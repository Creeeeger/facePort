.class public Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;
.super Landroidx/preference/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final centerBasedBar:Z

.field public final currentMode:I

.field public leftLabel:Ljava/lang/CharSequence;

.field public progressTintList:Landroid/content/res/ColorStateList;

.field public rightLabel:Ljava/lang/CharSequence;

.field public final seamless:Z

.field public stateDescription:Ljava/lang/CharSequence;

.field public tickMarkTintList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const v0, 0x7f04000f

    const v1, 0x7f040543

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->currentMode:I

    sget-object p4, Lcom/android/settings/R$styleable;->A11ySeekBarPreference:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p4

    move v0, p3

    :goto_0
    :try_start_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->leftLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->rightLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->close()V

    sget-object p4, Lcom/android/settings/R$styleable;->A11ySeekBar:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    move p2, p3

    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p4

    if-ge p2, p4, :cond_6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    if-ne p4, v2, :cond_3

    invoke-virtual {p1, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->seamless:Z

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    if-nez p4, :cond_4

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->centerBasedBar:Z

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    if-ne p4, v0, :cond_5

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->currentMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    return-void

    :goto_4
    if-eqz p1, :cond_7

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw p0

    :goto_6
    if-eqz p4, :cond_8

    :try_start_3
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    throw p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a0d90

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->seamless:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->centerBasedBar:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;->centerBasedBar:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->currentMode:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->tickMarkTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->progressTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->leftLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->rightLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f0a0d94

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0a08ac

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->leftLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_3
    const v0, 0x7f0a0cb8

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->rightLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
