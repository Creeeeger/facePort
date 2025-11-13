.class public final Lcom/android/systemui/biometrics/AuthRippleView$fadeDwellRipple$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$fadeDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView$fadeDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    iget v1, v0, Lcom/android/systemui/biometrics/DwellRippleShader;->color:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/DwellRippleShader;->setColor(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$fadeDwellRipple$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
