.class public final Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $offset:I

.field public final synthetic this$0:Lcom/android/systemui/screenshot/MessageContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MessageContainerController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iput p2, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->guideline:Landroidx/constraintlayout/widget/Guideline;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget v2, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->$offset:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
