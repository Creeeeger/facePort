.class public final Lcom/android/settings/notification/modes/ZenModesListFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    sget-object p0, Lcom/android/settings/notification/modes/ZenModesListFragment;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    sget-object p0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/modes/ZenModesBackend;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    :cond_0
    sget-object p0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    new-instance v0, Lcom/android/settings/notification/modes/ZenModesListPreferenceController;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/android/settings/notification/modes/ZenModesListPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance v1, Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const-string p1, "zen_modes_list"

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
