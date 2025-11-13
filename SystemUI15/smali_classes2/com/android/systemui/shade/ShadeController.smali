.class public interface abstract Lcom/android/systemui/shade/ShadeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# virtual methods
.method public abstract animateCollapseShade(FIZZ)V
.end method

.method public animateCollapseShade(I)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p0, v1, p1, v0, v0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(FIZZ)V

    return-void
.end method

.method public animateCollapseShadeForcedDelayed()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(FIZZ)V

    return-void
.end method

.method public animateCollapseShadeFromCommand(IZ)V
    .locals 0

    return-void
.end method

.method public abstract cancelExpansionAndCollapseShade()V
.end method

.method public abstract closeShadeIfOpen()V
.end method

.method public abstract collapseOnMainThread()V
.end method

.method public abstract collapseShade()V
.end method

.method public abstract collapseShade(Z)V
.end method

.method public abstract collapseShadeForActivityStart()V
.end method

.method public abstract collapseWithDuration(I)V
.end method

.method public abstract instantCollapseShade()V
.end method

.method public abstract instantExpandShade()V
.end method

.method public abstract isExpandedVisible()Z
.end method

.method public abstract isExpandingOrCollapsing()Z
.end method

.method public abstract isShadeEnabled()Z
.end method

.method public abstract isShadeFullyOpen()Z
.end method

.method public abstract makeExpandedInvisible()V
.end method

.method public abstract makeExpandedVisible(Z)V
.end method

.method public abstract onStatusBarTouch(Landroid/view/MotionEvent;)V
.end method

.method public abstract performHapticFeedback()V
.end method

.method public abstract postAnimateCollapseShade()V
.end method

.method public abstract postAnimateForceCollapseShade()V
.end method

.method public abstract postOnShadeExpanded(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;)V
.end method

.method public setNotificationShadeWindowViewController(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V
    .locals 0

    return-void
.end method

.method public setVisibilityListener(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;)V
    .locals 0

    return-void
.end method
