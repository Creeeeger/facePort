.class abstract Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "AbstractMobileNetworkSettings.java"


# instance fields
.field private mHiddenControllerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRedrawRequired:Z


# direct methods
.method public static synthetic $r8$lambda$KG_aULe4vYIoxS5gOPgzALyeXyg(Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->lambda$redrawPreferenceControllers$4(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UO4kIAXRZT9w_Q2HJ-kfkIYs2C8(Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->lambda$updatePreferenceStates$3(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XNgBSeEjEPMuyb5eVU5o40Hz6jI(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->lambda$getPreferenceControllersAsList$0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oboT3CRbmhCs5LNOGYbMC7I1ads(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->lambda$onExpandButtonClick$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pRffXbHdQkA1ipfCGfphpJQlhcg(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->lambda$onExpandButtonClick$2(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    return-void
.end method

.method private static synthetic lambda$getPreferenceControllersAsList$0(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 54
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic lambda$onExpandButtonClick$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onExpandButtonClick$2(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$redrawPreferenceControllers$4(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 151
    invoke-virtual {p2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->updateVisiblePreferenceControllers(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method private synthetic lambda$updatePreferenceStates$3(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->updateVisiblePreferenceControllers(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method private updateVisiblePreferenceControllers(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->searchForPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->isPreferenceExpanded(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object p0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 127
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 130
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method getPreferenceControllersAsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public onExpandButtonClick()V
    .locals 10

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 77
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda1;-><init>()V

    .line 79
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/PreferenceScreen;)V

    .line 80
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 85
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onExpandButtonClick()V

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 89
    iget-object v4, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v5

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v6

    sub-long/2addr v2, v0

    long-to-int v9, v2

    const/4 v7, 0x0

    const-string/jumbo v8, "onExpandButtonClick"

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method redrawPreferenceControllers()V
    .locals 12

    .line 134
    iget-object v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->setTelephonyAvailabilityStatus(Ljava/util/Collection;)Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    .line 150
    new-instance v5, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v4}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;Landroidx/preference/PreferenceScreen;)V

    invoke-interface {v2, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 157
    iget-object v6, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v8

    const/4 v9, 0x0

    sub-long/2addr v4, v0

    long-to-int v11, v4

    const-string/jumbo v10, "redrawPreferenceControllers"

    invoke-virtual/range {v6 .. v11}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 160
    invoke-virtual {v3}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->close()V

    return-void
.end method

.method searchForPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 60
    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method setTelephonyAvailabilityStatus(Ljava/util/Collection;)Lcom/android/settings/network/telephony/TelephonyStatusControlSession;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)",
            "Lcom/android/settings/network/telephony/TelephonyStatusControlSession;"
        }
    .end annotation

    .line 69
    new-instance p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;->build()Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    move-result-object p0

    return-object p0
.end method

.method protected updatePreferenceStates()V
    .locals 10

    .line 98
    iget-object v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->redrawPreferenceControllers()V

    return-void

    .line 105
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;Landroidx/preference/PreferenceScreen;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 113
    iget-object v4, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v5

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v6

    const/4 v7, 0x0

    sub-long/2addr v2, v0

    long-to-int v9, v2

    const-string/jumbo v8, "updatePreferenceStates"

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method
