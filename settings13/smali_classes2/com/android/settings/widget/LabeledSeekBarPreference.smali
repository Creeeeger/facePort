.class public Lcom/android/settings/widget/LabeledSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "LabeledSeekBarPreference.java"


# instance fields
.field private final mIconEndContentDescriptionId:I

.field private final mIconEndId:I

.field private final mIconStartContentDescriptionId:I

.field private final mIconStartId:I

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private final mTextEndId:I

.field private final mTextStartId:I

.field private final mTickMarkId:I


# direct methods
.method public static synthetic $r8$lambda$m-IxTiANx61b1OcvCzjGvoE6rBk(Lcom/android/settings/widget/LabeledSeekBarPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBarPreference;->lambda$updateIconStartIfNeeded$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxg--adrmYKOwdxfWYcD0l9I1D0(Lcom/android/settings/widget/LabeledSeekBarPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBarPreference;->lambda$updateIconEndIfNeeded$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 102
    sget v0, Landroidx/preference/R$attr;->seekBarPreferenceStyle:I

    const v1, 0x1120124

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/widget/LabeledSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    sget p3, Lcom/android/settings/R$layout;->preference_labeled_slider:I

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 72
    sget-object p3, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference_textStart:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    .line 76
    sget p2, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference_textEnd:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    .line 78
    sget p2, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference_tickMark:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    .line 80
    sget p2, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference_iconStart:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    .line 82
    sget p4, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference_iconEnd:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    .line 85
    sget v0, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference_iconStartContentDescription:I

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

    .line 88
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 92
    sget p2, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference_iconEndContentDescription:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    if-eqz p2, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    move p3, v1

    :cond_3
    const-string p0, "The resource of the iconEnd attribute may be invalid or not set, you should set the iconEnd attribute and have the valid resource."

    .line 95
    invoke-static {p3, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private synthetic lambda$updateIconEndIfNeeded$1(Landroid/view/View;)V
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p1

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateIconStartIfNeeded$0(Landroid/view/View;)V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private static setIconViewAndFrameEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 249
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method private updateIconEndIfNeeded(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/SeekBar;)V
    .locals 2

    .line 221
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 226
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    :cond_2
    new-instance v0, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/LabeledSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 242
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p3

    if-ge p1, p3, :cond_3

    const/4 p0, 0x1

    :cond_3
    invoke-static {p2, p0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method private updateIconStartIfNeeded(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/SeekBar;)V
    .locals 2

    .line 195
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 200
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartContentDescriptionId:I

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartContentDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    :cond_2
    new-instance v0, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/widget/LabeledSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 216
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 217
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p0, 0x1

    :cond_3
    invoke-static {p2, p0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 111
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v3, 0x1020016

    .line 116
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->isSelectable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x1010036

    invoke-static {v0, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 118
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const v0, 0x1020014

    .line 122
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    if-lez v3, :cond_2

    .line 124
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const v0, 0x1020015

    .line 127
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    if-lez v3, :cond_3

    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :cond_3
    sget v0, Lcom/android/settings/R$id;->label_frame:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    if-gtz v3, :cond_5

    iget v3, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0x8

    .line 134
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020531

    .line 136
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 137
    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    if-eqz v1, :cond_7

    .line 138
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_7
    sget v1, Lcom/android/settings/R$id;->icon_start_frame:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 143
    sget v2, Lcom/android/settings/R$id;->icon_start:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 144
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->updateIconStartIfNeeded(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/SeekBar;)V

    .line 146
    sget v1, Lcom/android/settings/R$id;->icon_end_frame:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 147
    sget v2, Lcom/android/settings/R$id;->icon_end:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 148
    invoke-direct {p0, v1, p1, v0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->updateIconEndIfNeeded(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 168
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 169
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 159
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 160
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 186
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnPreferenceChangeStopListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method
