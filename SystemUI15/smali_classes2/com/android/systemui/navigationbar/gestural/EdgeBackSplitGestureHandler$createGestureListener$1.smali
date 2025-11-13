.class public final Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;


# instance fields
.field public final synthetic $detector:Landroid/view/TwoFingerSwipeGestureDetector;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;Landroid/view/TwoFingerSwipeGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 2

    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EdgeBackSplitGestureHandler"

    const-string v1, "onCanceled SplitGestureHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    return-void
.end method

.method public final onCommitted(I)V
    .locals 2

    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    const-string v1, "EdgeBackSplitGestureHandler"

    if-eqz v0, :cond_0

    const-string v0, "onCommitted SplitGestureHandler , getureFrom = "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->startSplitByTwoTouchSwipeIfPossible(I)V

    goto :goto_0

    :cond_1
    const-string p0, "gesture committed but split controller is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onDetected()V
    .locals 2

    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EdgeBackSplitGestureHandler"

    const-string v1, "onDetected SplitGestureHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    return-void
.end method

.method public final onDetecting()V
    .locals 5

    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    const-string v1, "EdgeBackSplitGestureHandler"

    if-eqz v0, :cond_0

    const-string v0, "onDetecting in SplitGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayController:Lcom/android/wm/shell/common/DisplayController;

    if-eqz v2, :cond_4

    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayId:I

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->tmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v3, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v4, 0x2

    if-le v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x5

    if-eq v2, v4, :cond_3

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    :cond_3
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->tmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v0

    invoke-virtual {p0, v1, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->init(Landroid/graphics/Rect;FI)V

    goto :goto_1

    :cond_4
    const-string p0, "gesture detecting but display frame is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final onEnd()V
    .locals 2

    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EdgeBackSplitGestureHandler"

    const-string v1, "onCanceled SplitGestureHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    return-void
.end method
