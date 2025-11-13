.class public final synthetic Lcom/samsung/android/settings/datausage/widget/ProgressBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/datausage/widget/ProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/datausage/widget/ProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/datausage/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/datausage/widget/ProgressBar;

    sget v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->setProgress(F)V

    return-void
.end method
