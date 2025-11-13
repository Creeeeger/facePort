.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

.field public final synthetic val$handleHeight:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    iput p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$1;->val$handleHeight:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$1;->val$handleHeight:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    add-int v2, v0, v1

    div-int/lit8 v1, v1, 0x2

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mPath:Landroid/graphics/Path;

    int-to-float v0, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v3, v0, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method
