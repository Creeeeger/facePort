.class public Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;
.super Landroidx/preference/SecCheckBoxPreference;
.source "SecRadioButtonGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;,
        Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mButtonEnableState:Z

.field private mContext:Landroid/content/Context;

.field private mEnableState:Z

.field private mIsSummaryColorPrimaryDark:Z

.field private mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

.field private mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;

.field private mShowSettings:Z

.field private mShowSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SecCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mIsSummaryColorPrimaryDark:Z

    const/4 p3, 0x0

    .line 32
    iput-object p3, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

    .line 34
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    .line 36
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    .line 38
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mShowSettings:Z

    .line 40
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mShowSummary:Z

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mContext:Landroid/content/Context;

    .line 45
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_gear_with_front_widget_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 46
    sget p1, Lcom/android/settings/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 84
    invoke-super {p0, p1}, Landroidx/preference/SecCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 85
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x1020018

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x1020016

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const/4 v1, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 93
    iget-boolean v5, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    const v0, 0x1020010

    .line 95
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v0, :cond_5

    .line 97
    iget-boolean v6, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mShowSummary:Z

    if-nez v6, :cond_3

    .line 98
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 100
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 106
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mIsSummaryColorPrimaryDark:Z

    invoke-static {p0, v0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    .line 108
    sget v0, Lcom/android/settings/R$id;->settings_button_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 109
    sget v1, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 111
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;

    if-eqz v1, :cond_8

    .line 112
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    if-eqz v0, :cond_7

    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    if-eqz p0, :cond_7

    const/4 v4, 0x1

    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    .line 117
    :cond_8
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x0

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->settings_button:I

    if-ne p1, v0, :cond_0

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;->onGearClick(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    :cond_0
    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mIsSummaryColorPrimaryDark:Z

    .line 125
    invoke-static {p0, p1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public setButtonEnabled(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mShowSettings:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    return-void
.end method

.method public setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

    return-void
.end method

.method public setOnGearClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;

    .line 59
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummaryVisible(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mShowSummary:Z

    return-void
.end method
