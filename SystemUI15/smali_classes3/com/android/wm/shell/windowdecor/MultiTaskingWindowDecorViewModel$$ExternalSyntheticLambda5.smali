.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda5;->f$0:I

    check-cast p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isHandleMenuActive()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->closeHandleMenu(Z)V

    :cond_0
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->removeTaskToMotionInfo(Z)V

    :cond_1
    return-void
.end method
