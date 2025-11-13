.class Landroid/widget/RemoteViews$LayoutParamAction$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$LayoutParamAction;->startValueAnimator(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RemoteViews$LayoutParamAction;

.field final synthetic blacklist val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic blacklist val$target:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$LayoutParamAction;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->this$0:Landroid/widget/RemoteViews$LayoutParamAction;

    iput-object p2, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$target:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/RemoteViews$LayoutParamAction$1;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
