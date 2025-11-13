.class public final Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->updateAppList()V

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

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->mAddPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$1;

    invoke-virtual {p1, v1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/ZenModeAddBypassingAppsPreferenceController;->updateAppList(Ljava/util/List;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
