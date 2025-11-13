.class public final Lcom/samsung/android/settings/eternal/provider/items/AccountsItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 7

    const-string p0, "AccountsItem"

    const-string/jumbo p2, "unknown key : "

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v1, p3}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "/Settings/Accounts/SamsungAccountID"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    const-string v3, "/Settings/Accounts/GoogleCoreControl"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "/Settings/Accounts/AutoSyncData"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_3
    const-string v3, "/Settings/Accounts/GoogleAccountID"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "google_core_control"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    invoke-virtual {v1, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_4

    :cond_4
    const-string p1, "com.osp.app.signin"

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_6

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_5
    const-string p1, "com.google"

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_6

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2a7b045d -> :sswitch_3
        0x25b73e60 -> :sswitch_2
        0x73231199 -> :sswitch_1
        0x7ccba1da -> :sswitch_0
    .end sparse-switch
.end method

.method public final isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p1}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {p3, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p4, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object p4, p3, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "/Settings/Accounts/AutoSyncData"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "/Settings/Accounts/GoogleCoreControl"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "google_core_control"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0
.end method
