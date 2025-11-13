.class public Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FunctionKeyTips.java"


# instance fields
.field private mActivityHistory:Ljava/lang/String;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mFunctionKeySettingsButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field private mFunctionKeyTipsLayout1:Lcom/android/settingslib/widget/LayoutPreference;

.field private mFunctionKeyTipsLayout2:Lcom/android/settingslib/widget/LayoutPreference;

.field private mFunctionKeyTipsLayout3:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityHistory(Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mActivityHistory:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "default"

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mActivityHistory:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips$1;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public SetScreen()V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout1:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-eqz v0, :cond_0

    .line 113
    sget v3, Lcom/android/settings/R$id;->layout_container:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 115
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout1:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->description_container:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 117
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout1:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->animation:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 119
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout1:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->description_title:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 120
    sget v4, Lcom/android/settings/R$string;->sec_function_key_tips_quick_panel_title:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout1:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->description_summary:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    sget v4, Lcom/android/settings/R$string;->sec_function_key_tips_quick_panel_desc:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 123
    sget v3, Lcom/android/settings/R$drawable;->sec_tips_for_power_quickpanel:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout2:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    .line 126
    sget v3, Lcom/android/settings/R$id;->layout_container:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 128
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout2:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->animation:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout2:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->description_title:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    sget v4, Lcom/android/settings/R$string;->sec_function_key_tips_side_and_volume_down_key_title:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout2:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->description_summary:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 133
    sget v4, Lcom/android/settings/R$string;->sec_function_key_tips_side_and_volume_down_key_desc:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 134
    sget v3, Lcom/android/settings/R$drawable;->sec_tips_for_power_sidekey:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "ro.product.name"

    .line 135
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout3:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_3

    .line 138
    sget v3, Lcom/android/settings/R$id;->layout_container:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 140
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout3:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->animation:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout3:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->description_title:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "\u200f"

    goto :goto_0

    :cond_2
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->sec_function_key_tips_bixby_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout3:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->description_summary:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 146
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_function_key_tips_say_to_bixby:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/android/settings/R$string;->sec_function_key_tips_bixby_desc:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    sget v3, Lcom/android/settings/R$drawable;->sec_tips_for_power_bixby:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeySettingsButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    if-eqz v0, :cond_4

    .line 150
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sec_function_key_tips_button_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeySettingsButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeySettingsButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 155
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 156
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dc2

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 85
    sget p0, Lcom/android/settings/R$xml;->sec_function_key_tips:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mActivityHistory:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mActivityHistory:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "default"

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mActivityHistory:Ljava/lang/String;

    :cond_1
    const-string p1, "function_key_tips_layout_1"

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout1:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "function_key_tips_layout_2"

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout2:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "function_key_tips_layout_3"

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeyTipsLayout3:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "function_key_settings_button"

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->mFunctionKeySettingsButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->SetScreen()V

    .line 168
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
