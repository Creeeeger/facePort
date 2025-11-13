.class public Lcom/android/settings/notification/modes/ZenModeCallsFragment;
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
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v3, "zen_mode_settings_category_calls"

    const/4 v4, 0x0

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x72e

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700e3

    return p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->onResume()V

    const-class v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;

    iget-boolean v0, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->updateChannelCounts$2()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->updateSummaries$1()V

    return-void
.end method
