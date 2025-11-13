.class public Lcom/samsung/android/settings/widget/SecUnclickablePreference;
.super Landroidx/preference/SecPreference;
.source "SecUnclickablePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPositionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mPositionMode:I

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const/16 v1, 0xf

    if-eqz p2, :cond_0

    .line 50
    sget-object v2, Lcom/android/settings/R$styleable;->SecUnclickable:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 51
    sget v3, Lcom/android/settings/R$styleable;->SecUnclickable_positionMode:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mPositionMode:I

    .line 52
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 p4, 0x3

    .line 56
    sget v0, Lcom/android/settings/R$layout;->sec_widget_preference_unclickable:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 58
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 59
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    sget-object p3, Lcom/android/settings/R$styleable;->SecCategory:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    sget p2, Lcom/android/settings/R$styleable;->SecCategory_roundStroke:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 63
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 66
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_unclickable:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 67
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 85
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 86
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_body_text_padding_start_end:I

    .line 94
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 95
    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 97
    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 100
    iget v6, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mPositionMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_subheader_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_subheader_margin_bottom:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    .line 102
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_first_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_first_margin_bottom:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 115
    :goto_0
    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 121
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public setPositionMode(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mPositionMode:I

    return-void
.end method
