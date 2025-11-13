.class public Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
.super Ljava/lang/Object;
.source "BackupMetaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupMetaManager"

.field private static mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;


# instance fields
.field private backupMeta:Landroid/content/SharedPreferences;

.field private cancelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->cancelMap:Ljava/util/Map;

    const-string v0, "BackupMeta"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    .line 28
    :cond_0
    sget-object p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public setCanceled(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceKey",
            "isCanceled"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->cancelMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLastBackupTime(Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceKey",
            "time"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] setLastBackupTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "LAST_BACKUP_TIME"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
