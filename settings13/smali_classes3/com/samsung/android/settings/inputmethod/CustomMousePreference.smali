.class public abstract Lcom/samsung/android/settings/inputmethod/CustomMousePreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CustomMousePreference.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMouseButtonSAConstantValue:I

.field protected mMouseButtonType:I

.field protected mMouseButtonValue:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonSAConstantValue:I

    return-void
.end method

.method private getOpenAppName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-static {v0, p0}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private updateCheckedState(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 92
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 93
    instance-of v3, v2, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-eqz v3, :cond_3

    .line 94
    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    .line 95
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 96
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    .line 98
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonEnabled(Z)V

    .line 99
    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->onGearClick(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x2f

    .line 103
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 104
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v2, v3

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 106
    sget-object v3, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package_name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  activity_name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v3, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-static {v3, v5, v2}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->setKeyCustomizationInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonEnabled(Z)V

    .line 111
    iget v2, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->releaseKeyCustomizationInfo(I)V

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected abstract getButtonType()I
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initPreference()V
    .locals 8

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getButtonType()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/InputMethodUtils;->isHomeOnlyModeEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonValue:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 63
    new-instance v4, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonValue:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonValue:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 66
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/samsung/android/settings/inputmethod/InputMethodUtils;->getMouseButtonFeatureTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    if-ne v5, v0, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v2

    .line 67
    :goto_1
    invoke-virtual {v4, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v1, :cond_1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 69
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 71
    :cond_1
    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;)V

    const/16 v7, 0xa

    if-lt v5, v7, :cond_2

    .line 73
    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;)V

    .line 74
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->setOpenAppSummary(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    :goto_2
    if-lt v0, v7, :cond_3

    goto :goto_3

    :cond_3
    move v6, v2

    .line 78
    :goto_3
    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->initPreference()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 175
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getButtonType()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getButtonType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getOpenAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getButtonType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonSAConstantValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getMetricsCategory()I

    move-result v1

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonSAConstantValue:I

    invoke-static {v1, p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onGearClick(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 2

    .line 129
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 130
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    const-string v1, "mouseButtonType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    .line 132
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_open_apps_title:I

    .line 134
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 1

    .line 85
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->setButtonType(I)V

    .line 87
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->updateCheckedState(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->updateOpenAppSummary()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int v3, p1

    .line 50
    new-instance p1, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    const v4, 0x1020018

    const v5, 0x1020001

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    .line 51
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected abstract setButtonType(I)V
.end method

.method public setOpenAppSummary(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 144
    iget-object v3, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v4, ""

    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    .line 149
    iget-object v3, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 151
    :cond_2
    iget-boolean v3, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mIsEnabled:Z

    if-nez v3, :cond_3

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$string;->lock_app_shortcut_disabled_app:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 155
    :cond_3
    iget-object p0, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 150
    :cond_4
    :goto_0
    sget p0, Lcom/android/settings/R$string;->lock_app_shortcut_deleted_app:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 146
    :cond_5
    :goto_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    .line 158
    :goto_2
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public updateOpenAppSummary()V
    .locals 4

    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 163
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 164
    instance-of v2, v1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-eqz v2, :cond_0

    .line 165
    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    .line 166
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 167
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->setOpenAppSummary(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
