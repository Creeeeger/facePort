.class public final Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# instance fields
.field public final mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

.field public final mDisplayId:I

.field public mEndImeTop:I

.field public mImeShown:Z

.field public mStartImeTop:I

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;ILcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDisplayId:I

    check-cast p3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;ILcom/android/wm/shell/windowdecor/WindowDecorViewModel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;ILcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V

    return-void
.end method


# virtual methods
.method public final canImePositioning(I)Z
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDisplayId:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onImeControlTargetChanged(IZ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mImeShown:Z

    return-void
.end method

.method public final onImeEndPositioning(IZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->canImePositioning(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v1, "ImePositionProcessor"

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->getDecoration(I)Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->onLayoutPositionEnd(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onImeEndPositioning: focus lost tid #"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->getDecoration(I)Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->onLayoutPositionEnd(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onImeEndPositioning: tid #"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p1, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3
    return-void
.end method

.method public final onImePositionChanged(II)V
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->canImePositioning(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    const-string v2, "getProgress: can\'t divide by zero"

    const-string v3, "ImePositionProcessor"

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->getDecoration(I)Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mEndImeTop:I

    iget v6, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mStartImeTop:I

    sub-int/2addr v5, v6

    if-nez v5, :cond_1

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    goto :goto_0

    :cond_1
    int-to-float v7, p2

    int-to-float v6, v6

    sub-float/2addr v7, v6

    int-to-float v5, v5

    div-float/2addr v7, v5

    :goto_0
    iget v5, v0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    int-to-float v6, v5

    iget v8, v0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    int-to-float v9, v8

    invoke-static {v9, v6, v7, v6}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    if-ne v5, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->imePositionChanged(I)V

    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_6

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->getDecoration(I)Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mEndImeTop:I

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mStartImeTop:I

    sub-int/2addr v0, p0

    if-nez v0, :cond_4

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    int-to-float p2, p2

    int-to-float p0, p0

    sub-float/2addr p2, p0

    int-to-float p0, v0

    div-float v1, p2, p0

    :goto_2
    iget p0, p1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    int-to-float p2, p0

    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    int-to-float v2, v0

    invoke-static {v2, p2, v1, p2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->imePositionChanged(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final onImeStartPositioning(IIZZI)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->canImePositioning(I)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    :cond_0
    if-eqz p3, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p5

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mStartImeTop:I

    if-eqz p3, :cond_2

    move p2, p5

    :cond_2
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mEndImeTop:I

    iput-boolean p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mImeShown:Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const-string p5, "ImePositionProcessor"

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->getDecoration(I)Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, p4, v1, p4}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->onImeStartPositioning(ZLandroid/app/ActivityManager$RunningTaskInfo;Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onImeStartPositioning: focus lost tid #"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mPrevFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1, p5, p2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    move p2, p4

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_4

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->getDecoration(I)Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, p3, p2, v0}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->onImeStartPositioning(ZLandroid/app/ActivityManager$RunningTaskInfo;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onImeStartPositioning: tid #"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", showing="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move p4, p2

    :goto_2
    return p4
.end method
