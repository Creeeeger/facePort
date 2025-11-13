.class public final Lcom/samsung/android/settings/eternal/EternalRemoteService$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->migrationOldDefaultValue(Landroid/content/Context;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->updateDefaultJSONFile(Ljava/util/List;)Z

    return-void

    :pswitch_0
    sget-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "DefaultValueManager"

    const-string v2, "fetchCreateDefaultValues() updateDefaultJSONFile : "

    const-string v3, "fetchCreateDefaultValues() backupSceneList : "

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->migrationOldDefaultValue(Landroid/content/Context;)V

    const-string v4, "content://com.samsung.android.settings.eternal"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->getKeyListMapOfDTD(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_0
    const-string v8, "Settings"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    :goto_0
    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v6

    check-cast v7, Ljava/io/Serializable;

    :goto_1
    const-string v6, "keyList"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v6, "get_value"

    sget-object v7, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    const-string v7, "2.0"

    invoke-virtual {p0, v4, v6, v7, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "fetchCreateDefaultValues() settingsBackupResult is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    const-class v4, Lcom/samsung/android/lib/episode/Scene;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "sceneList"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "fetchCreateDefaultValues() backupSceneList is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->updateDefaultJSONFile(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "success"

    goto :goto_2

    :cond_4
    const-string p0, "fail"

    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fetchCreateDefaultValues() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
