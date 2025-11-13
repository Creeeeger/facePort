.class public Lcom/android/settings/datausage/DataSaverSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private final KEY_DATA_SAVER_DESC:Ljava/lang/String;

.field private final KEY_DATA_SAVER_SWITCH:Ljava/lang/String;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field public mSwitchBar:Landroidx/preference/SecSwitchPreference;

.field private mSwitching:Z

.field private mUnrestrictedAccess:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$HGwNqeTXw3Wdq7zH8SEM8lmVZe0(Lcom/android/settings/datausage/DataSaverSummary;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverSummary;->lambda$setSwitchBarChangeListener$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 349
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataSaverSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataSaverSummary;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 365
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$2;

    sget v1, Lcom/android/settings/R$xml;->sec_data_saver:I

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverSummary$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/datausage/DataSaverSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 95
    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    const-string v0, "data_saver_switch"

    .line 103
    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->KEY_DATA_SAVER_SWITCH:Ljava/lang/String;

    const-string v0, "data_saver_desc"

    .line 104
    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->KEY_DATA_SAVER_DESC:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$setSwitchBarChangeListener$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 217
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget-boolean p2, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 220
    monitor-exit p0

    return v0

    .line 222
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 223
    iget-object p2, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getMetricsCategory()I

    move-result p2

    const/16 v1, 0x1bbd

    if-nez p1, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {p2, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 225
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 226
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setSwitchBarChangeListener()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/android/settings/datausage/DataSaverSummary$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataSaverSummary$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/DataSaverSummary;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 249
    sget p0, Lcom/android/settings/R$string;->help_url_data_saver:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x15c

    return p0
.end method

.method public initUI()V
    .locals 3

    .line 395
    sget v0, Lcom/android/settings/R$xml;->sec_data_saver:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "data_saver_desc"

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "data_saver_switch"

    .line 397
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Landroidx/preference/SecSwitchPreference;

    .line 399
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->data_saver_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    .line 400
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 387
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->initUI()V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverSummary;->setSwitchBarChangeListener()V

    .line 391
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->initUI()V

    const-string/jumbo p1, "unrestricted_access"

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroidx/preference/Preference;

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 117
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 127
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez p1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_1
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 209
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 210
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 5

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 279
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 281
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 282
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 287
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 292
    :cond_2
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v3, v2}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 203
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverSummary;->setSwitchBarChangeListener()V

    .line 155
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 156
    new-instance v1, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 157
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 159
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshAllowlist()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshDenylist()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge;->resume(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    const-string v2, "DataSaverSummary"

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background data :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Data saving:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 171
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 181
    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "background_data_by_pco"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    move v3, v1

    :cond_5
    const-string v0, "data_saver_switch"

    if-eqz v3, :cond_6

    const-string/jumbo v1, "remove swich by pco"

    .line 185
    invoke-static {v2, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 191
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "remove swich by uid"

    .line 192
    invoke-static {v2, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_7
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    if-eqz p1, :cond_0

    .line 235
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 238
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    .line 239
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
