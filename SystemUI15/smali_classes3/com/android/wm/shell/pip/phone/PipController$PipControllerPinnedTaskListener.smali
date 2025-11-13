.class public final Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;
.super Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method


# virtual methods
.method public final onImeVisibilityChanged(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0, p2, p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setImeVisibility(IZ)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iput-boolean p1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    iput p2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->updatePipPositionForKeepClearAreas()V

    :cond_0
    return-void
.end method

.method public final onMovementBoundsChanged(Z)V
    .locals 7

    sget v0, Lcom/android/wm/shell/pip/phone/PipController;->$r8$clinit:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method
