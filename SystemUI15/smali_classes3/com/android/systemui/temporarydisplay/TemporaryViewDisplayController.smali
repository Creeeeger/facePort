.class public abstract Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final activeViews:Ljava/util/List;

.field public final commonWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final displayScaleListener:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final listeners:Ljava/util/Set;

.field public final logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final powerManager:Landroid/os/PowerManager;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

.field public final viewLayoutRes:I

.field public final wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;ILcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/os/PowerManager;",
            "I",
            "Lcom/android/systemui/util/wakelock/WakeLock$Builder;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    iput-object p3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->windowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p6, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p7, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p8, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->powerManager:Landroid/os/PowerManager;

    iput p9, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->viewLayoutRes:I

    iput-object p10, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    iput-object p11, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p12, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x7da

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x28

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p2, -0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->commonWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    new-instance p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;)V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayScaleListener:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

    return-void
.end method

.method public static final access$reinflateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovedFromWindowManager(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->inflateAndUpdateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v0, "First item in activeViews list must have a valid view"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public static synthetic getActiveViews$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public animateViewIn$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public animateViewOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;)V
    .locals 0

    invoke-virtual {p3}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->run()V

    return-void
.end method

.method public final declared-synchronized displayView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getTimeoutMs()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long v9, v1, v3

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v5}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    invoke-virtual {v2, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewUpdate(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    iput-object p1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    iput-wide v9, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    new-instance v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    iget-object v5, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v5, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_0
    iput-object v2, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :try_start_1
    const-string p1, "First item in activeViews list must have a valid view"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Landroid/view/ViewGroup;Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;JLcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)V

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayScaleListener:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->showNewView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v4, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v4}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_5

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewAdditionDelayed(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeFromActivesIfNeeded(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->hideView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    iget-object p1, v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeFromActivesIfNeeded(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->showNewView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p2, "Active views size: "

    const-string v0, "Current time millis: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  hasView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v1, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  timeExpiration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public abstract getTouchableRegion(Landroid/graphics/Rect;Landroid/view/View;)V
.end method

.method public abstract getWindowLayoutParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/WindowManager$LayoutParams;
.end method

.method public final hideView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V
    .locals 7

    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewHidden$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewHidden$2;

    iget-object v4, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v5, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v3, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "View is null"

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object v6, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->animateViewOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;)V

    :goto_0
    return-void
.end method

.method public final inflateAndUpdateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V
    .locals 7

    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->viewLayoutRes:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;

    new-instance v4, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$inflateAndUpdateView$newViewController$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$inflateAndUpdateView$newViewController$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v1, v4}, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->getWindowLayoutParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;

    iget-object v6, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    invoke-virtual {v6, v0, v4, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v3, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->Companion:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, v4, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v6, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->animateViewIn$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final declared-synchronized removeFromActivesIfNeeded(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iget-object v2, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v2}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    if-eqz v1, :cond_3

    iget-object p1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeTimedOutViews()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iget-wide v3, v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    iget-object v5, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v5}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    iget-object v3, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewExpiration(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$Listener;

    iget-object v4, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v4}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TIMEOUT_EXPIRED_BEFORE_REDISPLAY"

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$Listener;->onInfoPermanentlyRemoved(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemoval$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemoval$2;

    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iget-object v2, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v2}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    move-object v1, v4

    :goto_0
    check-cast v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    if-nez v1, :cond_2

    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    const-string v0, "View not found in list"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$Listener;

    invoke-interface {v5, p1, p2}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$Listener;->onInfoPermanentlyRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_4
    iget-object v3, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    const-string v0, "No view to remove"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    const-string v0, "View isn\'t the currently displayed view"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    iget-object p1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    if-nez p1, :cond_7

    iget-object p1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "View is null"

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iput-object v4, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->animateViewOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeTimedOutViews()V

    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    if-eqz p1, :cond_8

    iget-wide v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->showNewView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayScaleListener:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final showNewView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;I)V
    .locals 6

    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddition$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddition$2;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEvent;->TEMPORARY_VIEW_ADDED:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEvent;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v0

    const v1, 0x1000001a

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setLevelsAndFlags(I)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setLevelsAndFlags(I)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->wakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWakeReason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    int-to-long v1, p2

    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p2, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iput-object p2, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->inflateAndUpdateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public abstract updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V
.end method
