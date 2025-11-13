.class public final synthetic Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;

.field public final synthetic f$1:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda8;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda8;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda8;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda8;->f$2:Landroid/view/View;

    sget v2, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
