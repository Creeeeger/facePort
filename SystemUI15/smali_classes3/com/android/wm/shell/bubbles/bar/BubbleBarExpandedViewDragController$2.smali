.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $dragMotionEventHandler:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;->$dragMotionEventHandler:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedViewInitialTranslationX:F

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedViewInitialTranslationY:F

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->magnetizedExpandedView:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;->$dragMotionEventHandler:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    return v3
.end method
