.class Landroid/widget/AbsSeekBar$ThumbDrawable$1;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsSeekBar$ThumbDrawable;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsSeekBar$ThumbDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$1;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$1;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    float-to-int v2, v0

    invoke-static {v1, v2}, Landroid/widget/AbsSeekBar$ThumbDrawable;->-$$Nest$msetRadius(Landroid/widget/AbsSeekBar$ThumbDrawable;I)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$1;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    invoke-virtual {v1}, Landroid/widget/AbsSeekBar$ThumbDrawable;->invalidateSelf()V

    return-void
.end method
