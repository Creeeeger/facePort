.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/graphics/Rect;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->isTargetTaskImeShowing(I)Z

    move-result v2

    iget-boolean v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingCanceled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingCanceled:Z

    :cond_0
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingCanceled:Z

    if-nez v2, :cond_1

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v4, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v3, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    iput-boolean v5, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingCanceled:Z

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->saveFreeformBounds(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v4, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput v3, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformStashYFraction:F

    :cond_2
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v4, v3}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
