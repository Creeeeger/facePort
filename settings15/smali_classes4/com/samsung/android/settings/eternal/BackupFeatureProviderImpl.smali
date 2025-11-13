.class public final Lcom/samsung/android/settings/eternal/BackupFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getValue(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/settings/cube/ControlValue;->buildEmptySourceInfo()Lcom/samsung/android/lib/episode/SourceInfo;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getValue() failed to build a scene for : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupFeatureProviderImpl"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p3, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "compressedEternalItems"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/lib/episode/Scene;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    iput-object v3, v0, Lcom/samsung/android/lib/episode/Scene;->mIsDefault:Ljava/lang/Boolean;

    iput-byte v1, v0, Lcom/samsung/android/lib/episode/Scene;->mDefaultType:B

    move-object v3, v0

    :cond_4
    if-nez v3, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setValue() failed to build a scene for : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupFeatureProviderImpl"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object p0

    iget-object p3, p3, Lcom/samsung/android/settings/cube/ControlValue;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-interface {p0, p1, p2, v3, p3}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    return v1
.end method
