.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$1:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iput-boolean v2, v3, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    iget-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    sget v3, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v3, v3, Lcom/android/systemui/recents/OverviewProxyService;->mShadeViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v3}, Lcom/android/systemui/shade/ShadeViewController;->startInputFocusTransfer()V

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v3, v3, Lcom/android/systemui/recents/OverviewProxyService;->mShadeViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/ShadeViewController;

    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/shade/ShadeViewController;->setOnStatusBarDownEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_3

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    sget v2, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget v4, v4, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    sub-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-wide v7, v6, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    sub-long/2addr v4, v7

    long-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, v6, Lcom/android/systemui/recents/OverviewProxyService;->mShadeViewControllerLazy:Ldagger/Lazy;

    if-ne v1, v3, :cond_2

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewController;->cancelInputFocusTransfer()V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v1, v2}, Lcom/android/systemui/shade/ShadeViewController;->finishInputFocusTransfer(F)V

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mShadeViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeViewController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/shade/ShadeViewController;->setOnStatusBarDownEvent(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyService;->mShadeViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v1}, Lcom/android/systemui/shade/ShadeViewController;->startExpandLatencyTracking()V

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p0, v3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mShadeViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v0, p0}, Lcom/android/systemui/shade/ShadeViewController;->handleExternalTouch(Landroid/view/MotionEvent;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
