.class public final Lcom/android/settingslib/media/ConnectionRecordManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settingslib/media/ConnectionRecordManager;

.field public static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field public mLastSelectedDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;
    .locals 2

    sget-object v0, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstance:Lcom/android/settingslib/media/ConnectionRecordManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settingslib/media/ConnectionRecordManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstance:Lcom/android/settingslib/media/ConnectionRecordManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstance:Lcom/android/settingslib/media/ConnectionRecordManager;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
