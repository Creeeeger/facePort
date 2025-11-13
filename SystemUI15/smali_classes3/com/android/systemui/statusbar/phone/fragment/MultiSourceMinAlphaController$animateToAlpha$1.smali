.class public final Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $animator:Landroidx/core/animation/ValueAnimator;

.field public final synthetic $sourceId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;Landroidx/core/animation/ValueAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;->this$0:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;->$animator:Landroidx/core/animation/ValueAnimator;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;->$sourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;->$animator:Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p1}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;->this$0:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;->$sourceId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->updateAlpha(FI)V

    return-void
.end method
