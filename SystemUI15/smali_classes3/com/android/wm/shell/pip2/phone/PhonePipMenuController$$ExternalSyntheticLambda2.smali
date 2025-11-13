.class public final synthetic Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda2;
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

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    iput p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    invoke-virtual {p1}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->updateMovementBounds()V

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

    iget-boolean v1, v1, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, v1, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    if-nez p0, :cond_3

    sget-object p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    goto :goto_2

    :cond_3
    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    :cond_4
    :goto_2
    return-void
.end method
