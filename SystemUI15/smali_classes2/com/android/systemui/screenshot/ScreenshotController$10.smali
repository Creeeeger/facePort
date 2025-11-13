.class public final Lcom/android/systemui/screenshot/ScreenshotController$10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic val$bundle:Landroid/os/Bundle;

.field public final synthetic val$finisher:Ljava/util/function/Consumer;

.field public final synthetic val$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

.field public final synthetic val$screenshotData:Lcom/android/systemui/screenshot/ScreenshotData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/Bundle;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->val$screenshotData:Lcom/android/systemui/screenshot/ScreenshotData;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->val$finisher:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->val$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    check-cast p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget-object p0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return v1

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object v0, p2, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p2, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p2, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$10;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$10$1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotController$10$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController$10;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    iput-object p0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p2, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    return v1
.end method
