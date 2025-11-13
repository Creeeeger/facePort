.class public Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "NavigationBarButtonOrderPreference.java"


# instance fields
.field private mEnabled:Z

.field private mNormalMode:Landroid/widget/RadioButton;

.field private mNormalModeContainer:Landroid/widget/LinearLayout;

.field private mNormalModeImg:Landroid/widget/ImageView;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mReverseMode:Landroid/widget/RadioButton;

.field private mReverseModeContainer:Landroid/widget/LinearLayout;

.field private mReverseModeImg:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$Hc6oC0o5yMiYPipnqJTyjEhA5DY(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->lambda$new$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmNormalMode(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReverseMode(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mEnabled:Z

    .line 33
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 47
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private getReverseButtonOrder()I
    .locals 2

    .line 111
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigationbar_key_order"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getReverseButtonOrder()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 50
    sget v1, Lcom/android/settings/R$id;->normal_mode:I

    const-string v2, "navigationbar_key_order"

    const/16 v3, 0x1d3b

    const/16 v4, 0x1d2e

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_3

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-wide/16 p0, 0x0

    .line 56
    invoke-static {v4, v3, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    .line 58
    :cond_1
    sget v1, Lcom/android/settings/R$id;->reverse_mode:I

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    .line 61
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-wide/16 p0, 0x1

    .line 64
    invoke-static {v4, v3, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public buttonOrderPreferenceEnabled(Z)V
    .locals 4

    .line 144
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "grayout"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 158
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getReverseButtonOrder()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 78
    sget v1, Lcom/android/settings/R$id;->normal_mode_container:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    .line 79
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 83
    sget v1, Lcom/android/settings/R$id;->reverse_mode_container:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    .line 84
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    if-nez v1, :cond_2

    .line 88
    sget v1, Lcom/android/settings/R$id;->normal_mode:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    .line 89
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    if-nez v1, :cond_3

    .line 93
    sget v1, Lcom/android/settings/R$id;->reverse_mode:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    .line 94
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    .line 98
    sget v1, Lcom/android/settings/R$id;->normal_mode_img:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    .line 102
    sget v1, Lcom/android/settings/R$id;->reverse_mode_img:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    .line 104
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    if-ne v0, v2, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->setImgResource()V

    .line 107
    iget-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->buttonOrderPreferenceEnabled(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 138
    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mEnabled:Z

    .line 139
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->buttonOrderPreferenceEnabled(Z)V

    return-void
.end method

.method public setImgResource()V
    .locals 3

    .line 115
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->samsung_setting_navibar_set_d_01_rtl:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->samsung_setting_navibar_set_d_02_rtl:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->samsung_setting_navibar_set_d_01:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->samsung_setting_navibar_set_d_02:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->samsung_setting_navibar_set_l_01_rtl:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->samsung_setting_navibar_set_l_02_rtl:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->samsung_setting_navibar_set_l_01:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->samsung_setting_navibar_set_l_02:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
