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
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarContextView;

    .line 291
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .line 293
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 294
    .local v1, "screenPos":[I
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    .line 296
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getWidth()I

    move-result v2

    .line 297
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getHeight()I

    move-result v3

    .line 301
    .local v3, "height":I
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingStart()I

    move-result v4

    .line 302
    .local v4, "paddingStart":I
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingEnd()I

    move-result v5

    .line 303
    .local v5, "paddingEnd":I
    new-array v6, v0, [I

    .line 304
    .local v6, "windowPos":[I
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ActionBarContextView;->getLocationInWindow([I)V

    .line 305
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 306
    .local v7, "displayFrame":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ActionBarContextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 307
    const/4 v8, 0x0

    .line 309
    .local v8, "diff":I
    const/4 v9, 0x1

    aget v9, v6, v9

    add-int/2addr v9, v3

    .line 311
    .local v9, "yOffset":I
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    .line 312
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

    .local v10, "xOffset":I
    goto :goto_0

    .line 315
    .end local v10    # "xOffset":I
    :cond_0
    aget v10, v6, v11

    add-int/2addr v10, v2

    sub-int v12, v2, v4

    sub-int/2addr v12, v5

    div-int/2addr v12, v0

    sub-int/2addr v10, v12

    sub-int/2addr v10, v4

    .line 318
    .restart local v10    # "xOffset":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/widget/ActionBarContextView;->setTooltipPosition(II)V

    .line 319
    return v11
.end method
