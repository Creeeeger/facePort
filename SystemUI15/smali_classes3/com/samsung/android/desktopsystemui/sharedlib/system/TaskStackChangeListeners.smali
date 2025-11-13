.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final INSTANCE:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

.field private static final TAG:Ljava/lang/String; = "TaskStackChangeListeners"


# instance fields
.field private final mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->INSTANCE:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->INSTANCE:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

    return-object v0
.end method


# virtual methods
.method public registerTaskStackListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->addListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterTaskStackListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->removeListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
