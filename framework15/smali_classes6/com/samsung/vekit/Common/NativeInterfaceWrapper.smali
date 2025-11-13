.class public Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
.super Ljava/lang/Object;
.source "NativeInterfaceWrapper.java"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field blacklist nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

.field blacklist stateInterface:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/vekit/Common/State/VEStateInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/State/VEStateInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public blacklist animate()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->animate()V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animate  invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist attach(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist attach(Lcom/samsung/vekit/Common/Object/Element;II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachAnimation invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist attachStroke(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachStroke invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->attachStroke(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist cancelAnimation()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->cancelAnimation()V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAnimation  invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureAnimatedFrame invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist captureLatestFrame(II)Landroid/graphics/Bitmap;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->captureLatestFrame(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureLatestFrame invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist captureStaticDoodle(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->captureStaticDoodle(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureStaticDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist captureSuperHDRFrame(Lcom/samsung/vekit/Common/Object/Element;IIII)Landroid/graphics/Bitmap;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/vekit/External/NativeInterface;->captureSuperHDRFrame(Lcom/samsung/vekit/Common/Object/Element;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureSuperHDRFrame invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist changePortraitVideoKeyFrameList(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->changePortraitVideoKeyFrameList(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist clear(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->clear(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAnimations invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist create(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->create(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist createFramework(Lcom/samsung/vekit/Control/VEController;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->CREATE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFramework invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Native interface is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v2, "Native interface is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1, p1}, Lcom/samsung/vekit/External/NativeInterface;->createFramework(Lcom/samsung/vekit/Control/VEController;)V

    sget-object v1, Lcom/samsung/vekit/Common/State/VEKitState;->CREATE:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-interface {v0, v1}, Lcom/samsung/vekit/Common/State/VEStateInterface;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist deletePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->deletePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist detach(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->detach(Lcom/samsung/vekit/Common/Object/Element;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachAnimation invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist detachStroke(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachStroke invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->detachStroke(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist drawDoodle(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->drawDoodle(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist finalizeFramework()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1}, Lcom/samsung/vekit/External/NativeInterface;->finalizeFramework()V

    sget-object v1, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-interface {v0, v1}, Lcom/samsung/vekit/Common/State/VEStateInterface;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalizeFramework invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist finishDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->finishDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist getCurrentAnalyzedPosition()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->getCurrentAnalyzedPosition()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist getCurrentMediaPosition()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->getCurrentMediaPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMediaPosition invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist getExportPosition()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->getExportPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExportPosition invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrcSupportInfo invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
    .locals 12

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/State/VEKitState;->INITIALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/samsung/vekit/External/NativeInterface;->initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->INITIALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-interface {v0, v2}, Lcom/samsung/vekit/Common/State/VEStateInterface;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, v1, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeFramework invalid state. currentState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist loadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->loadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist loadDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->loadDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist pause()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->pause()V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist pauseAnalyze()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->pauseAnalyze()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist pauseExport()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->pauseExport()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseExport invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist play()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->play()V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist releaseFramework()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseFramework invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1}, Lcom/samsung/vekit/External/NativeInterface;->releaseFramework()V

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-static {v1}, Lcom/samsung/vekit/External/NativeInterface;->releaseInstance(Lcom/samsung/vekit/External/NativeInterface;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    :cond_1
    sget-object v1, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-interface {v0, v1}, Lcom/samsung/vekit/Common/State/VEStateInterface;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist resumeAnalyze(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->resumeAnalyze(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist resumeExport(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->resumeExport(J)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeExport invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist saveDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->saveDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist setAnalyzeInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->setAnalyzeInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExportInfo invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewInfo invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist show()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->show()V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist startAnalyze()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->startAnalyze()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist startDoodle(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->startDoodle(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist stop()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->stop()V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist stopAnalyze()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->stopAnalyze()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist swap(Lcom/samsung/vekit/Common/Object/Element;II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swap invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->swap(Lcom/samsung/vekit/Common/Object/Element;II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist unloadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->unloadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist update(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->update(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist updateViewport(IIII)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/External/NativeInterface;->updateViewport(IIII)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewport invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
