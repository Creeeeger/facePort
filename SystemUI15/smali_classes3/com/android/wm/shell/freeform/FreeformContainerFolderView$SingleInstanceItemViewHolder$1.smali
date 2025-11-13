.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getTaskSnapshot(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIsVisiblePreview:Z

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    iput-object v0, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "freeform_caption_type"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_2

    const v0, 0x10503aa

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const v0, 0x10503b1

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v3, v4, v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v6, v3, v5

    const/4 v7, 0x0

    const-string v8, "FreeformThumbnailView"

    if-lez v6, :cond_4

    iget v6, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_6

    const-string v6, "Width recompute"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-float/2addr v3, v5

    cmpl-float v5, v3, v7

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    iget v5, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    int-to-float v5, v5

    div-float v3, v5, v3

    :goto_1
    move v12, v5

    move v5, v3

    move v3, v12

    goto :goto_2

    :cond_4
    iget v6, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    const-string v6, "Height recompute"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-float/2addr v5, v3

    cmpl-float v3, v5, v7

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    int-to-float v3, v3

    div-float v5, v3, v5

    goto :goto_1

    :cond_6
    :goto_2
    float-to-int v3, v3

    iput v3, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mWidth:I

    float-to-int v5, v5

    iput v5, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mHeight:I

    invoke-static {v0, v3, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_3
    iget-object v0, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    aget v4, v6, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    aget v4, v6, v2

    iget-object v6, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mPivot:Landroid/graphics/Point;

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Point;->set(II)V

    iget v6, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mHeight:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    sub-int v9, v4, v8

    iget-object v10, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v11

    if-lez v9, :cond_7

    iget v0, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMargin:I

    add-int/2addr v8, v0

    sub-int/2addr v4, v8

    goto :goto_4

    :cond_7
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    iget-object v9, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_8

    sub-int v4, v9, v6

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget v1, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMargin:I

    add-int v4, v0, v1

    :goto_4
    iget v0, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mWidth:I

    div-int/lit8 v1, v0, 0x2

    sub-int v6, v7, v1

    iget-object v8, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    sub-int v10, v6, v9

    if-gez v10, :cond_9

    move v6, v9

    goto :goto_5

    :cond_9
    add-int/2addr v1, v7

    iget v7, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v7

    iget-object v8, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int v9, v8, v7

    if-le v1, v9, :cond_a

    sub-int/2addr v8, v0

    sub-int v6, v8, v7

    :cond_a
    :goto_5
    iget-object v0, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mView:Landroid/widget/FrameLayout;

    int-to-float v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v0, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mView:Landroid/widget/FrameLayout;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    iget v0, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mHeight:I

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mWidth:I

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v3, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->scheduleAnimation(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const-string v0, "other_preview_by_hover"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->dismissMultiInstancePreviewPopup(Ljava/lang/String;)V

    :cond_b
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SA_LOGGING:Z

    if-eqz p0, :cond_c

    const-string p0, "2204"

    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
