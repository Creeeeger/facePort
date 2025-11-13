.class Landroid/widget/Editor$HandleView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getCursorSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;

.field final synthetic blacklist val$isHideAnim:Z

.field final synthetic blacklist val$targetRect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 6978
    iput-object p1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iput-object p2, p0, Landroid/widget/Editor$HandleView$7;->val$targetRect:Landroid/graphics/Rect;

    iput-boolean p3, p0, Landroid/widget/Editor$HandleView$7;->val$isHideAnim:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 6987
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6988
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 6989
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView$CursorView;->requestLayout()V

    .line 6990
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 6992
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView$7;->val$isHideAnim:Z

    if-eqz v0, :cond_0

    .line 6993
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mCursorMoving:Z

    .line 6994
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mresumeBlink(Landroid/widget/Editor;)V

    .line 6995
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 6996
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Editor$HandleView$CursorView;->setVisibility(I)V

    .line 6998
    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 6981
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 6982
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView$CursorView;->requestLayout()V

    .line 6983
    return-void
.end method
