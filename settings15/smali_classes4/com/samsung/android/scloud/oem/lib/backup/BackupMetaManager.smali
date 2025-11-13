.class public final Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;


# instance fields
.field public backupMeta:Landroid/content/SharedPreferences;

.field public cancelMap:Ljava/util/Map;


# direct methods
.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
    .locals 4

    const-class v0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->cancelMap:Ljava/util/Map;

    const-string v2, "BackupMeta"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    sput-object v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final setCanceled(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->cancelMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
