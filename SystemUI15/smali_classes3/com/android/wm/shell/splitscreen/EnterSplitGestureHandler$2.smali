.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

.field public final synthetic val$detector:Landroid/view/TwoFingerSwipeGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/view/TwoFingerSwipeGestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCommitted(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mSplitScreenController:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, p1}, Ljava/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDetected()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "gesture detected but input monitor is null."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onDetecting()V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v0, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-le v5, v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    iget v5, v4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayDeviceType:I

    const/4 v8, 0x0

    const/4 v9, 0x5

    if-ne v5, v9, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v8

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE:Z

    if-eqz v10, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    if-ne v0, v7, :cond_4

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v8

    :goto_2
    iget v4, v4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    goto :goto_3

    :cond_5
    move v6, v8

    :goto_3
    if-eqz v0, :cond_6

    move v8, v9

    :cond_6
    if-eqz v6, :cond_7

    or-int/lit8 v8, v8, 0x8

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    invoke-virtual {v1, v2, v3, v8, p0}, Landroid/view/TwoFingerSwipeGestureDetector;->init(Landroid/graphics/Rect;FIZ)V

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "gesture detecting but display frame is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
