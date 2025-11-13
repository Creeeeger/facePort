.class public final synthetic Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateQsState$1$1()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    :cond_1
    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onExpansionStarted$1()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->flingQs(FILcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v4, 0xc3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    invoke-virtual {p0, v2, v5, v1, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->flingQs(FILcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;Z)V

    :cond_4
    :goto_0
    return-void

    :pswitch_3
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    :cond_5
    return-void

    :pswitch_4
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateMinHeight()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
