.class Lcom/android/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLongClick(Landroid/view/View;)Z
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingEnd()I

    move-result v5

    new-array v6, v0, [I

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ActionBarContextView;->getLocationInWindow([I)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ActionBarContextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget v9, v6, v9

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v12

    aget v12, v6, v11

    add-int/2addr v12, v2

    sub-int/2addr v10, v12

    sub-int v12, v2, v4

    sub-int/2addr v12, v5

    div-int/2addr v12, v0

    add-int/2addr v10, v12

    add-int/2addr v10, v5

    sub-int/2addr v10, v8

    goto :goto_0

    :cond_0
    aget v10, v6, v11

    add-int/2addr v10, v2

    sub-int v12, v2, v4

    sub-int/2addr v12, v5

    div-int/2addr v12, v0

    sub-int/2addr v10, v12

    sub-int/2addr v10, v4

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/widget/ActionBarContextView;->setTooltipPosition(II)V

    return v11
.end method
