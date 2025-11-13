.class Landroid/widget/ScrollView$7;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ScrollView;->semSetGoToTopEnabled(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ScrollView;

    .line 3348
    iput-object p1, p0, Landroid/widget/ScrollView$7;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 3350
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3351
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/ScrollView$7;->this$0:Landroid/widget/ScrollView;

    invoke-static {v1}, Landroid/widget/ScrollView;->-$$Nest$fgetmSemGoToTopImage(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3352
    iget-object v1, p0, Landroid/widget/ScrollView$7;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->invalidate()V

    .line 3353
    return-void
.end method
