.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final logger:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

.field private final mGutsListener:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewListener;

.field private final mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

.field private final notifGutsViewManager:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

.field private final notifsExtendingLifetime:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final notifsWithOpenGuts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifGutsViewManager:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->logger:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsExtendingLifetime:Landroid/util/ArraySet;

    invoke-virtual {p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mLifetimeExtender$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mLifetimeExtender$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mGutsListener:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewListener;

    return-void
.end method

.method public static final synthetic access$closeGutsAndEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->closeGutsAndEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->logger:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    return-object p0
.end method

.method public static final synthetic access$getNotifsExtendingLifetime$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsExtendingLifetime:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static final synthetic access$getNotifsWithOpenGuts$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static final synthetic access$isCurrentlyShowingGuts(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->isCurrentlyShowingGuts(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setOnEndLifetimeExtensionCallback$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->onEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

    return-void
.end method

.method private final closeGutsAndEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsExtendingLifetime:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->onEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;->onEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    :cond_0
    return-void
.end method

.method private final isCurrentlyShowingGuts(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifGutsViewManager:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mGutsListener:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewListener;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsListener:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p2, ": "

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    const-string v0, "notifsWithOpenGuts"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "notifsExtendingLifetime"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsExtendingLifetime:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "onEndLifetimeExtensionCallback"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->onEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

    invoke-static {p1, p2, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0

    :goto_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
.end method
