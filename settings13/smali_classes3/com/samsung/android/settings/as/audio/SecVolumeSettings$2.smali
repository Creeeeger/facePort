.class Lcom/samsung/android/settings/as/audio/SecVolumeSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 386
    invoke-static {p1, p0, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGtsResourceGroup()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    invoke-super {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getGtsResourceGroup()Ljava/util/HashMap;

    move-result-object p0

    .line 393
    sget-object v0, Lcom/samsung/android/settings/gts/GtsGroup;->GROUP_KEY_SOUNDS_VOLUME:Lcom/samsung/android/settings/gts/GtsGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ring_volume"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media_volume"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_volume"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "system_volume"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bixby_volume"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "waiting_tone_volume"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessibility_volume"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "volume_key_control"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "voip_extra_volume_control"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 379
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 380
    sget p1, Lcom/android/settings/R$xml;->as_volume_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 381
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
