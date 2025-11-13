.class public Landroid/window/SplashScreen$SplashScreenManagerGlobal;
.super Ljava/lang/Object;
.source "SplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenManagerGlobal"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/SplashScreen$SplashScreenManagerGlobal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mGlobalLock:Ljava/lang/Object;

.field private final blacklist mImpls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/SplashScreen$SplashScreenImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->addImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->removeImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/window/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal$1;

    invoke-direct {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal$1;-><init>()V

    sput-object v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mImpls:Ljava/util/ArrayList;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityThread;->registerSplashScreenManager(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/SplashScreen$SplashScreenManagerGlobal-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;-><init>()V

    return-void
.end method

.method private blacklist addImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V
    .locals 2

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mImpls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist dispatchOnExitAnimation(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 5

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->findImpl(Landroid/os/IBinder;)Landroid/window/SplashScreen$SplashScreenImpl;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {v1}, Landroid/window/SplashScreen$SplashScreenImpl;->-$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot dispatch onExitAnimation to listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {v1}, Landroid/window/SplashScreen$SplashScreenImpl;->-$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/window/SplashScreen$OnExitAnimationListener;->onSplashScreenExit(Landroid/window/SplashScreenView;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist findImpl(Landroid/os/IBinder;)Landroid/window/SplashScreen$SplashScreenImpl;
    .locals 4

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mImpls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SplashScreen$SplashScreenImpl;

    invoke-static {v2}, Landroid/window/SplashScreen$SplashScreenImpl;->-$$Nest$fgetmActivityToken(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance()Landroid/window/SplashScreen$SplashScreenManagerGlobal;
    .locals 1

    sget-object v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    return-object v0
.end method

.method private blacklist removeImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V
    .locals 2

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mImpls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist containsExitListener(Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->findImpl(Landroid/os/IBinder;)Landroid/window/SplashScreen$SplashScreenImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/window/SplashScreen$SplashScreenImpl;->-$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist handOverSplashScreenView(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->dispatchOnExitAnimation(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public blacklist tokenDestroyed(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->findImpl(Landroid/os/IBinder;)Landroid/window/SplashScreen$SplashScreenImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->removeImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
