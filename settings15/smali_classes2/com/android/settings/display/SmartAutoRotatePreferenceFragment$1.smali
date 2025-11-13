.class public final Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p1}, Lcom/android/settings/display/DeviceStateAutoRotationHelper;->createPreferenceControllers(Landroid/content/Context;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Itr;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    check-cast v0, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateRawDataToIndex(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
