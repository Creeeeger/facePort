.class Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation$2;
.super Ljava/lang/Object;
.source "SeslCircularSeekBarRevealAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;->startAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation$2;->this$0:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 49
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation$2;->this$0:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-static {v0}, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;->access$100(Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;)Landroidx/picker/widget/SeslCircularSeekBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setRevealAnimationValue(F)V

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation$2;->this$0:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-static {p0}, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;->access$100(Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;)Landroidx/picker/widget/SeslCircularSeekBarView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
