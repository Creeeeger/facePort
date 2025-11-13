.class public Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;
.super Landroid/app/IntentService;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mapUIKeysToContractKey:Ljava/util/Map;


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mContext:Landroid/content/Context;

.field public mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mGalaxyAIStatus:Z

.field public mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mRestrictionsBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;

    new-instance v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mapUIKeysToContractKey:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "KnoxRestrictionsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mGalaxyAIStatus:Z

    return-void
.end method

.method public static buildScene(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 3

    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "value"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final disableSuggestion(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    const-class v1, Lcom/android/settings/Settings$KnoxRestrictionsActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    const-string v2, "disable_suggestion"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v2, "value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)V

    :goto_0
    return-void
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    const-string p0, "KnoxRestrictionsService"

    const-string/jumbo v0, "onCreate()"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const-string p0, "KnoxRestrictionsService"

    const-string/jumbo v0, "onDestroy()"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "KnoxRestrictionsService"

    const-string/jumbo v2, "onHandleIntent()"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "galaxyai"

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mGalaxyAIStatus:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mGalaxyAIStatus is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mGalaxyAIStatus:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Start Managed Configuration"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->preventForceStopSetting(Z)V

    iget-object v4, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getApplicationRestrictions(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    const-string v5, "com.android.systemui.indexsearch.SystemUIIndexProvider"

    const-string v6, "com.android.systemui"

    const-string v7, "com.samsung.android.settings.intelligence.search.devicesearch.DeviceSearchIndexProvider"

    const-string v8, "com.android.settings.intelligence"

    if-nez v4, :cond_10

    iget-object v2, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->disableSuggestion(Landroid/os/Bundle;)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)V

    iget-boolean v2, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mGalaxyAIStatus:Z

    if-nez v2, :cond_f

    iget-object v2, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mapUIKeysToContractKey:Ljava/util/Map;

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    const-string v4, " "

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_3

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/os/Bundle;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    const-string v3, "hide"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "grayout"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v15, v14}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->buildScene(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "spen_detachment_sound"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const-string v4, "SETTINGS_USE_TOOLBAR"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SETTINGS_PHYSICAL_KEYBOARD_TOOLBAR"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "manual"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v15, v13}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->buildScene(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "sceneList"

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0, v11}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const-string/jumbo v2, "phone"

    :goto_3
    const-string v0, "deviceType"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OSVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "Settings"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "AirCommand"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "HBD"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v3, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.intent.action.SCENE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v5, "Eternal/KnoxEternalManager"

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "content://"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "get_uid"

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v9, v10, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string/jumbo v9, "uid"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSupplierMap[uid-uri] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_9

    :cond_9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    throw v7

    :cond_b
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :goto_5
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v10, 0x0

    :goto_8
    if-nez v10, :cond_e

    goto :goto_6

    :cond_e
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "set_value_all"

    sget-object v12, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    const-string v12, "2.0"

    invoke-virtual {v9, v0, v11, v12, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "set_value_all - Exception Uid = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_f
    :goto_9
    iget-object v0, v1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->disableSuggestion(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)V

    goto :goto_a

    :goto_b
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->preventForceStopSetting(Z)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "KnoxRestrictionsService"

    const-string/jumbo v1, "onStartCommand()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    invoke-virtual {p0}, Landroid/app/IntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public final preventForceStopSetting(Z)V
    .locals 3

    const-string v0, "KnoxRestrictionsService"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const-string p1, "addPackagesToForceStopBlackList"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "removePackagesFromForceStopBlackList"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "failed to preventForceStopSetting "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final setComponentEnabledSetting(Landroid/content/ComponentName;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v2, p2, :cond_1

    if-nez v0, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    :goto_1
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "failed to setComponentEnabledSetting "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxRestrictionsService"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
