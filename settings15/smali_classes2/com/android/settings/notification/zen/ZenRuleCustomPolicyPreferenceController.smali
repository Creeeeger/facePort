.class public final Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;)V

    iput-object v0, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    return-void
.end method

.method public final launchCustomSettings()V
    .locals 4

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "RULE_ID"

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p0, 0x645

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final setCustomPolicy()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v3

    invoke-static {v3}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v4}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v4

    invoke-static {v4}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v4

    :cond_1
    iget-object v5, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    :goto_1
    new-instance v6, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v6, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    iget-object v1, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v1

    invoke-virtual {v6, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2, v0, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    :cond_3
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method
