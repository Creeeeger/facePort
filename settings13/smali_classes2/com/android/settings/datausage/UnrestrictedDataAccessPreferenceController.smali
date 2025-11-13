.class public Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "UnrestrictedDataAccessPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private final mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSort:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    .line 69
    invoke-static {p2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 71
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 72
    new-instance p1, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    return-void
.end method

.method private removeUselessPrefs(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 280
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 300
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 96
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_data_saver:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x30d

    goto :goto_0

    :cond_0
    const/16 p1, 0x30e

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    return-void
.end method

.method public bridge synthetic onDisabledAppCheckCompleted(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onDisabledAppCheckCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mExtraLoaded:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 243
    instance-of v0, p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x1bbe

    const/16 v2, 0x1bc2

    .line 245
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-ne p2, v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    int-to-long v5, v5

    invoke-static {v0, v2, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 248
    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    if-ne p2, v3, :cond_1

    move v1, v4

    .line 250
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 252
    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 251
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsAllowlisted(ILjava/lang/String;Z)V

    .line 253
    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->getDataUsageState()Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverAllowlisted:Z

    return v4

    :cond_2
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$integer;->config_num_visible_app_icons:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 148
    invoke-static {v2, p1, v3}, Lcom/android/settingslib/applications/AppUtils;->preloadTopIcons(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 152
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 154
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_7

    .line 156
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 157
    invoke-static {v9}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 162
    :cond_1
    iget-object v6, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 163
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eq v6, v7, :cond_3

    goto :goto_2

    .line 168
    :cond_2
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 174
    :cond_3
    invoke-static {v9}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->generateKey(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v7, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 177
    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    if-nez v6, :cond_4

    .line 179
    new-instance v6, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    iget-object v7, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v11, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v12, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/datausage/DataSaverBackend;Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 181
    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    iget-object v7, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 184
    :cond_4
    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v8, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 185
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 184
    invoke-static {v7, v9, v8}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 186
    invoke-virtual {v6}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    .line 189
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSort:Z

    if-eqz v7, :cond_6

    .line 190
    invoke-virtual {v6}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 191
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    :cond_5
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :cond_6
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setOrder(I)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 204
    :cond_7
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSort:Z

    if-eqz p1, :cond_9

    move p1, v4

    move v3, p1

    .line 206
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_8

    .line 207
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOrder(I)V

    add-int/lit8 p1, p1, 0x1

    move v3, v6

    goto :goto_3

    .line 208
    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_9

    .line 209
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setOrder(I)V

    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_4

    .line 213
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->removeUselessPrefs(Ljava/util/Set;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->resume(Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    return-void
.end method

.method public rebuild()V
    .locals 3

    .line 260
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mExtraLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public setParentFragment(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method

.method public setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    return-void
.end method

.method public setSort(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSort:Z

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
