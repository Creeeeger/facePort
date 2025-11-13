.class public Lcom/samsung/android/settings/privacy/PrivacyDashboardChartPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final PRIVACY_DASHBOARD_PKG:Ljava/lang/String; = "com.samsung.android.privacydashboard"


# instance fields
.field private mPreference:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardChartPreferenceController;->mPreference:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.privacydashboard"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPause()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardChartPreferenceController;->mPreference:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardChartPreferenceController;->mPreference:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mUpdateFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->updateAppIcons()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;-><init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardChartPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f142661

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string p0, "com.samsung.android.intent.action.REVIEW_PERMISSION_USAGE"

    iput-object p0, v0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const-string p0, "com.samsung.android.privacydashboard"

    iput-object p0, v0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    const-string p0, "com.samsung.android.privacydashboard.views.MainActivity"

    iput-object p0, v0, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
