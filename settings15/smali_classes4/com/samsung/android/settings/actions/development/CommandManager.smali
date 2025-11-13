.class public final Lcom/samsung/android/settings/actions/development/CommandManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mLock:Ljava/lang/Object;

.field public static sInstance:Lcom/samsung/android/settings/actions/development/CommandManager;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/actions/development/CommandManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/development/CommandManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/actions/development/CommandManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/actions/development/CommandManager;->sInstance:Lcom/samsung/android/settings/actions/development/CommandManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/actions/development/CommandManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/settings/actions/development/CommandManager;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/settings/actions/development/CommandManager;->sInstance:Lcom/samsung/android/settings/actions/development/CommandManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/actions/development/CommandManager;->sInstance:Lcom/samsung/android/settings/actions/development/CommandManager;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
