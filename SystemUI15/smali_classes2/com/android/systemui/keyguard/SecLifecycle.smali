.class public Lcom/android/systemui/keyguard/SecLifecycle;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final QUEUE_MAX:I

.field public mIsDispatching:Z

.field public mLastScreenState:I

.field public mLastWakefulness:I

.field public mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public final mMsgForLifecycle:Ljava/util/Queue;

.field public final mObservers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastScreenState:I

    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastWakefulness:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->QUEUE_MAX:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    return-void
.end method

.method public static createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/keyguard/SecLifecycle$Msg;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final addObserver(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "do not add or remove a observer on dispatching: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatch(Ljava/util/function/Consumer;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SecLifecycle;->getScreenState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SecLifecycle;->getWakefulness()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v3, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastScreenState:I

    if-eq v3, v0, :cond_0

    const-string/jumbo v3, "screenState="

    invoke-static {v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastScreenState:I

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    if-eq v1, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastWakefulness:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wakefulness="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastWakefulness:I

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SecLifecycle"

    invoke-static {v0, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iput-object v3, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    if-eqz v3, :cond_4

    check-cast v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-ltz v3, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dispatch "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const/16 v6, 0x14

    const-string v7, "LooperSlow"

    invoke-static {v3, v6, v7, v4, v5}, Lcom/android/systemui/util/LogUtil;->endTime(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    return-void
.end method

.method public getScreenState()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getWakefulness()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final removeObserver(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "do not add or remove a observer on dispatching: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setLifecycle(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/keyguard/SecLifecycle;->QUEUE_MAX:I

    if-lt v1, v2, :cond_0

    const-string v1, "SecLifecycle"

    const-string v2, "Saved message is over the max"

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    invoke-static {v4, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    invoke-static {v3, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-static {v2, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    invoke-static {v4, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    invoke-static {v3, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    move-result-object p1

    goto :goto_1

    :pswitch_6
    invoke-static {v2, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    move-result-object p1

    goto :goto_1

    :pswitch_7
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
