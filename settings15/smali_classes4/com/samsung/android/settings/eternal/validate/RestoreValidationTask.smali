.class public final Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mComparator:Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask$1;

.field public mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

.field public mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask$1;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mComparator:Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask$1;

    return-void
.end method

.method public static decompressBundleIfNeeded(Lcom/samsung/android/lib/episode/Scene;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v2, "/GeneralInfo/PackageList"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "value"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/lib/episode/EpisodeUtils;->decompressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    const-string v1, "compressedEternalItems"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertStringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lib/episode/EpisodeUtils;->decompressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static generateBaseJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ValueOrAttrName"

    const-string/jumbo v2, "value"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object p0, v3

    :cond_0
    :try_start_1
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "Source"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v1, "null"

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "Target"

    if-nez p2, :cond_2

    move-object p2, v1

    :cond_2
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "Result"

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "Reason"

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "generateBaseJSON() failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Eternal/ValidationTask"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final confirmValidationResult(Lorg/json/JSONObject;Ljava/lang/String;ZZLcom/samsung/android/lib/episode/Scene;)V
    .locals 6

    const-string v0, "Eternal/ValidationTask"

    if-nez p1, :cond_0

    const-string/jumbo p0, "validateScene() - value node is null"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mRestoreResultMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iget-object v1, p5, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p0, :cond_2

    :cond_1
    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/lib/episode/SceneResult;

    iget-object v5, v4, Lcom/samsung/android/lib/episode/SceneResult;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p5, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    sget-object v1, Lcom/samsung/android/settings/eternal/validate/ResultCode;->SKIP:Lcom/samsung/android/settings/eternal/validate/ResultCode;

    const-string v3, ""

    if-eqz p0, :cond_4

    const-string v5, "dtd_version"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "GeneralInfo"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_1
    move-object p0, v1

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p5}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz v4, :cond_7

    iget-object p0, v4, Lcom/samsung/android/lib/episode/SceneResult;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p2, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_SKIP:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    if-ne p0, p2, :cond_7

    iget-byte p0, p5, Lcom/samsung/android/lib/episode/Scene;->mDefaultType:B

    const/4 p2, 0x2

    if-ne p0, p2, :cond_6

    const-string p0, "DEFAULT VALUE(S)"

    :goto_2
    move-object v3, p0

    goto :goto_1

    :cond_6
    const-string p0, "DEFAULT VALUE(A)"

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    sget-object p0, Lcom/samsung/android/settings/eternal/validate/ResultCode;->PASS:Lcom/samsung/android/settings/eternal/validate/ResultCode;

    goto :goto_4

    :cond_8
    if-eqz p4, :cond_9

    sget-object p0, Lcom/samsung/android/settings/eternal/validate/ResultCode;->CONDITIONAL_PASS:Lcom/samsung/android/settings/eternal/validate/ResultCode;

    goto :goto_4

    :cond_9
    sget-object p0, Lcom/samsung/android/settings/eternal/validate/ResultCode;->FAIL:Lcom/samsung/android/settings/eternal/validate/ResultCode;

    if-eqz v4, :cond_b

    iget-object p2, v4, Lcom/samsung/android/lib/episode/SceneResult;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p3, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    if-ne p2, p3, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v4, Lcom/samsung/android/lib/episode/SceneResult;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p2, v4, Lcom/samsung/android/lib/episode/SceneResult;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->getErrorMessageReason()Ljava/util/List;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    const-string v3, "REFER TO LOG"

    :cond_c
    :goto_4
    invoke-virtual {p5}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result p2

    if-eqz p2, :cond_e

    if-eq p0, v1, :cond_e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "FORCE RESTORE"

    :goto_5
    move-object v3, p2

    goto :goto_6

    :cond_d
    const-string p2, "\nFORCE RESTORE"

    invoke-static {v3, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_e
    :goto_6
    :try_start_0
    const-string p2, "Result"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "Reason"

    invoke-virtual {p1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "confirmValidationResult() failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    const-string v0, "ValidationTask START"

    const-string v1, "Eternal/ValidationTask"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mStartTime:J

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object p1, p1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mBaseSceneMap:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object v0, p1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mBaseSceneMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mBaseSourceInfo:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->generateSourceInfo(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, p1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mCompareSceneMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mCompareSourceInfo:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->generateSourceInfo(Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->fetchValidationInternal()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->writeResultToFile(Ljava/util/HashMap;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->loggingTaskResult(Z)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ValidationTask "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->loggingTaskResult(Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    return-object p0
.end method

.method public final fetchValidationInternal()Ljava/util/HashMap;
    .locals 23

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v7, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mBaseSceneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v7, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mBaseSceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, v7, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object v1, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mCompareSceneMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    const-string v13, "Eternal/ValidationTask"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchValidationInternal() - uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " baseSceneList is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/samsung/android/lib/episode/Scene;

    if-nez v15, :cond_1

    const-string v0, "fetchValidationInternal() baseScene is null"

    invoke-static {v13, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v15}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->decompressBundleIfNeeded(Lcom/samsung/android/lib/episode/Scene;)V

    iget-object v0, v15, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v12, :cond_3

    :cond_2
    move-object v3, v1

    goto :goto_2

    :cond_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lib/episode/Scene;

    iget-object v4, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->decompressBundleIfNeeded(Lcom/samsung/android/lib/episode/Scene;)V

    :cond_5
    iget-object v0, v15, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    :goto_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v4

    :try_start_1
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v17, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    new-instance v4, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask$2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v7, v16

    :goto_4
    move-object/from16 v16, v9

    goto/16 :goto_d

    :cond_7
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const/16 v19, 0x0

    if-eqz v18, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_8

    const-string/jumbo v21, "null"

    :goto_7
    move-object/from16 v22, v0

    move-object/from16 v0, v21

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_7

    :goto_8
    if-nez v4, :cond_9

    if-nez v0, :cond_a

    :cond_9
    if-eqz v4, :cond_b

    if-nez v0, :cond_b

    :cond_a
    :goto_9
    move/from16 v5, v19

    goto :goto_a

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    goto :goto_9

    :cond_c
    :goto_a
    invoke-static {v2, v4, v0}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->generateBaseJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v18

    move-object/from16 v2, v20

    move-object/from16 v0, v22

    goto :goto_6

    :cond_d
    move-object/from16 v20, v2

    invoke-virtual {v15}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result v0

    if-nez v0, :cond_e

    if-nez v5, :cond_e

    invoke-virtual {v7, v10, v15, v3}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->requestValidationToAppProvider(Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z

    move-result v0

    goto :goto_b

    :cond_e
    move/from16 v0, v19

    :goto_b
    const-string/jumbo v1, "value"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, p0

    move-object/from16 v18, v20

    move-object v3, v10

    move-object/from16 v7, v16

    move v4, v5

    move-object/from16 v16, v9

    move-object/from16 v9, v17

    move v5, v0

    move-object v0, v6

    move-object v6, v15

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->confirmValidationResult(Lorg/json/JSONObject;Ljava/lang/String;ZZLcom/samsung/android/lib/episode/Scene;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_d

    :cond_f
    iget-object v0, v15, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_e

    :catch_2
    move-exception v0

    move-object v7, v4

    goto/16 :goto_4

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "validateScene() failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    new-instance v0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationResultItem;

    iget-object v1, v15, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationResultItem;->mKey:Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationResultItem;->mResultJSON:Lorg/json/JSONObject;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p0

    move-object/from16 v9, v16

    goto/16 :goto_1

    :cond_10
    move-object/from16 v16, v9

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    goto/16 :goto_0

    :cond_11
    return-object v8
.end method

.method public final loggingTaskResult(Z)V
    .locals 4

    const-string v0, "ValidationTask END. Validation Result = "

    const-string v1, " / took "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Eternal/ValidationTask"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final requestValidationToAppProvider(Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 5

    const-string/jumbo v0, "requestValidationToAppProvider ["

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object v2, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "Eternal/ValidationTask"

    if-nez v2, :cond_0

    const-string/jumbo p0, "requestValidationToAppProvider() context is null"

    invoke-static {v4, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mSupplierMap:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object v1, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "requestValidationToAppProvider() SupplierInfo of uid - "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object v1, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mUri:Landroid/net/Uri;

    if-nez p1, :cond_3

    const-string/jumbo p0, "requestValidationToAppProvider() uri is null"

    invoke-static {v4, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p3, "sceneList"

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mRestoreValidationSource:Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] contentProviderClient is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_4
    const-string/jumbo p3, "validate"

    sget-object v0, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    const-string v0, "2.0"

    invoke-virtual {p0, p3, v0, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string/jumbo p3, "value"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return p2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_0
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_1
    if-eqz p0, :cond_6

    :try_start_3
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "requestValidationToAppProvider() - ["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_4
    const-string/jumbo p0, "requestValidationToAppProvider() supplierMap is null"

    invoke-static {v4, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return v3
.end method

.method public final writeResultToFile(Ljava/util/HashMap;)V
    .locals 11

    const-string v0, "AES"

    const-string v1, "Eternal/ValidationTask"

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v5, "GeneralInfo"

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;->mComparator:Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask$1;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/eternal/validate/RestoreValidationResultItem;

    iget-object v10, v10, Lcom/samsung/android/settings/eternal/validate/RestoreValidationResultItem;->mResultJSON:Lorg/json/JSONObject;

    if-eqz v10, :cond_1

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, "Category"

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "generateResultJSONAfterSortingByKey() failed : "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/log/eternal/"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_7

    const-string/jumbo p0, "writeResultToFile() Failed to create directory"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/data/log/eternal/eternalValidation_"

    const-string v3, ".log"

    invoke-static {p1, p0, v3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_1
    new-instance p1, Ljava/io/FileWriter;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v5, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v4, p0, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "writeResultToFile() failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
