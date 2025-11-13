.class public Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;
.super Ljava/lang/Object;
.source "DefaultValueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultValueManager"


# instance fields
.field private mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

.field private mSystemDefaultHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    .line 57
    new-instance v0, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;
    .locals 1

    .line 52
    invoke-static {}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    move-result-object v0

    return-object v0
.end method

.method private isDefaultValue(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 142
    invoke-virtual {p2}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 151
    invoke-virtual {p2}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 153
    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    return p0

    .line 157
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    return p0

    :catch_0
    move-exception p1

    .line 163
    sget-object p2, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDefaultValue() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_4
    const/4 p0, 0x1

    :cond_5
    :goto_0
    return p0
.end method

.method private migrationOldDefaultValue(Landroid/content/Context;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->hasOldDefaultXmlFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    const-string v1, "migrationOldDefaultValue"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->getSettingsDefaultValue(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "migrationOldDefaultValue sceneList is null"

    .line 104
    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->updateDefaultJSONFile(Ljava/util/List;)Z

    move-result p1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrationOldDefaultValue() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "success"

    goto :goto_0

    :cond_2
    const-string p1, "fail"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->deleteOldDefaultXmlFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public fetchCreateDefaultValues(Landroid/content/Context;)V
    .locals 5

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->migrationOldDefaultValue(Landroid/content/Context;)V

    const-string v0, "content://com.samsung.android.settings.eternal"

    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    const-string v3, "Settings"

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->getKeyListMapOfDTD(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    move-object v4, v2

    check-cast v4, Ljava/io/Serializable;

    :goto_1
    const-string v2, "keyList"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "get_value"

    sget-object v3, Lcom/samsung/android/lib/episode/EpisodeConstant;->EPISODE_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    .line 73
    sget-object p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    const-string p1, "fetchCreateDefaultValues() settingsBackupResult is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_2
    const-class v0, Lcom/samsung/android/lib/episode/Scene;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "sceneList"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    .line 80
    sget-object p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    const-string p1, "fetchCreateDefaultValues() backupSceneList is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_3
    sget-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchCreateDefaultValues() backupSceneList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->updateDefaultJSONFile(Ljava/util/List;)Z

    move-result p0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCreateDefaultValues() updateDefaultJSONFile : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_4

    const-string p0, "success"

    goto :goto_2

    :cond_4
    const-string p0, "fail"

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 88
    sget-object p1, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCreateDefaultValues() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public fetchUpdateDefaultValues(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->migrationOldDefaultValue(Landroid/content/Context;)V

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->updateDefaultJSONFile(Ljava/util/List;)Z

    return-void
.end method

.method public isSystemDefault(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mSystemDefaultHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->getDefaultSceneHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mSystemDefaultHashMap:Ljava/util/HashMap;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mSystemDefaultHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 121
    sget-object p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    const-string p1, "isSystemDefault() default hashmap is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-nez p1, :cond_2

    .line 126
    sget-object p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    const-string p1, "isSystemDefault() current scene is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 129
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/episode/Scene;

    if-nez v0, :cond_3

    .line 131
    sget-object p0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    const-string p1, "isSystemDefault() default scene is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 134
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->isDefaultValue(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z

    move-result p0

    .line 135
    sget-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemDefault() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {v0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
