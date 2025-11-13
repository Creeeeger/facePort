.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz p0, :cond_0

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_HANDLE_VIEW:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->updateHandleViewColor()V

    :cond_0
    return-void
.end method
