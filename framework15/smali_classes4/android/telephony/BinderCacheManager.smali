.class public Landroid/telephony/BinderCacheManager;
.super Ljava/lang/Object;
.source "BinderCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;,
        Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager$BinderInterfaceFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/BinderCacheManager<",
            "TT;>.BinderDeathTracker;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ZM_OVFx7nJDWGK_Q33UT2nrOPlU(Landroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/BinderCacheManager;->lambda$getTracker$0(Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/BinderCacheManager$BinderInterfaceFactory<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/BinderCacheManager;->mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/telephony/BinderCacheManager;->mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private blacklist getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/telephony/BinderCacheManager<",
            "TT;>.BinderDeathTracker;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/BinderCacheManager;->mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/BinderCacheManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    return-object v0
.end method

.method private synthetic blacklist lambda$getTracker$0(Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .locals 4

    move-object v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/telephony/BinderCacheManager;->mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;

    invoke-interface {v2}, Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    if-eqz v2, :cond_1

    new-instance v3, Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    invoke-direct {v3, p0, v2}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;-><init>(Landroid/telephony/BinderCacheManager;Landroid/os/IInterface;)V

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public blacklist getBinder()Landroid/os/IInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1, p1, p2}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->addListener(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public blacklist removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1, p1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->removeListener(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
