.class public final Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final EXCLUSION_PACKAGE_LIST:Ljava/util/List;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mContext:Landroid/content/Context;

.field public final mInfoByPackage:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

.field public final mToAgentPrefix:Ljava/lang/String;

.field public final mToDevicePrefix:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.sec.android.app.SecSetupWizard"

    const-string v1, "com.sec.android.easyMover"

    const-string v2, "com.android.settings"

    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->EXCLUSION_PACKAGE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    const-string p3, "CameraCutout"

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p3, "FullScreenApps"

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#ToAgent: "

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mToAgentPrefix:Ljava/lang/String;

    const-string v0, "#ToDevice: "

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mToDevicePrefix:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mUserId:I

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mInfoByPackage:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LARGE_SCREEN:Z

    return p0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->getFullScreenAppsSupportMode()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isValid(I)Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final putToAgentFromDevice(Lcom/samsung/android/lib/episode/Scene$Builder;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mToAgentPrefix:Ljava/lang/String;

    const-string v1, "PackageFeatureBackupAndRestore"

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SourceInfo is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Unavailable."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Started."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mContext:Landroid/content/Context;

    const-class v6, Landroid/content/pm/LauncherApps;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mInfoByPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/SourceInfo;->getPackageIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->EXCLUSION_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    iget-object v8, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mInfoByPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    if-nez v8, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mUserId:I

    invoke-interface {v8, v7, v9}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result v7

    goto :goto_1

    :pswitch_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mUserId:I

    invoke-interface {v8, v9, v7}, Landroid/app/IActivityTaskManager;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v7

    :goto_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->isValid(I)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_5
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "index"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "value"

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "data="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final putToDeviceFromAgent(Lcom/samsung/android/lib/episode/Scene;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mToDevicePrefix:Ljava/lang/String;

    const-string v1, "PackageFeatureBackupAndRestore"

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SourceInfo is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Unavailable."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Started."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mContext:Landroid/content/Context;

    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mInfoByPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "index"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_8

    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/lib/episode/SourceInfo;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mInfoByPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherActivityInfo;

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->EXCLUSION_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->isValid(I)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    iget v8, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    iget-object v8, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mInfoByPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mUserId:I

    invoke-interface {v8, v6, v9, v7}, Landroid/app/IActivityTaskManager;->setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V

    goto :goto_2

    :pswitch_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$CameraCutoutBackupAndRestore;->mUserId:I

    invoke-interface {v8, v9, v6, v7}, Landroid/app/IActivityTaskManager;->setCutoutPolicy(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    return-void

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
