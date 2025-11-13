.class public abstract Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mHiddenControllerList:Ljava/util/List;

.field public mIsRedrawRequired:Z


# virtual methods
.method public final getPreferenceControllersAsList()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final onExpandButtonClick()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onExpandButtonClick()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    sub-long/2addr v2, v0

    long-to-int v8, v2

    const/16 v5, 0x623

    const/16 v6, 0x623

    const/4 v7, 0x0

    const-string v9, "onExpandButtonClick"

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void
.end method

.method public final redrawPreferenceControllers()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;-><init>(Ljava/util/Collection;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v4, v6}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;Landroidx/preference/PreferenceScreen;I)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    sub-long/2addr v4, v0

    long-to-int v10, v4

    const/4 v9, 0x0

    const-string v11, "redrawPreferenceControllers"

    const/16 v7, 0x623

    const/16 v8, 0x623

    invoke-virtual/range {v6 .. v11}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->close()V

    return-void
.end method

.method public final updatePreferenceStates()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->redrawPreferenceControllers()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;Landroidx/preference/PreferenceScreen;I)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    sub-long/2addr v2, v0

    long-to-int v8, v2

    const/16 v5, 0x623

    const/16 v6, 0x623

    const/4 v7, 0x0

    const-string v9, "updatePreferenceStates"

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void
.end method

.method public final updateVisiblePreferenceControllers(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->isPreferenceExpanded(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
