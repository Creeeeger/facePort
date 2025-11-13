.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeyguardShowing:Z

    if-eq v0, p0, :cond_0

    iput-boolean p0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeyguardShowing:Z

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz p1, :cond_0

    xor-int/lit8 p0, p0, 0x1

    const v0, 0x7f0a0480

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->updateButtonState(IZ)V

    const v0, 0x7f0a08e7

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->updateButtonState(IZ)V

    :cond_0
    return-void
.end method
