.class public final synthetic Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/shared/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SwipeHelper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SwipeHelper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/SwipeHelper;

    iput-boolean p2, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;->f$1:Z

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    return-void
.end method
