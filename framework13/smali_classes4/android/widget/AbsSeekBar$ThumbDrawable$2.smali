.class Landroid/widget/AbsSeekBar$ThumbDrawable$2;
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
    .param p1, "this$1"    # Landroid/widget/AbsSeekBar$ThumbDrawable;

    .line 2408
    iput-object p1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$2;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 2411
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2412
    .local v0, "value":F
    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$2;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    float-to-int v2, v0

    invoke-static {v1, v2}, Landroid/widget/AbsSeekBar$ThumbDrawable;->-$$Nest$msetRadius(Landroid/widget/AbsSeekBar$ThumbDrawable;I)V

    .line 2413
    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable$2;->this$1:Landroid/widget/AbsSeekBar$ThumbDrawable;

    invoke-virtual {v1}, Landroid/widget/AbsSeekBar$ThumbDrawable;->invalidateSelf()V

    .line 2414
    return-void
.end method
