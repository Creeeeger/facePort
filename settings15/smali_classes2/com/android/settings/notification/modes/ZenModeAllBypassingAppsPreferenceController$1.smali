.class public final Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;

    return-void
.end method


# virtual methods
.method public final onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public final onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public final onLoadEntriesCompleted()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ENABLED_NOT_QUIET:Lcom/android/settingslib/applications/ApplicationsState$12;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$15;

    :goto_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$1;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)V

    :goto_1
    return-void
.end method

.method public final onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController;->updateAppList(Ljava/util/List;)V

    return-void
.end method

.method public final onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
