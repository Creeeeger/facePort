.class public final synthetic Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(IZLcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;->f$0:I

    iput-boolean p2, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;->f$0:I

    iget-boolean v1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    iget v2, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    if-ne v2, v0, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    if-eq v2, v3, :cond_1

    if-eqz v1, :cond_4

    check-cast p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->animateToNormalSize(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_3

    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iget-boolean p0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-nez p0, :cond_3

    iget p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_2

    iput p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    :cond_2
    iget p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne p0, v0, :cond_4

    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->animateToUnexpandedState(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    const/high16 p0, -0x40800000    # -1.0f

    iput p0, p1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSavedSnapFraction:F

    :cond_4
    :goto_0
    return-void
.end method
