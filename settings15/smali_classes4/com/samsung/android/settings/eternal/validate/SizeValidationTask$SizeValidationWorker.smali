.class public final Lcom/samsung/android/settings/eternal/validate/SizeValidationTask$SizeValidationWorker;
.super Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSizeViolationItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/data/EpisodeHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/data/EpisodeHolder;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/validate/SizeValidationTask$SizeValidationWorker;->mSizeViolationItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getValidationFileName()Ljava/lang/String;
    .locals 0

    const-string p0, "backupSizeValidation.json"

    return-object p0
.end method

.method public final validateSceneList(Ljava/util/Map$Entry;Ljava/util/List;)Ljava/util/List;
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/validate/SizeValidationTask$SizeValidationWorker;->mSizeViolationItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/lib/episode/Scene;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object v1, p2, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    const/16 v1, 0x3e8

    if-le v3, v1, :cond_6

    sget-object v1, Lcom/samsung/android/settings/eternal/policy/PolicyManager$LazyHolder;->sInstance:Lcom/samsung/android/settings/eternal/policy/PolicyManager;

    iget-object v4, p2, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mBackupPolicy:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    iget-object v1, v1, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;->mBackupSizeLimitAllowItems:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "validateSceneSize() key = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / isAllow = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Eternal/SizeValidationTask"

    invoke-static {v4, v3}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_6

    new-instance v0, Lcom/samsung/android/settings/eternal/validate/SizeValidationItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p2, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/eternal/constant/EternalRune;->isTestMode()V

    goto/16 :goto_0

    :cond_7
    return-object p0
.end method
