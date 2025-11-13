.class public final Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;
.super Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final KEY_NAME_ALLOW_LIST:[Ljava/lang/String;


# instance fields
.field public final mKeyNameAllowList:Ljava/util/ArrayList;

.field public final mKeyNameViolationItems:Ljava/util/List;

.field public final mSummaryItemList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "/Accessibility/UniversalSwitch/ActionWithASwitch"

    const-string v5, "/Settings/LockScreen/FaceWidget"

    const-string v0, "/Accessibility/Default/SoundBalace"

    const-string v1, "/Accessibility/Default/HighContrast"

    const-string v2, "/Accessibility/UniversalSwitch/ScanPause"

    const-string v3, "/Accessibility/Default/MonoAudioDb"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->KEY_NAME_ALLOW_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/data/EpisodeHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/data/EpisodeHolder;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mKeyNameViolationItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->KEY_NAME_ALLOW_LIST:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mKeyNameAllowList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mSummaryItemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getValidationFileName()Ljava/lang/String;
    .locals 0

    const-string p0, "backupKeyNameValidation.json"

    return-object p0
.end method

.method public final onValidationFinish()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/eternal/constant/EternalRune;->isTestMode()V

    return-void
.end method

.method public final removeValidationFile()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->removeValidationFile()V

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "/BackupValidation/backupSummary.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method public final validateSceneList(Ljava/util/Map$Entry;Ljava/util/List;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/eternal/constant/EternalRune;->isTestMode()V

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mKeyNameViolationItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "validateBackupKeyName() ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] DTD size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / backupSceneList size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Eternal/KeyNameValidationTask"

    invoke-static {v4, v2, v5}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mSummaryItemList:Ljava/util/List;

    new-instance v6, Lcom/samsung/android/settings/eternal/validate/BackupSummaryItem;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object p1, v6, Lcom/samsung/android/settings/eternal/validate/BackupSummaryItem;->mUID:Ljava/lang/String;

    iput v3, v6, Lcom/samsung/android/settings/eternal/validate/BackupSummaryItem;->mDTDSize:I

    iput v2, v6, Lcom/samsung/android/settings/eternal/validate/BackupSummaryItem;->mBackupItemSize:I

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "NOTHING_BACKUP"

    const-string/jumbo v2, "null"

    if-nez p2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mKeyNameViolationItems:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;

    invoke-direct {v4, v1, p1, v2}, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lib/episode/Scene;

    if-nez v1, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    iget-object v4, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/eternal/validate/BackupDataType;

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mKeyNameAllowList:Ljava/util/ArrayList;

    iget-object v7, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    iget-object v3, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    if-nez v4, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mKeyNameViolationItems:Ljava/util/List;

    new-instance v6, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;

    iget-object v7, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v7, v6, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;->mKey:Ljava/lang/String;

    const-string v7, "UNDEFINED_KEY"

    iput-object v7, v6, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;->mResultType:Ljava/lang/String;

    iget-object v7, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-nez v7, :cond_7

    move-object v7, v2

    goto :goto_6

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    iput-object v7, v6, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;->mAttributeNames:Ljava/lang/String;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "validateBackupKeyName() UNDEFINED_KEY - "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    iget-object v6, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-nez v6, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mKeyNameViolationItems:Ljava/util/List;

    new-instance v6, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;

    iget-object v7, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-direct {v6, v7, p1, v2}, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    iget-object v3, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_a
    iget-object v4, v4, Lcom/samsung/android/settings/eternal/validate/BackupDataType;->mKeyValue:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "compressedEternalItems"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_8

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;->mKeyNameViolationItems:Ljava/util/List;

    new-instance v6, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;

    iget-object v8, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v9, "UNDEFINED_ATTRIBUTE"

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "validateBackupKeyName() UNDEFINED_ATTRIBUTE - "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    :goto_8
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    :goto_9
    if-eqz v1, :cond_4

    iget-object v3, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/eternal/constant/EternalRune;->isTestMode()V

    return-object v0
.end method
