.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_1

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-boolean p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eq p2, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-nez p1, :cond_2

    const/4 p1, 0x3

    invoke-static {p0, v0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    :cond_2
    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dozeAnimationRunning:Z

    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logSmartspaceImpression(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->setQsExpanded(Z)V

    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->closeGuts(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateUserVisibility()V

    return-void
.end method

.method public final onExpandedChanged(Z)V
    .locals 1

    sget p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpanded:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateUserVisibility()V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    sget v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateTargetState()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpanded:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateUserVisibility()V

    return-void
.end method

.method public final onStatePreChange(II)V
    .locals 1

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullShadeTransitionProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->distanceForFullShadeTransition:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->setTransitionToFullShadeAmount(F)V

    :cond_0
    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    return-void
.end method
