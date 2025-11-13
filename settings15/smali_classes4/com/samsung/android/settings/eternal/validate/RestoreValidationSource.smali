.class public final Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBaseSceneMap:Ljava/util/HashMap;

.field public mBaseSourceInfo:Ljava/util/HashMap;

.field public mCompareSceneMap:Ljava/util/HashMap;

.field public mCompareSourceInfo:Ljava/util/HashMap;

.field public mContext:Landroid/content/Context;

.field public mRestoreResultMap:Ljava/util/HashMap;

.field public mSupplierMap:Ljava/util/HashMap;


# direct methods
.method public static generateSourceInfo(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 5

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/episode/SourceInfo;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "/"

    const-string v4, "/#EpisodeProviderInfo"

    invoke-static {v3, v1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v4, " "

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    iget-object v1, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    const-string/jumbo v4, "version"

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const-string v2, "dtd_version"

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
