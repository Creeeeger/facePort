.class public final synthetic Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda0;->f$1:Z

    sget v1, Lcom/android/wm/shell/bubbles/BadgedImageView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    :goto_0
    iput p1, v0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
