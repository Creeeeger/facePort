.class public abstract Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEpisodeHolder:Lcom/samsung/android/settings/eternal/data/EpisodeHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/data/EpisodeHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->mEpisodeHolder:Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->removeValidationFile()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->mEpisodeHolder:Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/eternal/manager/KeyListManager;

    iget-object v3, v1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSupplierInfo:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/eternal/manager/KeyListManager;-><init>(Ljava/util/HashMap;)V

    new-instance v3, Lcom/samsung/android/settings/eternal/manager/XmlManager;

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/eternal/manager/XmlManager;-><init>(Landroid/content/Context;)V

    iget-object v4, v1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupInfo:Lcom/samsung/android/settings/eternal/data/BackupInfo;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    iget v4, v4, Lcom/samsung/android/settings/eternal/data/BackupInfo;->mRequestFrom:I

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->getDTDItemHashMap(Lcom/samsung/android/settings/eternal/manager/XmlManager;I)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz v2, :cond_5

    iget-object v5, v1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->validateSceneList(Ljava/util/Map$Entry;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/samsung/android/settings/eternal/constant/EternalRune;->isTestMode()V

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/eternal/constant/EternalRune;->isTestMode()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->onValidationFinish()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string p0, "dataTypeValidation"

    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public abstract getValidationFileName()Ljava/lang/String;
.end method

.method public onValidationFinish()V
    .locals 0

    return-void
.end method

.method public removeValidationFile()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->getValidationFileName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/BackupValidation/"

    invoke-static {v1, v0, p0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "Eternal/FileUtils"

    const-string v1, "deleteFile()"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract validateSceneList(Ljava/util/Map$Entry;Ljava/util/List;)Ljava/util/List;
.end method
