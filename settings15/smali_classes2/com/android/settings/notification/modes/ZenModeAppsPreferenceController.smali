.class public final Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mModeId:Ljava/lang/String;

.field mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# direct methods
.method public static $r8$lambda$89JTmq7s6tYNaP39BtnnupMCZtU(Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;->mModeId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "MODE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/modes/ZenModeSelectBypassingAppsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p0, 0x578

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance p1, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$1;-><init>(Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iput-object v2, v1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    const-string v2, "zen_mode_apps_priority"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;)V

    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "zen_mode_apps_priority"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_0

    :sswitch_1
    const-string v3, "zen_mode_apps_none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "zen_mode_apps_all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p2

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    new-instance p1, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->savePolicy(Ljava/util/function/Function;)Z

    move-result p0

    return p0

    :pswitch_1
    new-instance p1, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->savePolicy(Ljava/util/function/Function;)Z

    move-result p0

    return p0

    :pswitch_2
    new-instance p2, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->savePolicy(Ljava/util/function/Function;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68b9272c -> :sswitch_2
        0x519a3665 -> :sswitch_1
        0x59cda251 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;->mModeId:Ljava/lang/String;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iget-object p0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move p0, v1

    goto :goto_1

    :sswitch_0
    const-string v4, "zen_mode_apps_priority"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :sswitch_1
    const-string v4, "zen_mode_apps_none"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "zen_mode_apps_all"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result p0

    if-ne p0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result p0

    if-ne p0, v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result p0

    if-ne p0, v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x68b9272c -> :sswitch_2
        0x519a3665 -> :sswitch_1
        0x59cda251 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
