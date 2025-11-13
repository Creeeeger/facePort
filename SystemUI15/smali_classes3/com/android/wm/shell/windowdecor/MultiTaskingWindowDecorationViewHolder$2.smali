.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$2;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$2;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    sget-object v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setupAutoHideHandleAnimator(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
