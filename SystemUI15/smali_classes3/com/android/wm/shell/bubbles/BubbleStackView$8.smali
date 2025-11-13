.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$8;
.super Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    invoke-virtual {p0, p6}, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->onMove(F)V

    return-void
.end method

.method public final onUp(Landroid/view/View;FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    invoke-virtual {p0, p5}, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->onUp(F)V

    return-void
.end method
