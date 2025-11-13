.class public Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mAppBridge:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mPermissionState:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

.field public mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field public volatile mUncommittedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->createPermissionState(ILjava/lang/String;)Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;->mPermissionGranted:Z

    if-eqz p1, :cond_0

    const p1, 0x7f1403a4

    goto :goto_0

    :cond_0
    const p1, 0x7f1403a5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7b7

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mAppBridge:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-eqz p1, :cond_1

    const-string v0, "uncommitted_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    const-class p1, Lcom/android/settings/Settings$LongBackgroundTasksAppActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    :cond_1
    const p1, 0x7f1700cf

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "long_background_tasks_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final onPause()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mPermissionState:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mPermissionState:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;->mPermissionGranted:Z

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    const-string v3, "android:run_user_initiated_jobs"

    invoke-virtual {v2, v3, v1, v0}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v2

    const/16 v3, 0x70c

    const/16 v4, 0x7b7

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    const-class p1, Lcom/android/settings/Settings$LongBackgroundTasksAppActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->refreshUi()Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const-string v0, "uncommitted_state"

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final refreshUi()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mAppBridge:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->createPermissionState(ILjava/lang/String;)Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mPermissionState:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean v0, v0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;->mPermissionRequested:Z

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mUncommittedState:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->mPermissionState:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;->mPermissionGranted:Z

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
