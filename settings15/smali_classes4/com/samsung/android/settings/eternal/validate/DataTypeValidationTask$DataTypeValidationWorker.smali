.class public final Lcom/samsung/android/settings/eternal/validate/DataTypeValidationTask$DataTypeValidationWorker;
.super Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDataTypeViolationItems:Ljava/util/List;


# direct methods
.method public static getValidationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "validateContentType() key = "

    const-string v1, " / type = "

    const-string v2, " / value = "

    invoke-static {v0, p0, v1, p1, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getValidationFileName()Ljava/lang/String;
    .locals 0

    const-string p0, "backupTypeValidation.json"

    return-object p0
.end method

.method public final validateSceneList(Ljava/util/Map$Entry;Ljava/util/List;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationTask$DataTypeValidationWorker;->mDataTypeViolationItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz p2, :cond_13

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/lib/episode/Scene;

    iget-object v6, v5, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/eternal/validate/BackupDataType;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "Eternal/TypeValidationTask"

    iget-object v8, v5, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-nez v8, :cond_4

    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_4
    iget-object v6, v6, Lcom/samsung/android/settings/eternal/validate/BackupDataType;->mKeyValue:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v13, "null"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_1

    :cond_6
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x42

    const/4 v15, 0x1

    const/4 v9, 0x3

    if-eq v13, v14, :cond_c

    const/16 v14, 0x44

    if-eq v13, v14, :cond_b

    const/16 v14, 0x46

    if-eq v13, v14, :cond_a

    const/16 v14, 0x49

    if-eq v13, v14, :cond_9

    const/16 v14, 0x53

    if-eq v13, v14, :cond_8

    const/16 v14, 0x987

    if-eq v13, v14, :cond_7

    goto :goto_2

    :cond_7
    const-string v13, "LS"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x4

    goto :goto_3

    :cond_8
    const-string v13, "S"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x5

    goto :goto_3

    :cond_9
    const-string v13, "I"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    move v13, v9

    goto :goto_3

    :cond_a
    const-string v13, "F"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x2

    goto :goto_3

    :cond_b
    const-string v13, "D"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    move v13, v15

    goto :goto_3

    :cond_c
    const-string v13, "B"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v13, -0x1

    :goto_3
    if-eqz v13, :cond_11

    if-eq v13, v15, :cond_10

    const/4 v14, 0x2

    if-eq v13, v14, :cond_f

    if-eq v13, v9, :cond_e

    goto/16 :goto_1

    :cond_e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_f
    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    goto/16 :goto_1

    :cond_10
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v13, "0"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "1"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v13, "true"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "false"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v6, v5, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-static {v6, v11, v12}, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationTask$DataTypeValidationWorker;->getValidationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationItem;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iget-object v6, v5, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-static {v6, v11, v12}, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationTask$DataTypeValidationWorker;->getValidationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationItem;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    :goto_4
    if-eqz v9, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/eternal/constant/EternalRune;->isTestMode()V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationTask$DataTypeValidationWorker;->mDataTypeViolationItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_13
    :goto_5
    return-object v1
.end method
