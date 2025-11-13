.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

.field public chipView:Landroid/view/View;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;

.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final iActivityManager:Landroid/app/IActivityManager;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public isFullscreen:Z

.field public final keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

.field public final logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

.field public final mListeners:Ljava/util/List;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

.field public final ongoingCallRepository:Lcom/android/systemui/statusbar/phone/ongoingcall/data/repository/OngoingCallRepository;

.field public parent:Landroid/view/View;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final statusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final swipeStatusBarAwayGestureHandler:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ongoingcall/data/repository/OngoingCallRepository;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->context:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->ongoingCallRepository:Lcom/android/systemui/statusbar/phone/ongoingcall/data/repository/OngoingCallRepository;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mainExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->swipeStatusBarAwayGestureHandler:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->statusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->configurationListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;

    return-void
.end method

.method public static final access$handleClick(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger$OngoingCallEvents;->ONGOING_CALL_CLICKED:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger$OngoingCallEvents;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPNE0106"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v0, p2, v1, v2}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->fromView$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;Landroid/view/View;Ljava/lang/Integer;I)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method

.method public static final access$removeChip(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    invoke-static {}, Lcom/android/systemui/Flags;->statusBarScreenSharingChips()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->tearDownChipView()Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->swipeStatusBarAwayGestureHandler:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    const-string v2, "OngoingCallController"

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->sendStateChangeEvent()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->callAppUid:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isRegistered:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Active call notification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isCallAppVisible:Z

    const-string p2, "Call app visible: "

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final hasOngoingCall()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->isOngoing:Z

    if-ne v2, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isCallAppVisible:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_0

    iget p0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->extraVisibleFlag:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget p0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->extraVisibleFlag:I

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public final hideTimeViewByOngoingChip(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    if-eqz p0, :cond_0

    const v0, 0x7f0a0875

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isEnoughTimerWidth:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isEnoughTimerWidth:Z

    invoke-virtual {p0}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    return-void
.end method

.method public final scaleCallChip(Landroid/view/View;FZ)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p3, :cond_1

    const p3, 0x7f070eee

    goto :goto_0

    :cond_1
    const p3, 0x7f070ef0

    :goto_0
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070eef

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    const p3, 0x7f0a0873

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070eeb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ef2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {p3, v0, p0, v0, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    if-eqz p1, :cond_4

    const p3, 0x7f0a0874

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070eed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz p1, :cond_5

    const p3, 0x7f0a0875

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070eec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070ef3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-virtual {p1, p0, p3}, Landroid/widget/Chronometer;->setTextSize(IF)V

    :cond_5
    return-void
.end method

.method public final sendStateChangeEvent()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$NoCall;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$NoCall;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->intent:Landroid/app/PendingIntent;

    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->callStartTime:J

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;-><init>(JLandroid/app/PendingIntent;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$NoCall;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$NoCall;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->ongoingCallRepository:Lcom/android/systemui/statusbar/phone/ongoingcall/data/repository/OngoingCallRepository;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/data/repository/OngoingCallRepository;->_ongoingCallState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;->onOngoingCallStateChanged()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final setChipView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->tearDownChipView()Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const v0, 0x7f0a0873

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallBackgroundContainer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setChipView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setChipView$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallBackgroundContainer;->maxHeightFetcher:Lkotlin/jvm/functions/Function0;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->isOngoing:Z

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChip()V

    :cond_2
    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->configurationListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$start$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final tearDownChipView()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$tearDownChipView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$tearDownChipView$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    return-object v0
.end method

.method public final updateChip()V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->scaleCallChip(Landroid/view/View;FZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v1, v5}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->scaleCallChip(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const v4, 0x7f0a0875

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    const-string v8, "OngoingCallController"

    if-eqz v1, :cond_16

    if-eqz v7, :cond_16

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080fde

    invoke-virtual {v10, v11, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    new-instance v12, Landroid/graphics/BlendModeColorFilter;

    const/4 v13, -0x1

    iget v9, v9, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->callChipColor:I

    if-eq v9, v13, :cond_2

    sget-object v14, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    goto :goto_1

    :cond_2
    sget-object v14, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    :goto_1
    invoke-direct {v12, v9, v14}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v12, 0x7f0a0873

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v10, Landroid/graphics/BlendModeColorFilter;

    if-eq v9, v13, :cond_4

    sget-object v11, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    goto :goto_3

    :cond_4
    sget-object v11, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    :goto_3
    invoke-direct {v10, v9, v11}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/systemui/Flags;->statusBarScreenSharingChips()V

    iget-wide v9, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->callStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    const/4 v6, 0x2

    if-lez v1, :cond_e

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isRunningTimer:Z

    if-eq v1, v5, :cond_7

    iput-boolean v5, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isRunningTimer:Z

    invoke-virtual {v7}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_7
    invoke-virtual {v7}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_8

    move v1, v5

    goto :goto_5

    :cond_8
    move v1, v3

    :goto_5
    iget-boolean v11, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isLandscape:Z

    if-eq v11, v1, :cond_9

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isLandscape:Z

    invoke-virtual {v7}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_9
    invoke-virtual {v7}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v1, :cond_a

    move v1, v5

    goto :goto_6

    :cond_a
    move v1, v3

    :goto_6
    iget-boolean v11, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isMainDisplay:Z

    if-eq v11, v1, :cond_b

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isMainDisplay:Z

    invoke-virtual {v7}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v9

    invoke-virtual {v7, v11, v12}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->setBase(J)V

    invoke-virtual {v7}, Landroid/widget/Chronometer;->start()V

    invoke-virtual {v7}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v9

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    if-eqz v1, :cond_11

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isRunningTimer:Z

    if-eq v2, v5, :cond_c

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isRunningTimer:Z

    invoke-virtual {v1}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_c
    invoke-virtual {v1, v9, v10}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->setBase(J)V

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isEnoughTimerWidth:Z

    if-eq v2, v5, :cond_d

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isEnoughTimerWidth:Z

    invoke-virtual {v1}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_d
    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    goto :goto_7

    :cond_e
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isRunningTimer:Z

    if-eqz v1, :cond_f

    iput-boolean v3, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isRunningTimer:Z

    invoke-virtual {v7}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_f
    invoke-virtual {v7}, Landroid/widget/Chronometer;->stop()V

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    if-eqz v1, :cond_11

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isRunningTimer:Z

    if-eqz v2, :cond_10

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->isRunningTimer:Z

    invoke-virtual {v1}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_10
    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    :cond_11
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChipClickListener()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->callAppUid:Ljava/lang/Integer;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->uid:I

    if-nez v2, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_13

    goto :goto_9

    :cond_13
    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->callAppUid:Ljava/lang/Integer;

    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result v0

    if-gt v0, v6, :cond_14

    move v3, v5

    :cond_14
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isCallAppVisible:Z

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isRegistered:Z

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v5, v13, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Security exception when trying to set up uid observer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateGestureListening()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->sendStateChangeEvent()V

    goto :goto_a

    :cond_16
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    sget-boolean p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallControllerKt;->DEBUG:Z

    if-eqz p0, :cond_17

    const-string p0, "Ongoing call chip view could not be found; Not displaying chip in status bar"

    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_a
    return-void
.end method

.method public final updateChipClickListener()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/Flags;->statusBarScreenSharingChips()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v2, 0x7f0a0873

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->intent:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    instance-of v4, v0, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    if-eqz v4, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;

    invoke-direct {v0, p0, v3, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Landroid/app/PendingIntent;Landroid/view/View;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;->customClickListener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->parent:Landroid/view/View;

    iput-object p0, v1, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;->touchForwardView:Landroid/view/View;

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$2;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Landroid/app/PendingIntent;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final updateGestureListening()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    const-string v1, "OngoingCallController"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->swipeStatusBarAwayGestureHandler:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->statusBarSwipedAway:Z

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isFullscreen:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->addOnGestureDetectedCallback(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
