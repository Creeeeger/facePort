.class Landroid/widget/Editor$HandleView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 6858
    iput-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 6861
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsRestoring(Landroid/widget/Editor$HandleView;Z)V

    .line 6862
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6863
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$mshouldShow(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6864
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6865
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 6866
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    goto :goto_0

    .line 6869
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6870
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 6874
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 6875
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 6876
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, v3, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 6877
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 6875
    invoke-static {v0, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6879
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 6880
    return-void
.end method
