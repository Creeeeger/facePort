.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    return-void
.end method

.method private greylist-max-o maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    nop

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsStylusPointerIconEnabled(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    :goto_0
    nop

    if-nez v1, :cond_5

    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/16 v2, 0x9

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v0, v2, :cond_6

    if-ne v0, v3, :cond_7

    :cond_6
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmResolvedPointerIcon(Landroid/view/ViewRootImpl;Landroid/view/PointerIcon;)V

    :cond_7
    if-eq v0, v3, :cond_8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x7

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmResolvedPointerIcon(Landroid/view/ViewRootImpl;Landroid/view/PointerIcon;)V

    :cond_8
    sparse-switch v0, :sswitch_data_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPointerIconEvent(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    goto :goto_1

    :sswitch_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPointerIconEvent(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    nop

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist moveFocusToAdjacentWindow(I)Z
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mgetConfiguration(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v2
.end method

.method private greylist-max-o performFocusNavigation(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x42

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x11

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x82

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x21

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v4, Landroid/view/View$AttachInfo;->mNextFocusLooped:Z

    invoke-virtual {v3, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, v3, :cond_5

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mNextFocusLooped:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->moveFocusToAdjacentWindow(I)Z

    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_3
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_4

    move v1, v2

    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/SoundEffectConstants;->getConstantForFocusDirection(IZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    return v2

    :cond_5
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->moveFocusToAdjacentWindow(I)Z

    move-result v5

    if-eqz v5, :cond_6

    return v2

    :cond_6
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v3, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_7

    return v2

    :cond_7
    goto :goto_1

    :cond_8
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v4

    if-eqz v4, :cond_9

    return v2

    :cond_9
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->moveFocusToAdjacentWindow(I)Z

    move-result v4

    if-eqz v4, :cond_a

    return v2

    :cond_a
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o performKeyboardGroupNavigation(I)Z
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :goto_0
    nop

    move v4, p1

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/16 v4, 0x82

    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    return v1

    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v4}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    return v1

    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    const v1, 0x100008

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 7

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmUnhandledKeyManager(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preViewDispatch(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViewPostIme key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->KNOX_CAPTURE_XCOVER_OR_TOP_KEY:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x3f7

    if-eq v1, v4, :cond_1

    const/16 v4, 0x437

    if-ne v1, v4, :cond_2

    :cond_1
    const-string/jumbo v4, "sys.datawedge.prop"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, v0}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    return v4

    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmUnhandledKeyManager(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v5, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_7

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    const/16 v6, 0x1000

    invoke-static {v5, v6}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x2

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    const/16 v6, 0x1001

    invoke-static {v5, v6}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    :cond_7
    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v1, :cond_9

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v5

    if-eqz v5, :cond_9

    return v4

    :cond_9
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v5, v0}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v5

    if-eqz v5, :cond_b

    return v4

    :cond_b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_d

    if-eqz v1, :cond_c

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performKeyboardGroupNavigation(I)Z

    move-result v4

    if-eqz v4, :cond_d

    return v2

    :cond_c
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performFocusNavigation(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_d

    return v2

    :cond_d
    return v3
.end method

.method private greylist-max-o processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 12

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V

    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmMotionEventMonitor(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmMotionEventMonitor(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v5

    iget-object v6, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl$MotionEventMonitor;->dispatchInputEvent(Landroid/view/InputEvent;)V

    :cond_2
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/text/flags/Flags;->disableHandwritingInitiatorForIme()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_4

    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmHandwritingInitiator(Landroid/view/ViewRootImpl;)Landroid/view/HandwritingInitiator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/HandwritingInitiator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_5

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->-$$Nest$fputmLastClickToolType(Landroid/view/ViewRootImpl;I)V

    :cond_5
    sget-boolean v6, Landroid/view/ViewRootImpl;->DEBUG_TOUCH_EVENT:Z

    const-string v7, "ViewPostIme pointer "

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_7

    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v6, :cond_8

    const/4 v6, 0x2

    if-eq v1, v6, :cond_8

    const/4 v6, 0x7

    if-eq v1, v6, :cond_8

    const/16 v6, 0xd5

    if-eq v1, v6, :cond_8

    :cond_7
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v6

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6, v0}, Landroid/view/ViewRootImpl;->-$$Nest$misWheelScrollingHandled(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_9
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v6, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v6, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    if-nez v5, :cond_b

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    :cond_a
    move v6, v3

    goto :goto_2

    :cond_b
    :goto_1
    move v6, v4

    :goto_2
    move v5, v6

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeUpdateTooltip(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v6, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v4, v6, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    :cond_c
    const/4 v6, 0x4

    if-eqz v5, :cond_f

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    and-int/lit16 v8, v1, 0xff

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewRootImpl;->-$$Nest$mshouldTouchBoost(Landroid/view/ViewRootImpl;II)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    if-nez v1, :cond_d

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V

    :cond_d
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_PRIORITIZE_HIGH_HINT:Z

    if-eqz v8, :cond_e

    move v8, v6

    goto :goto_3

    :cond_e
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastPreferredFrameRateCategory(Landroid/view/ViewRootImpl;)I

    move-result v8

    :goto_3
    invoke-static {v7, v8}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    :cond_f
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsTouchBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v7

    const-wide/16 v8, 0xbb8

    if-eqz v7, :cond_11

    if-eq v1, v4, :cond_10

    if-ne v1, v2, :cond_11

    :cond_10
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v10, 0x27

    invoke-virtual {v7, v10}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v7, v10, v8, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_11
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEND_TOUCH_HINT:Z

    if-eqz v7, :cond_14

    if-eqz v5, :cond_12

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    and-int/lit16 v10, v1, 0xff

    iget-object v11, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v7, v10, v11}, Landroid/view/ViewRootImpl;->-$$Nest$mshouldTouchHint(Landroid/view/ViewRootImpl;II)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchHint(Landroid/view/ViewRootImpl;Z)V

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7, v6}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrameRateCategoryForTouchHint(Landroid/view/ViewRootImpl;I)V

    :cond_12
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsTouchHint(Landroid/view/ViewRootImpl;)Z

    move-result v6

    if-eqz v6, :cond_14

    if-eq v1, v4, :cond_13

    if-ne v1, v2, :cond_14

    :cond_13
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v6, 0x6a

    invoke-virtual {v2, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    if-eqz v5, :cond_15

    move v3, v4

    :cond_15
    return v3
.end method

.method private greylist-max-o processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    const v1, 0x20004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1
.end method
