.class public final Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p1, v0

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mCornerRadius:I

    int-to-float v6, p0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
