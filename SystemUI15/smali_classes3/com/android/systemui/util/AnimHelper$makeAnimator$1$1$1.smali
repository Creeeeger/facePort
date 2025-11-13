.class final Lcom/android/systemui/util/AnimHelper$makeAnimator$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic $this_run:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/AnimHelper$makeAnimator$1$1$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/util/AnimHelper$makeAnimator$1$1$1;->$this_run:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    iget-object v1, p0, Lcom/android/systemui/util/AnimHelper$makeAnimator$1$1$1;->$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$makeAnimator$1$1$1;->$this_run:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->getAnimType()Lcom/android/systemui/util/AnimHelper$AnimationType;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/android/systemui/util/AnimHelper;->access$updateProperty(Lcom/android/systemui/util/AnimHelper;Landroid/view/View;FLcom/android/systemui/util/AnimHelper$AnimationType;)V

    return-void
.end method
