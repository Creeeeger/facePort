.class Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
.super Landroid/view/IRotationWatcher$Stub;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProposedRotationListenerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;
    }
.end annotation


# instance fields
.field blacklist mLastRotation:I

.field private volatile blacklist mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

.field private final blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onRotationChanged$0(Ljava/util/function/IntConsumer;I)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method blacklist add(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)Z
    .locals 4

    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iget-object v3, v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-direct {v3, p1, p2}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-array v2, v2, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iput-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    return v1
.end method

.method public blacklist onRotationChanged(I)V
    .locals 8

    iput p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mLastRotation:I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, v4, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/IntConsumer;

    if-eqz v5, :cond_0

    iget-object v6, v4, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5, p1}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_2
    :goto_1
    return-void
.end method

.method blacklist remove(Ljava/util/function/IntConsumer;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iget-object v2, v2, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-array v1, v1, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iput-object v1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iget-object v1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method
