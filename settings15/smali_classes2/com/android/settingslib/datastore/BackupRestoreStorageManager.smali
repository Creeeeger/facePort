.class public final Lcom/android/settingslib/datastore/BackupRestoreStorageManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$Companion;

.field public static volatile instance:Lcom/android/settingslib/datastore/BackupRestoreStorageManager;


# instance fields
.field public final application:Landroid/app/Application;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->Companion:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->application:Landroid/app/Application;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/settingslib/datastore/BackupRestoreStorageManager;
    .locals 3

    sget-object v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->Companion:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$Companion;

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->instance:Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->instance:Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Application;

    invoke-direct {v1, p0}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->instance:Lcom/android/settingslib/datastore/BackupRestoreStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    sget-object v1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->instance:Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object v1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static synthetic getStorageWrappers$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore$annotations()V
    .locals 0

    return-void
.end method
