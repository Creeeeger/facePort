.class public final synthetic Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAlpha(FZ)V

    return-void
.end method
