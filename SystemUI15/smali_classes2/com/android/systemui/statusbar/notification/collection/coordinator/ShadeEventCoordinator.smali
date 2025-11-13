.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private mEntryRemoved:Z

.field private mEntryRemovedByUser:Z

.field private final mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

.field private mNotifRemovedByUserCallback:Ljava/lang/Runnable;

.field private mShadeEmptiedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    return-void
.end method

.method public static final synthetic access$onBeforeRenderList(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->onBeforeRenderList(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setMEntryRemoved$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemoved:Z

    return-void
.end method

.method public static final synthetic access$setMEntryRemovedByUser$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemovedByUser:Z

    return-void
.end method

.method private final onBeforeRenderList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemoved:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;->logShadeEmptied()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemoved:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemovedByUser:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;->logNotifRemovedByUser()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemoved:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemovedByUser:Z

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    return-void
.end method

.method public setNotifRemovedByUserCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mNotifRemovedByUserCallback already set"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShadeEmptiedCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mShadeEmptiedCallback already set"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
