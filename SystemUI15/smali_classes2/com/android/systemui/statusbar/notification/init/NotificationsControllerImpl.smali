.class public final Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/init/NotificationsController;


# instance fields
.field public final animatedImageNotificationManager:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

.field public final bubblesOptional:Ljava/util/Optional;

.field public final clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

.field public final commonNotifCollection:Ldagger/Lazy;

.field public final headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field public final notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

.field public final notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

.field public final notifPipeline:Ldagger/Lazy;

.field public final notifPipelineInitializer:Ldagger/Lazy;

.field public final notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field public final notificationLoggerOptional:Ljava/util/Optional;

.field public final notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

.field public final notificationsMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field public final targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
            "Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->commonNotifCollection:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipeline:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipelineInitializer:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationLoggerOptional:Ljava/util/Optional;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationsMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->animatedImageNotificationManager:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->bubblesOptional:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final getActiveNotificationsCount()I
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsLiveDataStoreRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCount:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final initialize(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipeline:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    new-instance v3, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$1;

    invoke-direct {v3, p2}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->bubblesOptional:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/statusbar/notification/NotificationClicker;

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const/4 v9, 0x0

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    move-object v4, v3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/notification/NotificationClicker;-><init>(Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;I)V

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    iput-object v3, p4, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotificationClicker:Lcom/android/systemui/statusbar/notification/NotificationClicker;

    iput-object p1, p4, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iput-object p2, p4, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v2, p4, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/icon/IconManager;->entryListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/icon/IconManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iput-object p1, v2, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mNotificationPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;->initialize()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->animatedImageNotificationManager:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$1;-><init>(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;)V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$2;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$2;-><init>(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;)V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$3;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$3;-><init>(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->bindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;->listeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p1, v2}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipelineInitializer:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "NotifPipeline"

    invoke-static {v2, v3, p1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotificationService:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    iput-object p4, v2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    iget-object p4, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-interface {p4, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;->attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V

    iget-object p4, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mShadeViewManagerFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;

    invoke-interface {p4, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->create(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    move-result-object p3

    iput-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mShadeViewManager:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    iget-object p4, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    iput-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    new-instance p3, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

    invoke-direct {p3, p4}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p4, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    iget-object v2, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    iput-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "ShadeListBuilder"

    invoke-static {p3, v2, p4}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v2, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Lcom/android/systemui/util/NamedListenerSet;

    iget-object v4, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    invoke-virtual {v2, v4}, Lcom/android/systemui/util/NamedListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v2, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    iput-object v2, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda16;

    invoke-direct {v2, p4}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographer;

    check-cast p4, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p4, v2}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean p4, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    const-string v2, "attach() called twice"

    if-nez p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    iget-object v4, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "NotifCollection"

    invoke-static {v4, v5, p3}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object v4, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    iput-object v4, v5, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    iget-object v4, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda11;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda11;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mInconsistencyTracker:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;

    iget-boolean v7, p3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->attached:Z

    if-nez v7, :cond_0

    iput-boolean p4, p3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->attached:Z

    iput-object v6, p3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->collectedKeySetAccessor:Lkotlin/jvm/functions/Function0;

    iput-object v4, p3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->coalescedKeySetAccessor:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotificationService:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object p3, v5, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mListener:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    const-string p1, "Notif pipeline initialized. rendering=true"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;

    invoke-direct {p4, p3}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;)V

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationsMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationLoggerOptional:Ljava/util/Optional;

    new-instance p3, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$2;

    invoke-direct {p3, p2}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resetUserExpandedStates()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->commonNotifCollection:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v2

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v3

    if-eq v2, v3, :cond_4

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsMinimized:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    :cond_1
    invoke-virtual {v2, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(ZZ)V

    :cond_2
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v3, :cond_3

    invoke-virtual {v2, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(ZZ)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/SnoozeCriterion;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method
