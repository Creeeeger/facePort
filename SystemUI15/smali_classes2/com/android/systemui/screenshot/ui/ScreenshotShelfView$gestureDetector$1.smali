.class public final Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$gestureDetector$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$gestureDetector$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    iget-object p4, p1, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->actionsContainer:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object p4, v0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p4, p1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$gestureDetector$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$gestureDetector$1;->this$0:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->actionsContainer:Landroid/view/View;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    float-to-int p0, p3

    invoke-virtual {v0, p0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, p2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    xor-int/2addr p0, p2

    return p0
.end method
