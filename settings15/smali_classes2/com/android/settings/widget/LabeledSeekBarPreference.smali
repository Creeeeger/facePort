.class public Lcom/android/settings/widget/LabeledSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIconEndContentDescriptionId:I

.field public final mIconEndId:I

.field public final mIconStartContentDescriptionId:I

.field public final mIconStartId:I

.field public mSeekBar:Landroid/widget/SeekBar;

.field public mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field public final mTextEndId:I

.field public final mTextStartId:I

.field public final mTickMarkId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f040543

    const v1, 0x112015d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/widget/LabeledSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p3, 0x7f0d0525

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object p3, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartContentDescriptionId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    const-string v0, "The resource of the iconStart attribute may be invalid or not set, you should set the iconStart attribute and have the valid resource."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    if-eqz p2, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    move p3, v1

    :cond_3
    const-string p0, "The resource of the iconEnd attribute may be invalid or not set, you should set the iconEnd attribute and have the valid resource."

    invoke-static {p3, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->isSelectable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x1010036

    invoke-static {v0, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    if-lez v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    if-lez v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    const v0, 0x7f0a0863

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    if-gtz v3, :cond_5

    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x102053c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const v0, 0x7f0a07b3

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v3, 0x7f0a07b2

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_8

    iget v5, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    iget v5, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartContentDescriptionId:I

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartContentDescriptionId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    new-instance v5, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/LabeledSeekBarPreference;I)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_a

    move v0, v1

    goto :goto_3

    :cond_a
    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :goto_4
    const v0, 0x7f0a079f

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v3, 0x7f0a079e

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_c

    iget v4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    iget v4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    new-instance v4, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/LabeledSeekBarPreference;I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p0, v0, :cond_e

    goto :goto_5

    :cond_e
    move v1, v2

    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :goto_6
    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setOnSeekBarChangeListener(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method
