.class Landroid/widget/Editor$HandleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;

.field final synthetic blacklist val$targetRect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 6768
    iput-object p1, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iput-object p2, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 6776
    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/widget/Editor$HandleView;->-$$Nest$mgetDrawableBounds(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6777
    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 6778
    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 6779
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 6771
    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 6772
    return-void
.end method
