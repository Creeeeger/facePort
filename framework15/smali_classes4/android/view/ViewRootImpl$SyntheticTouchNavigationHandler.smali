.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation


# static fields
.field private static final greylist-max-o LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"


# instance fields
.field private greylist-max-o mCurrentDeviceId:I

.field private greylist-max-o mCurrentSource:I

.field private final blacklist mGestureDetector:Landroid/view/GestureDetector;

.field private greylist-max-o mPendingKeyMetaState:I

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdispatchFling(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;FFJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchFling(FFJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchTap(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchTap(J)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    invoke-static {}, Landroid/companion/virtual/flags/Flags;->impulseVelocityStrategyForTouchNavigation()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    nop

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    invoke-direct {v3, p0, p1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Landroid/view/ViewRootImpl;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)V

    iput-object v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private blacklist dispatchEvent(JI)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/16 v13, 0x400

    iget v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v2, v15

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    iget v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    const/4 v7, 0x1

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private blacklist dispatchFling(FFJ)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    nop

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    :goto_0
    invoke-direct {p0, p3, p4, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchEvent(JI)V

    goto :goto_2

    :cond_1
    cmpl-float v0, p2, v1

    if-lez v0, :cond_2

    const/16 v0, 0x14

    goto :goto_1

    :cond_2
    const/16 v0, 0x13

    :goto_1
    invoke-direct {p0, p3, p4, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchEvent(JI)V

    :goto_2
    return-void
.end method

.method private blacklist dispatchTap(J)V
    .locals 1

    const/16 v0, 0x17

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchEvent(JI)V

    return-void
.end method


# virtual methods
.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    if-eq v2, v1, :cond_2

    :cond_1
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
