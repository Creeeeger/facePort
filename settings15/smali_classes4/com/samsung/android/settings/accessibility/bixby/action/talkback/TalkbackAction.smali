.class public final Lcom/samsung/android/settings/accessibility/bixby/action/talkback/TalkbackAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final doEnableAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Z)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    const-string/jumbo p1, "result"

    const-string/jumbo p2, "success"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGetCurrentStatus(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/accessibility/bixby/BixbyUtils;->getStateAlreadyChecked(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGetExclusivePopup(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const v0, 0x7f142e49

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "talkback_se"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/accessibility/bixby/BixbyUtils;->getExclusivepopupDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "false"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "true"

    :goto_0
    const-string/jumbo v1, "result"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.home.TalkBackPreferenceController"

    return-object p0
.end method

.method public final getPunchoutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 19

    move-object/from16 v6, p1

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    invoke-static {v6, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v8, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;

    invoke-direct {v8, v6}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, v8, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v15, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v10, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    new-instance v13, Lcom/android/settings/accessibility/AccessibilityServicePreference;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v13

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v4, v7

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/AccessibilityServicePreference;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    invoke-virtual {v8, v13, v9, v14}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/util/List;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v16

    invoke-virtual {v7, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v6, v7, v14}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    sget-object v8, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v8, :cond_1

    iget-object v8, v8, Lcom/android/settings/overlay/FeatureFactoryImpl;->accessibilityMetricsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProviderImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v11, v13

    move-object v7, v13

    move-object v13, v0

    move v0, v14

    move-object v14, v1

    move-object v1, v15

    move-object v15, v2

    move-object/from16 v18, v1

    invoke-static/range {v11 .. v18}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v7}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "resolve_info"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v7, v10, v3}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v10, v4}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, v6}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v1, Lcom/samsung/android/settings/accessibility/home/TalkBackPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
