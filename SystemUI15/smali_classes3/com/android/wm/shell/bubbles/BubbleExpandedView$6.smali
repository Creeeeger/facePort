.class public final Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BOTTOM_CLIP_PROPERTY:Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget v1, v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopClip:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget v3, v3, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    sub-int/2addr p1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
