.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;
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
.field private final mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field private mIsFolded:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mNotifUpdater:Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;

.field private final mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    invoke-virtual {p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static final synthetic access$getMMainHandler$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMNotifUpdater$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mNotifUpdater:Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;

    const-string v1, "SubscreenQuickReplyCoordinator"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mNotifUpdater:Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->registerFoldStateListener()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->registerSubscreenStateChangeListener()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final getFoldStateListener()Lcom/samsung/android/view/SemWindowManager$FoldStateListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$getFoldStateListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$getFoldStateListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V

    return-object v0
.end method

.method public final getMIsFolded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mIsFolded:Z

    return p0
.end method

.method public final getMQuickReplyExtender()Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    return-object p0
.end method

.method public final registerFoldStateListener()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->getFoldStateListener()Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerSubscreenStateChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subscreenStateListenerList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setMIsFolded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mIsFolded:Z

    return-void
.end method
