.class public final synthetic Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/shared/animation/PhysicsAnimator$EndListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SwipeHelper;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Z

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;->f$2:Z

    iput p4, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;->f$3:F

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFF)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    check-cast p1, Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/SwipeHelper;

    const/4 p3, 0x0

    iput-boolean p3, p1, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-nez p4, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result p4

    iget-boolean p5, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;->f$2:Z

    invoke-virtual {p1, p2, p4, p5}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    iget-boolean p4, p1, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    :cond_0
    move-object p4, p5

    :goto_0
    if-ne p4, p2, :cond_1

    invoke-virtual {p1, p3}, Lcom/android/systemui/SwipeHelper;->resetSwipeStates(Z)V

    :cond_1
    iget-object p3, p1, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-ne p2, p3, :cond_2

    iget-boolean p3, p1, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-nez p3, :cond_2

    iput-object p5, p1, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_2
    iget p0, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;->f$3:F

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/SwipeHelper;->onChildSnappedBack(FLandroid/view/View;)V

    return-void
.end method
