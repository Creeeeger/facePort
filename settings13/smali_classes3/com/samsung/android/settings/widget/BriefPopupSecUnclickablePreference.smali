.class public Lcom/samsung/android/settings/widget/BriefPopupSecUnclickablePreference;
.super Landroidx/preference/SecPreference;
.source "BriefPopupSecUnclickablePreference.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mPositionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/BriefPopupSecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/BriefPopupSecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/BriefPopupSecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/samsung/android/settings/widget/BriefPopupSecUnclickablePreference;->mPositionMode:I

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/widget/BriefPopupSecUnclickablePreference;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const/16 v1, 0xf

    if-eqz p2, :cond_0

    .line 49
    sget-object v2, Lcom/android/settings/R$styleable;->SecUnclickable:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 50
    sget v3, Lcom/android/settings/R$styleable;->SecUnclickable_positionMode:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/widget/BriefPopupSecUnclickablePreference;->mPositionMode:I

    .line 51
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 p4, 0x3

    .line 55
    sget v0, Lcom/android/settings/R$layout;->sec_widget_preference_brief_popup_unclickable:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 57
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 58
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    sget-object p3, Lcom/android/settings/R$styleable;->SecCategory:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    sget p2, Lcom/android/settings/R$styleable;->SecCategory_roundStroke:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 62
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 65
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_brief_popup_unclickable:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 66
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 85
    sget v0, Lcom/android/settings/R$id;->brief_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 89
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
