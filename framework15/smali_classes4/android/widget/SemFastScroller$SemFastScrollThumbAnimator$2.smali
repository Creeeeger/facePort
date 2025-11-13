.class Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$2;
.super Ljava/lang/Object;
.source "SemFastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;-><init>(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$2;->this$0:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$2;->this$0:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    invoke-static {v0}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->-$$Nest$fgetmBgDrawable(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)Landroid/widget/SemFastScrollerBgDrawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScrollerBgDrawable;->setArgb(I)V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$2;->this$0:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    invoke-static {v0}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->-$$Nest$fgetmBgDrawable(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)Landroid/widget/SemFastScrollerBgDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemFastScrollerBgDrawable;->invalidateSelf()V

    return-void
.end method
