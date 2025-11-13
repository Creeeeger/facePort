.class public final synthetic Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, v0}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;ZZI)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZ)V

    return-void

    :pswitch_1
    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    iget-object v0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->dismissPip()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
