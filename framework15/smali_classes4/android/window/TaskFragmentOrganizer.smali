.class public Landroid/window/TaskFragmentOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskFragmentOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentOrganizer$TaskFragmentTransitionType;
    }
.end annotation


# static fields
.field public static final blacklist KEY_ERROR_CALLBACK_OP_TYPE:Ljava/lang/String; = "operation_type"

.field public static final blacklist KEY_ERROR_CALLBACK_TASK_FRAGMENT_INFO:Ljava/lang/String; = "task_fragment_info"

.field public static final blacklist KEY_ERROR_CALLBACK_THROWABLE:Ljava/lang/String; = "fragment_throwable"

.field public static final blacklist TASK_FRAGMENT_TRANSIT_CHANGE:I = 0x6

.field public static final blacklist TASK_FRAGMENT_TRANSIT_CLOSE:I = 0x2

.field public static final blacklist TASK_FRAGMENT_TRANSIT_DRAG_RESIZE:I = 0x3f9

.field public static final blacklist TASK_FRAGMENT_TRANSIT_NONE:I = 0x0

.field public static final blacklist TASK_FRAGMENT_TRANSIT_OPEN:I = 0x1


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskFragmentOrganizer;

.field private final blacklist mToken:Landroid/window/TaskFragmentOrganizerToken;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    new-instance v0, Landroid/window/TaskFragmentOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskFragmentOrganizer$1;-><init>(Landroid/window/TaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    new-instance v0, Landroid/window/TaskFragmentOrganizerToken;

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOrganizerToken;-><init>(Landroid/window/ITaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskFragmentOrganizerController;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/window/TaskFragmentOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist putErrorInfoInBundle(Ljava/lang/Throwable;Landroid/window/TaskFragmentInfo;I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fragment_throwable"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "task_fragment_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string/jumbo v1, "operation_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public blacklist applySystemTransaction(Landroid/window/WindowContainerTransaction;ILandroid/window/RemoteTransition;)V
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, v1, p3}, Landroid/window/ITaskFragmentOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not allowed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;IZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/window/ITaskFragmentOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public blacklist isActivityEmbedded(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/ITaskFragmentOrganizerController;->isActivityEmbedded(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportActivityEmbedded(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/ITaskFragmentOrganizerController;->isSupportActivityEmbedded(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    .locals 2

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p2, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/window/ITaskFragmentOrganizerController;->onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onTransactionReady(Landroid/window/TaskFragmentTransaction;)V
    .locals 3

    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/window/TaskFragmentOrganizer;->onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V

    return-void
.end method

.method public blacklist registerOrganizer()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/window/ITaskFragmentOrganizerController;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerOrganizer(Z)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;Landroid/view/RemoteAnimationDefinition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterOrganizer()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterRemoteAnimations()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
