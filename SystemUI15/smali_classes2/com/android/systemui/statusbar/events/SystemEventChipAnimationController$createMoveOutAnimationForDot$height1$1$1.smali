.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $chipVerticalCenter:I

.field public final synthetic $this_apply:Landroidx/core/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    iput p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$chipVerticalCenter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p1}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$chipVerticalCenter:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->access$updateAnimatedViewBoundsHeight(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;II)V

    return-void
.end method
