.class public Lcom/android/settings/notification/modes/ZenModeAppsFragment;
.super Lcom/android/settings/notification/modes/ZenModeFragmentBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;

    const-string v2, "zen_mode_apps_priority"

    iget-object v3, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;

    const-string v2, "zen_mode_apps_none"

    iget-object v3, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;

    const-string v2, "zen_mode_apps_all"

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/notification/modes/ZenModeAppsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x8d

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1702a9

    return p0
.end method
