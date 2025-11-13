.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    const-string v1, "NaturalSwitchingLayout"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "startNaturalSwitchingIfNeeded: failed, already started!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    if-eqz v0, :cond_1

    const-string/jumbo p0, "startNaturalSwitchingIfNeeded: failed, reason=hide_requested"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setDividerVisibilityFromNS(Z)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startNaturalSwitchingIfNeeded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mBinder:Landroid/os/Binder;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startNaturalSwitching(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getVisibleTaskAppearedInfos()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;Landroid/view/SurfaceControl$Transaction;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_6
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    if-eqz v0, :cond_7

    const-string p0, "NaturalSwitchingLayout"

    const-string v0, "onPreDraw: failed, reason=hide_requested"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mReadyToStart:Z

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "NonDragTargetView"

    const-string/jumbo v3, "showBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDimView:Landroid/view/View;

    iget v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    if-ne v1, v0, :cond_8

    goto :goto_1

    :cond_8
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x6c

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-nez v2, :cond_9

    const-string v2, "DragTargetView"

    const-string v3, "performSoundEffect: Couldn\'t get audio manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :goto_2
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->startTransition(Z)V

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->startSpringAnimation(Z)V

    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
