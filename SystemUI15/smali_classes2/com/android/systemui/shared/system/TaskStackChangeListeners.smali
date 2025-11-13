.class public final Lcom/android/systemui/shared/system/TaskStackChangeListeners;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# instance fields
.field public final mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;-><init>(Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;-><init>(Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    return-void
.end method

.method public static getTestInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;
    .locals 3

    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$TestSyncHandler;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$TestSyncHandler;-><init>()V

    new-instance v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;-><init>(Landroid/os/Handler;)V

    iget-object v2, v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    iput-object v2, v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$TestSyncHandler;->mCb:Landroid/os/Handler$Callback;

    return-object v1
.end method


# virtual methods
.method public getListenerImpl()Landroid/app/TaskStackListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    return-object p0
.end method

.method public final registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->addListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->removeListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
